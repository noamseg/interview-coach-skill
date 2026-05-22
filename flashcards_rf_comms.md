# Flashcards: RF, Comms, Latency, Bandwidth & Downlink Architecture

Planet-calibrated technical reference for interview prep.

---

## RF Fundamentals

**What is RF in satellite context?**
Radio Frequency — the electromagnetic spectrum used for all satellite-ground and satellite-satellite communication. Satellites use specific frequency bands allocated by ITU.

**Key frequency bands for EO satellites:**

| Band | Frequency | Typical Use | Tradeoff |
|------|-----------|-------------|----------|
| S-band | 2–4 GHz | TT&C (telemetry, tracking, command) | Low data rate, robust, works in rain |
| X-band | 8–12 GHz | Traditional imagery downlink | Moderate data rate, moderate rain fade |
| Ka-band | 26–40 GHz | High-throughput imagery downlink | High data rate, significant rain fade |
| Ku-band | 12–18 GHz | Broadcast, some downlink | Middle ground |
| V-band | 40–75 GHz | Emerging, next-gen high throughput | Very high rate, severe atmospheric absorption |

**Planet uses Ka-band for Pelican downlink.** Peak rate: ~10 Gbps. Each Pelican can downlink 1–2 TB/day. AES-256 encryption on all TT&C and imagery data.

**Rain fade:** Higher frequencies (Ka, V) are absorbed by water. Ka-band links lose 5–10 dB in heavy rain. This is why ground station diversity matters — if one station is in rain, route to another.

---

## Downlink Architecture

**What determines how fast you can get data to the ground?**
Three constraints: (1) link budget (power, antenna gain, frequency, distance), (2) contact time (how long the satellite is in view of a ground station per orbit), (3) ground station network density.

**Contact time math:**
A LEO satellite at ~475 km (Pelican orbit) has roughly 5–10 minute passes over a ground station. At 10 Gbps, a 7-minute pass = ~525 GB downlinked. That's significant but not unlimited — you can't downlink everything you collect.

**Ground station network:**
Planet operates 48 ground stations across 11 countries. 8 Ka-band stations specifically for Pelican (phased deployment). More stations = more contact opportunities per orbit = lower latency to get data down.

**Latency budget breakdown (tasking to delivery):**

| Segment | Time | What's happening |
|---------|------|------------------|
| Tasking command uplink | Seconds–minutes | Command reaches satellite via ground station or ISL relay |
| Slew and settle | 10–60 seconds | Satellite points camera at target |
| Image capture | Seconds | Exposure and readout |
| Onboard processing (if any) | Seconds–minutes | Cloud mask, detection, compression |
| Wait for ground station | 0–90 minutes | Orbital geometry — biggest variable |
| Downlink | Minutes | Transfer at Ka-band rate |
| Ground processing | Minutes–hours | Radiometric cal, ortho, pansharpening |
| Delivery to customer | Seconds | API/platform push |

**Planet's Pelican target: 2–4 hour tasking-to-delivery latency.** The biggest lever to compress this is inter-satellite links (skip waiting for a ground station) and onboard processing (skip ground processing).

**Store-and-forward vs. real-time downlink:**
Most EO satellites store imagery onboard and dump it when over a ground station. Real-time continuous downlink requires either geostationary relay satellites or dense LEO relay networks. Planet is working toward relay via ISLs.

---

## Inter-Satellite Links (ISLs)

**What are ISLs?**
Communication links between satellites — data hops from one satellite to another until it reaches one with a ground station in view. Eliminates the "wait for ground station" latency.

**RF ISLs vs. Optical ISLs:**

| | RF ISL | Optical ISL (Laser) |
|---|--------|-------------------|
| Data rate | 100s Mbps – low Gbps | 1–100+ Gbps |
| Range | 1,000–5,000 km typical | Up to 5,000+ km (LEO-LEO) |
| Pointing | Easier (wider beam) | Hard (sub-microradian pointing) |
| Size/weight | Moderate | Smaller terminal |
| Interference | Subject to RF spectrum congestion | No RF interference |
| Atmosphere | N/A (space-to-space) | N/A (space-to-space) |

**Pelican uses RF ISLs (C-band and Ka-band).** Pelican-2 conducted Planet's first on-orbit satellite-to-satellite comms tests. This enables tasking and data relay when a satellite isn't directly over a ground station.

**Why Planet chose RF ISLs over laser (for now):**
RF ISLs are simpler to implement — wider beamwidth means easier acquisition and tracking. For Planet's use case (reducing latency, not maximizing throughput between relay nodes), RF ISLs are sufficient. Laser ISLs are the future but add cost, complexity, and pointing requirements.

---

## Laser Communications (Optical)

**How laser comms work:**
A laser terminal on the satellite transmits a tightly focused infrared beam (typically 1550 nm or 1064 nm) to a receiver. Same physics as fiber optic, but through free space.

**Key advantages:**
- 10–100x higher data rates than RF at same power
- No spectrum licensing needed (light isn't regulated like RF)
- Extremely narrow beam = hard to intercept (security advantage for defense)
- Smaller, lighter terminals than equivalent RF

**Key challenges:**
- Sub-microradian pointing accuracy required (the beam is extremely narrow)
- Acquisition and tracking is complex — two satellites must find each other's beam
- Atmospheric turbulence affects space-to-ground links (not space-to-space)
- Cloud cover blocks space-to-ground optical links entirely (unlike RF which penetrates clouds)

**Free-Space Optical (FSO) communication:**
The general term for laser comms through atmosphere or space. "Free space" = no fiber, no waveguide. Includes:
- Space-to-space (ISLs): best case, no atmosphere
- Space-to-ground: affected by turbulence, clouds, scintillation
- Ground-to-ground: short range, weather-dependent

**Current state of the market:**
- Starlink Gen2 satellites have laser ISLs — mesh network in orbit
- SpaceX has ~10,000+ laser terminals deployed
- Vendors: Mynaric (Condor Mk3), Tesat (SCOT80), Honeywell/Ball OISL, CACI, SA Photonics
- Typical LEO-LEO optical ISL: 1–10 Gbps, 5,000 km range

**Planet-specific relevance:**
Optical ISLs are the logical next step after RF ISLs for Pelican/Owl — higher throughput for relaying large imagery datasets. The Suncatcher program (Google TPU on-orbit) will likely need high-bandwidth ISLs to move processed results between nodes. Not deployed yet but on the technology roadmap.

---

## Bandwidth as the Bottleneck

**Why bandwidth drives product decisions:**
This is the core insight behind "ship insights, not pixels."

**The math:**
- Pelican 30cm image, 10x10 km scene = ~25 GB raw, ~6 GB compressed
- Pelican collects up to 30 targets/day at mid-latitudes
- Total daily collection capacity: potentially 150–180 GB compressed imagery
- Downlink capacity: 1–2 TB/day (comfortable margin for imagery, tight if you add full-res video or hyperspectral)

**If you process onboard:**
- Raw scene: ~6 GB compressed
- Detection-only output (GeoJSON bounding boxes): 10–500 KB
- That's a 10,000–100,000x reduction in downlink requirement

**Product implication:**
Edge AI isn't just a latency play — it's an economics play. You can either build more ground stations and wider pipes, or you can be smarter about what you send down. The PM decision: which use cases justify full imagery downlink vs. detection-only alerts?

---

## Link Budget (Simplified)

**What is a link budget?**
The accounting of all gains and losses in a communication link — transmit power, antenna gains, path loss, atmospheric loss, receiver sensitivity. If the received signal is above the noise floor with sufficient margin, the link closes.

**Key terms:**
- **EIRP** (Effective Isotropic Radiated Power): transmit power + antenna gain. Higher = stronger signal.
- **G/T** (Gain-to-noise Temperature): receiver figure of merit. Higher = more sensitive receiver.
- **Path loss**: signal weakening over distance. Proportional to distance squared and frequency squared. Higher frequency = more loss.
- **Link margin**: how much signal strength you have above the minimum. Typical targets: 3–6 dB margin for clear sky, more if you need rain fade tolerance.
- **BER** (Bit Error Rate): acceptable error rate. Drives how much margin you need.

**Why a PM cares about link budgets:**
You don't calculate them — RF engineers do. But you need to understand the tradeoffs: higher data rate requires either more transmit power (consumes satellite power budget), larger antennas (costs mass/volume), or accepting less margin (riskier link). Every product decision about data throughput traces back to this physics.

---

## Latency Taxonomy

**Processing latency categories (know these):**

| Type | Definition | Planet example |
|------|-----------|----------------|
| Tasking latency | Command to satellite start collecting | Minutes (with ISL) to hours (wait for ground pass) |
| Collection latency | Time to capture the image | Seconds |
| Downlink latency | Getting data to ground | Minutes (in pass) to 90 min (waiting for next pass) |
| Processing latency | Ground pipeline: raw → analysis-ready | Minutes to hours |
| Exploitation latency | Raw/ARD → actionable insight | Minutes (AI) to days (human analyst) |
| Dissemination latency | Insight → customer's system | Seconds (API push) |

**Edge AI compresses exploitation latency AND downlink latency simultaneously.** That's why it's transformative — it attacks two segments at once.

**"Hours to minutes" (Will Marshall's claim):** Refers to total tasking-to-insight. Pre-edge: task → wait for pass → downlink → ground process → analyze. Post-edge: task → capture → onboard detect → downlink alert. The wait-for-pass segment is still there unless ISLs are used, but the total chain compresses dramatically.

---

## Quick Quiz (Self-Test)

1. Why does Planet use Ka-band for Pelican instead of X-band?
   → Higher data rate (~10 Gbps vs ~1 Gbps). Worth the rain fade tradeoff because Planet has ground station diversity.

2. What's the single biggest latency contributor in the current architecture?
   → Waiting for a ground station pass (0–90 minutes). ISLs fix this.

3. Why is "ship insights not pixels" an economic argument, not just a speed argument?
   → Detection output is 10,000–100,000x smaller than raw imagery. Reduces downlink infrastructure cost and enables more targets per orbit.

4. Why might a defense customer still want full imagery downlinked even if onboard AI detects something?
   → Chain of custody / evidentiary standards. A GeoJSON bounding box isn't admissible intelligence — analysts need to see the pixels to confirm and classify. Trust threshold varies by customer.

5. What's the security advantage of optical ISLs over RF ISLs?
   → Extremely narrow beam is nearly impossible to intercept. No RF signature to detect. Important for defense/sovereign customers.

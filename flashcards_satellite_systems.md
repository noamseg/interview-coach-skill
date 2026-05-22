# Flashcards: Satellite Systems, Constellation Design & Power

Planet-calibrated technical reference for interview prep.

---

## Satellite Architecture (Subsystems)

Every satellite has the same core subsystems. Know what each does and the PM tradeoffs:

| Subsystem | What it does | PM tradeoff |
|-----------|-------------|-------------|
| **Payload** | The mission instrument (camera, SAR, comms) | Resolution vs. mass vs. cost. Drives the bus design. |
| **Bus** | Structural frame, power, thermal, attitude control | Modularity vs. optimization. Planet's common bus (Pelican/Tanager/Owl) is a strategic choice — platform leverage. |
| **ADCS** (Attitude Determination & Control) | Points the satellite accurately | Agility (slew rate) vs. stability (settling time). Pelican's agility enables 30 tasks/day. |
| **EPS** (Electrical Power System) | Solar panels, batteries, power distribution | Peak power budget constrains everything — payload, compute, comms, all compete. |
| **TT&C** (Telemetry, Tracking & Command) | Ground communication for health/commands | Separate from payload data downlink. Usually S-band. |
| **Thermal** | Heat management in vacuum | On-orbit compute generates heat that must be radiated. Suncatcher thesis: deep space = free heat sink. |
| **Propulsion** | Orbit maintenance, collision avoidance | Fuel = finite lifetime. Station-keeping budget determines operational life. |
| **OBC** (Onboard Computer) | Flight software, scheduling, autonomy | Traditional: radiation-hardened, slow. New: commercial GPUs (Jetson) for AI workloads alongside rad-hard flight computer. |

**Planet's common smallsat bus:** Shared across Pelican, Tanager, Owl, and Suncatcher. This is a major strategic asset — new missions leverage existing design, manufacturing line, and ground software. The PM enforces the productization boundary: what customization is allowed per mission vs. what's standard bus.

---

## Power Budget

**Why power matters for a PM:**
Every watt is contested. Payload, compute, comms, ADCS, thermal, and propulsion all draw from the same solar panels and batteries. The PM's product decisions directly affect the power budget — adding onboard AI inference, increasing downlink rate, or adding ISL comms all cost power.

**Solar power basics:**
- Solar panels convert sunlight to electricity. LEO satellites get ~1,361 W/m2 of solar flux.
- Typical LEO smallsat: 100–500W of solar panel capacity (Pelican-class likely 200–400W range)
- Solar cells are ~30% efficient (triple-junction GaAs) → ~400 W/m2 actual power per panel area
- Body-mounted panels are simpler but lower power. Deployable wings give more area but add mass and failure modes.

**Batteries:**
- Lithium-ion, same chemistry as your phone but space-qualified
- Sized for eclipse — when the satellite is in Earth's shadow, batteries are the only power source
- LEO orbit: ~90 minutes total, ~35 minutes in eclipse (roughly). That's 35 minutes on battery every orbit, 15+ times per day.
- Battery depth of discharge (DoD): typically limit to 20–30% per cycle for longevity. Deeper discharge = fewer total cycles before degradation.
- **Eclipse minimum SOC**: The floor battery charge you'll never go below. All power-hungry operations (inference, downlink) must be scheduled around this.

**Peak power vs. average power:**
- **Average power**: what the solar panels sustain over a full orbit (sun + eclipse). This is your budget for continuous operations.
- **Peak power**: maximum draw at any instant. Batteries supplement solar for short bursts.
- **Duty cycling**: You can run power-hungry hardware (GPU, transmitter) at peak power for limited windows, then idle. This is how Jetson Orin works on orbit — 15W idle, ramp to 60W MAXN during inference, then back down.

**PM implication:** You can't run everything at once. Imaging, onboard processing, and downlink often can't happen simultaneously at full power. The scheduler decides: collect this pass, process next pass, downlink the pass after that. The product requirement ("real-time detection") becomes a power scheduling problem.

---

## Orbital Mechanics (PM-Level)

**Orbit types relevant to EO:**

| Orbit | Altitude | Period | Key Property | Example |
|-------|----------|--------|-------------|---------|
| LEO (Sun-Synchronous) | 400–700 km | ~90–98 min | Consistent lighting, revisit | Planet (all), Maxar, BlackSky |
| MEO | 2,000–35,000 km | 2–12 hours | Wider coverage per pass | Navigation (GPS), some comms |
| GEO | 35,786 km | 24 hours | Fixed position over equator | Weather sats, broadcast, relay |
| HEO/Molniya | Varies (high apogee) | 12 hours | Long dwell at high latitudes | Russian comms, some ISR |

**Sun-Synchronous Orbit (SSO):**
The satellite crosses the equator at the same local solar time every orbit. This means consistent lighting conditions for imaging — critical for change detection (comparing images taken days apart under similar illumination). Pelican operates at ~475 km SSO.

**Revisit rate:**
How often a satellite can image the same point on Earth.
- Single satellite: once every few days (depends on orbit, swath, agility)
- Constellation: daily or better. Planet's SuperDove fleet images all landmass daily at 3–5m.
- Pelican: up to 30 revisits/day at mid-latitudes (because of agility + multiple satellites + cross-track pointing)

**Why latitude matters:**
Orbital tracks converge at the poles — more passes over high latitudes than equatorial regions per day. This is Planet's structural advantage in the Arctic (more passes = more images = better monitoring of Russian Arctic bases, Northern Sea Route).

**Slew and settle:**
- **Slew**: rotating the satellite to point at a target. Rate measured in degrees/second.
- **Settle**: waiting for vibrations to damp after slewing. Jitter during settle = blurry images.
- **Agility**: how fast a satellite can slew to a new target. Pelican is "highly agile" — enabling multiple targets per pass. More agile = more tasks per orbit = more revenue per satellite.

**Ground track and access windows:**
The satellite traces a path over the ground (ground track). A target is "accessible" when it falls within the camera's field of regard during a pass. The scheduler optimizes which targets to image during each pass — a constrained optimization problem (finite slew time, power, memory, priority).

---

## Constellation Design

**Why constellations, not single satellites?**
- Coverage: daily global requires many satellites
- Revisit: more satellites = more frequent revisit
- Redundancy: one failure doesn't kill the mission
- Capacity: more satellites = more total collection per day

**Walker constellation:**
A mathematical pattern for distributing satellites evenly. Defined by total satellites, number of orbital planes, and phasing between planes. Planet's SuperDove fleet is a near-Walker pattern.

**Heterogeneous constellations (Planet's approach):**
Not one fleet — multiple tiers optimized for different missions:
- SuperDove: broad monitoring, daily, 3–5m (the "background layer")
- Pelican: high-res tasking, agile, 30cm (the "on-demand layer")
- Tanager: hyperspectral, specialized (methane detection)
- Owl: next-gen monitoring, 1m, AI-native (future "smart background layer")

**Tip-and-cue:**
A multi-tier detection workflow. Broad-area monitoring satellites (SuperDove/Owl) detect anomalies → cue high-res tasking satellites (Pelican) to take a closer look. This is the operational model for "near-real-time intelligence network." The PM designs the handoff protocol: what detection confidence triggers a cue, how fast must the tasking respond, what priority does a cue get vs. standing orders.

**Constellation as a product for Satellite Services:**
In the sovereign deals, Planet isn't selling data — they're selling a constellation. The PM must think about: how many Pelicans does Germany need for their coverage requirements? What orbital planes serve European theater? How does dedicated capacity differ from shared fleet tasking?

---

## Telemetry

**What is telemetry?**
Health and status data from the satellite — temperatures, voltages, battery state, reaction wheel speeds, GPS position, software status. Transmitted continuously via TT&C link (usually S-band).

**Why a PM cares:**
- Telemetry drives anomaly detection. If a sensor reading drifts, operators intervene before failure.
- At Astra, Adam turned raw telemetry into stoplights (proceed/hold/abort) — same concept applies to satellite health dashboards.
- Satellite Services customers may want access to their constellation's telemetry. What level of visibility does the PM expose? Raw telemetry? Derived health scores? Alerts only?

**Housekeeping vs. mission telemetry:**
- Housekeeping: satellite health (temperatures, power, attitude)
- Mission telemetry: payload-specific (camera status, onboard processing results, AI inference metadata)
- Both flow through TT&C but may have different access controls, especially for classified missions.

---

## Edge Compute on Satellites

**The architecture choice:**

| | Traditional | Edge AI (Planet's direction) |
|---|------------|---------------------------|
| Onboard compute | Rad-hard processor, flight software only | Rad-hard + commercial GPU (Jetson Orin) |
| Processing | All on ground | Detection/classification on orbit |
| Downlink | Raw/compressed imagery | Imagery + structured detections (GeoJSON) |
| Latency | Hours (wait for pass + ground pipeline) | Minutes (onboard result + small downlink) |
| Power | Low (~10–30W OBC) | Higher (~15–60W GPU + OBC) |
| Flexibility | Firmware update = risky | Docker containers, model updates |

**Planet's approach:**
- Pelican flies NVIDIA Jetson Orin alongside rad-hard flight computer
- Workloads run in isolated Docker containers (same DevOps as ground)
- Pelican-4 demo (March 2026): 80% detection accuracy on raw imagery, full pipeline (data gen → deep-net detection → geo-rectification) on orbit
- Outputs: GeoTIFF (imagery) and GeoJSON (structured detections), geo-rectified on orbit

**FPGA vs. GPU (will come up with Gil Michael):**

| | FPGA | GPU |
|---|------|-----|
| Latency | Deterministic (fixed pipeline) | Variable (depends on model, batch) |
| Power | Very efficient (5–15W) | Higher (15–60W for Orin) |
| Flexibility | Hard to reprogram — new model = new bitstream | Easy — swap Docker container, new model |
| ML toolchain | Custom HDL, limited frameworks | CUDA, PyTorch, TensorRT — standard ML stack |
| Radiation | Space-heritage options exist | Commercial, needs mitigation (watchdog, ECC, checkpointing) |
| Model updates | Risky, slow | Routine — same CI/CD as ground |
| Best for | Fixed, well-defined processing (cloud mask, compression) | Evolving ML models, multi-model pipelines |

**Why Planet chose GPU:** Model update cadence. If you're iterating on detection models monthly (which Bedrock Research will be), you can't wait for FPGA bitstream synthesis. Docker containers in orbit = deploy a new model like a software update. The power cost is manageable with duty cycling.

**Radiation mitigation for commercial GPUs:**
- External watchdog on rad-tolerant FPGA (e.g., Microsemi RTG4) or Vorago MCU
- Hard power switch with latch-up current trip
- ECC DRAM
- Application-level checkpointing every N inferences
- Accept that single-event upsets will happen — design for graceful recovery, not prevention

---

## Ground Processing Pipeline

**Standard EO ground processing chain:**

| Stage | What happens | Output |
|-------|-------------|--------|
| **Raw** | Detector readout, unprocessed | Raw digital numbers |
| **L1 (Radiometric)** | Sensor calibration, dark current removal | Calibrated radiance |
| **L2 (Atmospheric)** | Atmospheric correction, surface reflectance | Analysis-ready surface reflectance |
| **L3 (Geometric)** | Orthorectification, map projection | Geo-located pixels |
| **Pansharpening** | Fuse panchromatic (high-res) + multispectral (color) | High-res color imagery |
| **Cloud masking** | Identify and flag cloudy pixels | Usable pixel map |
| **Mosaicking** | Stitch multiple scenes into seamless basemap | Cloud-free composite |
| **ARD** (Analysis-Ready Data) | All of the above, standardized | What customers actually consume |

**Planet's "Analysis-Ready PlanetScope"**: Proprietary AI pipeline that does harmonization, cloud masking, and alignment so downstream ML can consume the data directly. This is the table-stakes layer — if your pixels aren't analysis-ready, customers reject them.

**What moves onboard vs. stays on ground:**
- Onboard now: cloud masking (Jetson), object detection, geo-rectification
- Stays on ground (for now): full radiometric calibration, atmospheric correction, pansharpening, mosaicking
- Future: more processing moves onboard as compute power increases (Owl, Suncatcher)

---

## Quick Quiz (Self-Test)

1. Why does Planet use a common bus across Pelican, Tanager, Owl, and Suncatcher?
   → Platform leverage. Same manufacturing line, same ground software, same ops team. Reduces NRE per mission. Critical for Satellite Services productization — every bespoke design erodes margin.

2. A sovereign customer wants 30-minute revisit over a specific region. What determines how many Pelicans they need?
   → Orbital geometry (how often orbits cross the region), satellite agility (how many targets per pass), and whether they need dedicated capacity (guaranteed, competition-free) or can share fleet. Latitude matters — higher latitude = more passes.

3. Why can't you run the GPU at full power continuously on orbit?
   → Power budget. Solar panels produce finite watts, batteries are sized for eclipse survival. GPU at 60W competes with payload, ADCS, comms, thermal. Must duty cycle — run inference during collection passes, idle between targets.

4. What's the difference between tip-and-cue and standing tasking orders?
   → Standing orders are pre-scheduled (image this location every pass). Tip-and-cue is reactive — a broad-area sensor detects something, dynamically tasks a high-res sensor to look closer. Tip-and-cue requires low-latency command path and constellation coordination.

5. Why is depth of discharge important for battery sizing?
   → Deeper discharge per cycle = fewer total cycles before battery degradation. A satellite designed for 5-year life with 15 eclipse cycles/day = ~27,000 cycles. Limiting DoD to 20-30% ensures the battery survives. This constrains how much peak power you can draw during eclipse.

6. What makes Pelican's agility a revenue driver?
   → More agile = faster slew between targets = more images per pass = more tasking revenue per satellite per day. At 30 tasks/day, each task is a revenue event.

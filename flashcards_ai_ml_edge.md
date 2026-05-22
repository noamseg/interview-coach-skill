# Flashcards: AI/ML, Edge Processing & EO Data Pipelines

Planet-calibrated technical reference for interview prep.

---

## ML/AI Fundamentals (PM-Level)

**Machine Learning taxonomy:**

| Type | What it does | EO example |
|------|-------------|------------|
| **Supervised learning** | Learns from labeled examples | Ship detection (trained on labeled ship/not-ship images) |
| **Unsupervised learning** | Finds patterns without labels | Anomaly detection in time-series imagery |
| **Self-supervised / Foundation models** | Learns representations from unlabeled data, then fine-tunes | Planet's "Foundation Models for the Real World" pillar |
| **Reinforcement learning** | Learns by trial and reward | Constellation scheduling optimization, TALOS agents |

**Deep learning vs. traditional ML:**
Deep learning = neural networks with many layers. Dominant for computer vision (which is what EO AI mostly is). Traditional ML (random forests, SVMs) still used for tabular data, time-series, and cases with limited training data.

---

## Computer Vision for EO

**Core tasks:**

| Task | What it does | Planet product example |
|------|-------------|----------------------|
| **Classification** | "What is this?" — assigns a label to an image or pixel | Land use classification (urban, forest, water, agriculture) |
| **Object detection** | "What's here and where?" — draws bounding boxes | Ship detection, aircraft detection, vehicle detection |
| **Semantic segmentation** | "Label every pixel" — pixel-level classification | Road mapping, building footprints, field boundaries |
| **Instance segmentation** | "Label every pixel AND distinguish individual objects" | Counting individual ships in a harbor |
| **Change detection** | "What changed between two images?" — temporal comparison | Construction monitoring, deforestation, military buildup |
| **Object tracking** | "Same object across multiple images/time" | Vessel tracking across multiple passes |

**Planet's AI products map to these:**
- Global Monitoring Solutions (GMS): change detection + object detection
- Maritime Domain Awareness (MDA): vessel detection + tracking + classification
- Road & Building Change Detection: semantic segmentation + change detection
- Area Monitoring / I&W: broad-area change detection → tip-and-cue

---

## Training, Inference & the Edge

**Training vs. Inference:**

| | Training | Inference |
|---|---------|-----------|
| What | Teaching the model — adjusting weights from data | Running the trained model on new data |
| Compute | Massive (GPU clusters, days/weeks) | Modest (single GPU, seconds/milliseconds) |
| Where | Always on ground (cloud GPU clusters) | Ground OR on orbit (edge) |
| Data | Large labeled dataset | Single new image |
| Frequency | Periodic (retrain monthly/quarterly) | Continuous (every new image) |

**Why inference works on orbit but training doesn't:**
Training requires backpropagation across millions of parameters with large batch sizes — needs hundreds of watts and terabytes of training data. Inference is a forward pass through a fixed model — Jetson Orin can do this at 15–60W. Planet trains on ground, deploys trained models to orbit via Docker containers.

**Quantization:**
Reducing model numerical precision to run faster on edge hardware.
- FP32 (full precision): training standard, most accurate
- FP16 (half precision): 2x faster, minimal accuracy loss
- INT8 (8-bit integer): 4x faster than FP32, ~1-3% accuracy loss typical
- INT4 (4-bit): 8x faster, more accuracy loss, emerging

**TensorRT:** NVIDIA's inference optimizer. Takes a trained PyTorch/TensorFlow model and optimizes it for specific Jetson hardware — fuses layers, selects optimal precision, optimizes memory. This is how you get a model that runs on ground GPUs to fit in a 15W power envelope on orbit.

**Why quantization matters for a PM:**
It's the accuracy-latency-power tradeoff knob. A PM defines the requirement: "95% detection accuracy within 30 seconds at 15W." The ML engineer uses quantization to hit that target. If the requirement is too aggressive, the PM needs to know that relaxing accuracy from 99% to 95% might cut power consumption in half.

---

## Data Pipeline Architecture

**Planet's full pipeline (TC-PED framework):**

```
Tasking → Collection → Processing → Exploitation → Dissemination
   |          |            |              |              |
   |          |            |              |              |
API/mission  Satellite    Radiometric    AI/ML models   Insights
planner +    physics:     calibration,   (detection,    Platform
scheduler    slew,settle, atmospheric    classification, APIs,
             capture      correction,    change detect)  alerts,
                          ortho,                        dashboards
                          pansharp,
                          cloud mask
                          → ARD
```

**Where edge AI inserts:**
Between Collection and traditional Processing. On orbit, after capture, the satellite runs inference on raw imagery and produces structured detections alongside (or instead of) full imagery downlink.

**Planet's three AI pillars:**
1. **AI-Enabled Solutions** (present): GMS, MDA, change detection — ground-based ML on Planet data
2. **GPUs in Space** (near-term): Pelican Jetson Orin, onboard inference, "Planetary Intelligence"
3. **Foundation Models for the Real World** (longer bet): large models trained on Planet's 3,000+ images-per-point archive

**The archive as training data moat:**
Planet has 3,000+ images of every point on Earth's landmass. No competitor can replicate this without another decade of operations. This archive is the training dataset for foundation models — temporal patterns (seasonality, construction progress, vegetation cycles) that single-snapshot competitors can't learn.

---

## Optical Imagery Processing

**How a satellite camera works (simplified):**
Pushbroom sensor: a linear array of detectors sweeps across the ground as the satellite moves. Each detector captures one line of pixels. The satellite's forward motion builds up the 2D image line by line.

**Panchromatic vs. Multispectral:**
- **Panchromatic (PAN)**: Single broad-wavelength band, highest spatial resolution (Pelican: 30cm). Grayscale.
- **Multispectral (MS)**: Multiple narrow bands (e.g., Red, Green, Blue, NIR), lower spatial resolution (Pelican: 6 MS bands). Color and vegetation analysis.
- **Pansharpening**: Fusing PAN (high-res grayscale) with MS (lower-res color) to produce high-res color imagery. Computationally intensive — currently done on ground.

**Key spectral bands and what they reveal:**

| Band | Wavelength | What it shows |
|------|-----------|---------------|
| Blue | 450–520 nm | Water penetration, atmospheric scattering |
| Green | 520–600 nm | Vegetation vigor, turbidity |
| Red | 630–690 nm | Vegetation stress, soil |
| Red Edge | 690–730 nm | Vegetation health transition zone — sensitive indicator |
| NIR | 770–895 nm | Vegetation biomass, water boundaries (strong contrast) |
| SWIR | 1.5–2.5 µm | Mineral identification, fire detection, moisture |

**NDVI (Normalized Difference Vegetation Index):**
(NIR - Red) / (NIR + Red). Simple ratio that measures vegetation health. Ranges from -1 to +1. Healthy vegetation: 0.6–0.9. Bare soil: 0.1–0.2. Water: negative. This is the canonical "derived product" — raw bands → actionable metric.

---

## Hyperspectral Processing

**What's different from multispectral:**
- Multispectral: 4–12 broad bands
- Hyperspectral: 100–400+ narrow contiguous bands across the full spectrum
- Think: multispectral is seeing in a few colors, hyperspectral is seeing the full rainbow with no gaps

**Planet's Tanager satellite:** ~400 bands, 30m resolution. Built for methane detection (Carbon Mapper partnership). 5,500+ methane detections in two weeks of October 2024.

**How methane detection works:**
Methane absorbs specific SWIR wavelengths (~1.65 µm and ~2.3 µm). Hyperspectral sensor measures absorption depth at those wavelengths — deeper absorption = more methane. Algorithms subtract background atmosphere to isolate point-source plumes.

**Spectral unmixing:**
Each pixel contains a mix of materials (soil + vegetation + concrete). Hyperspectral analysis "unmixes" the spectrum to estimate the proportion of each material within a single pixel. This is how you detect materials at sub-pixel scale — you don't need to resolve individual objects, just their spectral signature.

**PM relevance:**
Hyperspectral generates 10–100x more data per scene than multispectral. The processing pipeline is more complex (atmospheric correction is harder with 400 bands). Edge processing for hyperspectral is a future challenge — too much data for current onboard compute. Product decision: do you downlink all 400 bands, or process to derived products (methane concentration map) on ground and deliver only the result?

---

## AI Model Lifecycle (What a PM Manages)

**1. Data collection and labeling:**
- Labeled training data is the bottleneck, not model architecture
- For EO: human analysts draw bounding boxes around ships, buildings, vehicles in satellite images
- Active learning: model identifies uncertain predictions → human labels those first → most efficient use of labeling budget
- Planet's archive advantage: pre-existing labeled datasets from years of analyst work

**2. Model training:**
- GPU clusters on ground (AWS, GCP, or on-prem)
- Weeks of compute for large models
- Hyperparameter tuning, architecture selection
- Validation on held-out test set

**3. Model evaluation:**
- **Precision**: of everything the model flagged as a ship, what % actually were ships? High precision = few false positives.
- **Recall**: of all actual ships in the image, what % did the model find? High recall = few missed detections.
- **F1 score**: harmonic mean of precision and recall. Single metric balancing both.
- **mAP** (mean Average Precision): standard object detection metric across confidence thresholds.
- **Confusion matrix**: grid showing true positives, false positives, true negatives, false negatives.

**Precision vs. recall tradeoff (critical for PM):**
You can't maximize both. The PM decides which matters more based on use case:

| Use case | Bias toward | Why |
|----------|------------|-----|
| Maritime Domain Awareness | Recall | Missing a ship is worse than a false alarm. Analysts can dismiss false positives. |
| Emergency response | Balanced (slight precision) | False positive = expensive mobilization. But missing a real event is catastrophic. |
| D&I threat detection | Recall | Miss nothing. Sub-second alerts. Analysts triage false positives. |
| Supply chain monitoring | Precision | Throughput matters. Too many false positives overwhelm the pipeline. |
| Methane detection | Precision | False methane reports damage credibility with regulators and carbon markets. |

**Pelican-4 reported 80% detection accuracy** — Planet explicitly acknowledged "work is underway to improve model precision and recall." At 80%, roughly 1 in 5 detections is wrong or missed. A PM's job: define what accuracy threshold is required for each customer segment before the product is viable.

**4. Model deployment:**
- On ground: standard CI/CD, containerized inference service
- On orbit (Planet's edge): Docker container pushed to satellite, loaded on Jetson Orin
- Model versioning: multiple models can coexist, operator selects which to run
- A/B testing on orbit: run two models on same imagery, compare results on ground

**5. Model monitoring and retraining:**
- Model drift: the world changes (new ship types, new building styles, seasonal changes) — model accuracy degrades over time
- Feedback loop: ground truth from analysts feeds back into training data → retrain → redeploy
- For Planet: the 3,000+ image archive means temporal drift is detectable — you can measure whether last year's model still works on this year's data

---

## Edge AI Decision Framework

**When to process on orbit vs. on ground:**

| Factor | Process on orbit | Process on ground |
|--------|-----------------|-------------------|
| Latency requirement | Minutes or less | Hours acceptable |
| Bandwidth available | Limited (can't downlink everything) | Sufficient ground stations |
| Model complexity | Simple detection/classification | Complex multi-stage pipelines |
| Accuracy requirement | 80–95% acceptable with analyst review | 99%+ required |
| Customer trust threshold | Will act on automated alert | Needs analyst-confirmed imagery |
| Power budget | Can duty cycle GPU | N/A |
| Model update frequency | Monthly or less | Continuous retraining |

**Decision velocity framework (from your prep):**
The real constraint isn't accuracy — it's whether the customer trusts the result enough to act without human review.
- 95% accurate real-time alert that arrives in minutes > 99% accurate report that arrives in hours
- Trust threshold varies by customer, mission, and consequence of false positive/negative
- OODA loop: edge AI compresses the Observe phase. Customer gets "threat at X,Y,Z" instead of raw pixels.

---

## Classification & Labeling

**Taxonomy of classification in EO:**

| Level | What | Example |
|-------|------|---------|
| Scene-level | What type of scene is this? | Urban, rural, coastal, desert |
| Object-level | What objects are present? | Ships, aircraft, vehicles, buildings |
| Object attribute | Properties of detected objects | Ship type (cargo, tanker, military), ship length, heading |
| Activity-level | What's happening? | Construction in progress, convoy movement, port loading |
| Change-level | What's different from before? | New building, road extension, forest clearing |

**Labeling approaches:**

| Method | Speed | Cost | Quality |
|--------|-------|------|---------|
| Manual (human analyst) | Slow | High | Highest |
| Semi-automated (model suggests, human corrects) | Medium | Medium | High |
| Active learning (model requests labels for uncertain cases) | Fast | Lower | High where it matters |
| Weak supervision (programmatic rules generate noisy labels) | Very fast | Low | Lower (noisy) |
| Self-supervised pretraining | N/A | Low | Learns representations, not labels |

**Planet's advantage:** Years of analyst-labeled data from government and commercial customers. Bedrock Research brings additional labeled D&I datasets. The archive + labels = training data moat that's nearly impossible to replicate.

---

## Foundation Models for EO

**What's different about EO foundation models:**
Standard vision models (ImageNet, CLIP) are trained on natural photos — perspective view, RGB, variable lighting. Satellite imagery is fundamentally different:
- Nadir (top-down) view
- Multispectral bands (not just RGB)
- Temporal dimension (same location over time)
- Consistent scale (known GSD)
- Global coverage (not curated scenes)

**Why Planet is well-positioned:**
A foundation model for EO needs massive temporal+spatial coverage for pretraining. Planet's daily global archive is the largest such dataset. "Foundation Models for the Real World" is their third AI pillar — longer bet but potentially the most defensible.

**How it works:**
Self-supervised pretraining on unlabeled imagery (predict masked patches, predict next timestep, contrastive learning across bands) → produces a general-purpose visual representation → fine-tune on specific tasks (ship detection, change detection) with much less labeled data than training from scratch.

---

## Quick Quiz (Self-Test)

1. A defense customer wants onboard ship detection with zero missed detections. What do you tell them?
   → Zero missed detections = 100% recall, which is impossible without also accepting many false positives. Frame the conversation around acceptable false positive rate and analyst triage workflow. "The model can be tuned for very high recall — say 99% — but that means roughly X false positives per Y images. Your analysts would need to triage those. Is that workflow acceptable?"

2. Why does Planet use Docker containers for on-orbit AI?
   → Same DevOps abstractions as ground software. Deploy new models like a software update. Isolate workloads. No need to reflash firmware. Enables rapid model iteration — critical when Bedrock Research is improving detection models monthly.

3. What's the difference between pansharpening and multispectral analysis?
   → Pansharpening fuses high-res grayscale (PAN) with lower-res color (MS) to get high-res color. Multispectral analysis uses the individual bands for science (vegetation health via NDVI, water detection via NIR, etc.). Different purposes — one is visual, one is analytical.

4. Why is 80% detection accuracy on Pelican-4 a starting point, not a failure?
   → First on-orbit demonstration of full inference pipeline. 80% proves the architecture works (Docker containers, Jetson Orin, geo-rectification on orbit). Accuracy improves with model iteration — that's why they chose GPU over FPGA (easy model updates). The product question is: at what accuracy threshold does each customer segment trust it enough to act?

5. Why can't you just train a bigger model to improve accuracy on orbit?
   → Bigger model = more compute = more power = more thermal. Jetson Orin at 60W is already a significant fraction of a smallsat's power budget. You optimize with quantization (INT8/INT4), model distillation (train a small model to mimic a large one), and architecture efficiency — not brute force. The PM defines the accuracy-power tradeoff requirement.

6. What gives Planet's AI a moat that BlackSky or Satellogic can't easily replicate?
   → The archive. 3,000+ images of every point on Earth's landmass over 10+ years. Temporal depth enables time-series models (change detection, seasonal patterns, activity baselines) that single-snapshot competitors can't train. Bedrock Research + archive = vertically integrated AI pipeline.

# SDR to HDR Conversion #Overview #VideoTechnology
This mind map outlines the key concepts, processes, technologies, challenges, and applications involved in converting Standard Dynamic Range (SDR) video content to High Dynamic Range (HDR) format.

## Fundamentals of SDR and HDR #Basics #Concepts #Comparison
Understanding the core differences and characteristics of SDR and HDR technologies.
### Standard Dynamic Range (SDR) #SDR #Legacy
*   Definition: Traditional video standard with limited brightness and color range. [8, 11]
*   Brightness Limit: Typically mastered around 100 nits. [6, 9]
*   Color Gamut: Commonly uses Rec.709 color space. [9, 12, 19]
*   Bit Depth: Usually 8-bit, representing ~16.7 million colors. [6, 8]
*   Dynamic Range: Limited, approximately 6 stops of exposure. [7]
*   Transfer Function: Often Gamma-based (e.g., BT.1886). [4, 19]
*   Compatibility: Widely compatible with older displays and devices. [2, 11]

### High Dynamic Range (HDR) #HDR #Modern
*   Definition: Advanced video standard offering wider brightness and color ranges for more realistic images. [6, 7, 8]
*   Brightness Range: Significantly higher peak brightness (400, 1000, or even >2000 nits) and deeper blacks. [1, 6, 8]
*   Color Gamut: Wider Color Gamut (WCG), commonly Rec.2020 or DCI-P3. [1, 12, 19]
*   Bit Depth: Typically 10-bit or 12-bit, representing over 1 billion colors. [6, 8, 20]
*   Dynamic Range: Much wider, around 17+ stops of exposure. [2, 7]
*   Transfer Functions (EOTF/OETF): PQ (Perceptual Quantizer) or HLG (Hybrid Log-Gamma). [12, 19]
*   Metadata: Uses static or dynamic metadata (HDR10, HDR10+, Dolby Vision, HLG) to instruct displays. [6, 9, 12, 20]
*   Compatibility: Requires HDR-capable displays and devices. [2, 6]

## Motivation for SDR to HDR Conversion #Benefits #Goals #UseCases
Reasons driving the need to convert existing SDR content to HDR.
### Enhanced Visual Quality #Experience #Realism
*   Improved brightness and contrast. [2, 8]
*   More vibrant and accurate colors. [2, 7, 8]
*   Greater detail in highlights and shadows. [2, 6, 7]
*   More immersive and lifelike viewing experience. [2, 8]

### Content Repurposing and Monetization #Archive #Distribution
*   Updating legacy SDR archives for modern HDR platforms. [5, 19]
*   Meeting demand for HDR content on streaming services and UHD Blu-rays. [1, 5, 8, 19]
*   Ensuring consistency when mixing SDR and HDR footage in productions. [5, 18]

### Future-Proofing #Compatibility #Standards
*   Aligning content libraries with the industry shift towards HDR. [2, 19]
*   Ensuring compatibility with modern and future HDR displays. [2, 7]

## The SDR to HDR Conversion Process #Workflow #Steps #Pipeline
Overview of the typical stages involved in converting SDR video to HDR.
### Pre-processing #Preparation #Cleanup
*   Source Analysis: Assessing the quality and characteristics of the SDR input. [19]
*   Deinterlacing: Converting interlaced SDR footage (if applicable) to progressive scan. [5]
*   Noise Reduction: Mitigating noise that might be amplified during conversion. [3, 19]
*   Resolution Scaling: Upscaling resolution if needed (e.g., HD SDR to 4K HDR). [5]
*   Color Correction (Initial): Basic adjustments before core conversion.

### Core Conversion: Range and Gamut Expansion #Expansion #Mapping #CoreTask
*   Inverse Tone Mapping (Up-mapping): Expanding the limited SDR brightness range to target HDR levels. This is the central process, aiming to restore or intelligently create highlight detail. [1, 4, 5, 19]
*   Color Gamut Expansion: Mapping colors from the SDR gamut (e.g., Rec.709) to the wider HDR gamut (e.g., Rec.2020 or DCI-P3). [5, 13, 19]
*   Bit Depth Expansion: Converting 8-bit SDR data to 10-bit or 12-bit for HDR. [1, 2]

### Metadata Generation and Insertion #Metadata #Signaling
*   Analysis: Analyzing the up-converted HDR content to generate appropriate metadata. [16]
*   Static Metadata (e.g., HDR10): Defining overall characteristics like MaxFALL/MaxCLL. [6, 9]
*   Dynamic Metadata (e.g., Dolby Vision, HDR10+): Generating scene-by-scene or frame-by-frame instructions for optimal display mapping. [6, 9, 16]
*   Insertion: Embedding the generated metadata into the video stream. [14]

### Post-processing and Grading #Refinement #QualityControl
*   HDR Grading: Fine-tuning the converted HDR image for creative intent and optimal quality. [4, 10, 16]
    *   Adjusting highlights, midtones, shadows specifically for HDR. [10]
*   Artifact Correction: Addressing issues introduced during conversion (banding, noise, color shifts). [1, 17]
*   Quality Control (QC): Thorough review on calibrated HDR monitors. [5]

## Key Technologies and Algorithms #Methods #Techniques #AI
Approaches used to perform the core conversion, particularly inverse tone mapping and gamut expansion.
### Traditional / Algorithmic Methods #Conventional #LUTs
*   Lookup Tables (LUTs): Using pre-defined tables to map SDR values to HDR values. Often used in hardware converters. [5, 19]
*   Inverse Tone Mapping Operators (ITMOs): Algorithms designed to reverse the SDR tone mapping process, often involving global expansion followed by local highlight processing. [1, 4]
*   Statistical Analysis: Analyzing image statistics to guide the expansion process. [1]
*   Direct Mapping: Simple encapsulation of SDR signal within an HDR container; preserves original look but doesn't enhance it. [5, 19]

### Machine Learning / AI-Based Methods #AI #DeepLearning #NeuralNetworks
*   Deep Neural Networks (DNNs): Training models on paired SDR/HDR data to learn the complex mapping. [1, 22]
*   Generative Adversarial Networks (GANs): Using GANs to generate realistic HDR details from SDR input. [1]
*   Transformer Models: Utilizing attention mechanisms, potentially adapted for frequency-specific enhancements. [1]
*   Advantages: Potential for higher quality results, better detail reconstruction. [1]
*   Challenges: High computational cost, potential for artifacts, dependency on training data quality. [1, 22]

### Content-Adaptive / Dynamic Methods #Adaptive #Realtime
*   Algorithms that adjust conversion parameters based on the content of each scene or frame. [5, 13, 18]
*   Goal: Optimize conversion for varying lighting conditions and content types. [13]
*   Often used in real-time broadcast converters. [5, 13]

## Color Spaces and Transfer Functions #Color #Luminance #Standards
Managing the changes in color representation and brightness mapping.
### Color Gamut Mapping #Rec709 #Rec2020 #DCI-P3
*   Source Gamut: Typically BT.709 for HD SDR. [4, 12]
*   Target Gamut: Typically BT.2020 or DCI-P3 for HDR. [1, 12, 19]
*   Mapping Techniques: Algorithms to translate colors from the smaller SDR gamut to the larger HDR gamut while aiming for natural appearance. [1, 13]

### Transfer Function Conversion #EOTF #OETF #Gamma #PQ #HLG
*   Source EOTF: Typically BT.1886 (Gamma-like) for SDR. [4, 19]
*   Target EOTF: PQ (ST 2084) for HDR10/Dolby Vision or HLG for broadcast compatibility. [12, 19]
*   Conversion Process: Applying mathematical transforms to map the SDR luminance curve to the target HDR curve. [19]

## Metadata Handling #Signaling #HDRFormats #DolbyVision #HDR10
Generating and managing the metadata crucial for HDR playback.
### Static Metadata (HDR10) #HDR10 #Static
*   Definition: Provides fixed information for the entire content (e.g., MaxFALL, MaxCLL, mastering display primaries). [6, 9]
*   Generation: Calculated after conversion based on overall content analysis. [14]

### Dynamic Metadata (Dolby Vision, HDR10+) #DolbyVision #HDR10Plus #Dynamic
*   Definition: Provides scene-by-scene or frame-by-frame optimization instructions. [6, 9, 16]
*   Generation: Requires more complex analysis, often involving content analysis passes and potentially manual trimming. [16]
*   Importance: Allows for more precise adaptation to display capabilities, often yielding better results on a wider range of TVs. [9, 16]

### Hybrid Log-Gamma (HLG) #HLG #Broadcast #NoMetadata
*   Definition: A royalty-free HDR standard often used in broadcasting, designed for backward compatibility with SDR displays. [12, 19]
*   Metadata: Generally does not rely on explicit metadata in the same way as PQ-based formats. [12]
*   Conversion: Involves mapping SDR to the HLG transfer curve and BT.2020 gamut. [19]

## Quality Assessment and Metrics #Evaluation #QC #Perception
Methods for evaluating the success and quality of the SDR to HDR conversion.
### Subjective Assessment #HumanVision #ViewingTests
*   Methodology: Controlled viewing tests with human observers rating the converted HDR content against references (if available) or based on perceived quality. [15, 23, 24]
*   Importance: Considered the gold standard as it directly measures perceptual quality. [24]
*   Factors: Overall visual appeal, artifact presence, naturalness, comparison to original SDR (if desired). [23]
*   Databases: LIVE-HDR VQA Database, etc. [15, 23]

### Objective Metrics #Algorithms #Measurement
*   Traditional Metrics (Adapted): PSNR, SSIM may be adapted but are often insufficient as they were designed for SDR and don't fully capture HDR attributes. [15, 21]
*   HDR-Specific Metrics: Metrics designed or adapted for HDR, potentially considering luminance, color volume, and human visual system models (e.g., HDR-VDP, PU-encoding based metrics).
*   No-Reference (NR) Models: AI/ML models trained to predict HDR quality without needing the original HDR source (e.g., HIDRO-VQA, HDRPatchMAX). [15, 23]
*   Challenges: Developing metrics that correlate well with subjective perception of HDR quality. [15, 21]

### Common Artifacts #Issues #Errors
*   Clipping: Loss of detail in highlights or shadows if expansion is not handled well. [7, 13]
*   Noise Amplification: Existing noise in the SDR source becoming more visible. [3, 19]
*   Banding: Visible steps in color/luminance gradients due to bit-depth limitations or poor processing. [17]
*   Color Shifts/Inaccuracies: Unnatural colors resulting from gamut mapping or transfer function issues. [4, 17]
*   Over-enhancement: Artificial or exaggerated appearance, loss of artistic intent. [1]

## Challenges and Limitations #Difficulties #Problems #Constraints
Inherent difficulties in the SDR to HDR conversion process.
### Information Loss in SDR #MissingData #Guesswork
*   SDR inherently captures less information (dynamic range, color detail) than HDR. [1]
*   Conversion often involves "guessing" or synthesizing details not present in the source. [4]
*   Clipped highlights in the original SDR source cannot be magically recovered. [5, 7]

### Preserving Artistic Intent #Creativity #Look
*   The original look and feel of the SDR content might be altered unintentionally. [4, 17]
*   Balancing technical enhancement with the director's/colorist's original vision. [16, 18]

### Computational Complexity #Processing #Performance
*   Advanced algorithms (especially AI-based) can be computationally intensive and slow. [1, 19]
*   Real-time conversion for live broadcast poses significant challenges. [5, 13]

### Artifact Generation #Errors #SideEffects
*   Risk of introducing artifacts like banding, noise, color shifts during the process. [1, 17, 19]

### Lack of Standardized "Best" Method #Variability #Subjectivity
*   Different algorithms produce different results; no single universally perfect method. [1, 4, 18]
*   Quality can be subjective and content-dependent. [18, 23]

## Hardware and Software Solutions #Tools #Products #Implementation
Platforms and tools used for SDR to HDR conversion.
### Software Tools #NLE #Plugins #Encoding
*   Non-Linear Editors (NLEs): DaVinci Resolve, Adobe Premiere Pro, Final Cut Pro often include SDR-to-HDR capabilities or plugins. [3, 10]
*   Specialized Conversion Software: Tools focused specifically on inverse tone mapping and HDR conversion (e.g., Colorfront, UniFab HDR Upscaler AI). [2, 5]
*   Encoding Tools / GUIs: Software like EncodeGUI or cloud services (AWS MediaConvert) offering conversion options. [2, 3, 14]
*   AI-Powered Enhancers: Software leveraging AI models for up-conversion. [2]

### Hardware Converters #Realtime #Broadcast
*   Real-time Boxes: Dedicated hardware units for live broadcast or production workflows (e.g., from AJA, Cobalt, LYNX Technik, Sony). [5, 13]
*   Usually designed for speed and reliability, often using LUTs or adaptive algorithms. [5, 13]

### Cloud Services #CloudComputing #Scalability
*   Platforms like AWS MediaConvert offering SDR to HDR conversion as part of cloud-based media workflows. [14]

## Applications and Use Cases #Deployment #Scenarios
Where SDR to HDR conversion is applied.
### Broadcasting #Live #TV
*   Up-converting live SDR feeds (e.g., sports, news) for HDR channels. [5, 13, 18]
*   Integrating SDR archive footage or feeds from specialized SDR cameras into HDR broadcasts. [5, 13]

### Streaming Services (OTT) #Netflix #VOD
*   Converting existing SDR libraries to HDR to meet consumer demand and platform standards. [8, 19]
*   Providing HDR versions of older films and TV shows. [19]

### Post-Production and Remastering #Film #Archive
*   Remastering classic films or TV series from SDR masters to HDR for re-release. [5, 16]
*   Integrating SDR elements (archive, VFX) into new HDR productions. [3, 5]

### Gaming #Upscaling #Consoles
*   Real-time up-conversion of SDR game visuals to HDR on compatible displays or consoles (though native HDR support is preferred). [2, 8]

### Consumer Electronics #TVs #Devices
*   Built-in conversion features in some HDR TVs and displays to enhance SDR content viewing. [1]

## Standardization and Formats #Standards #Guidelines #ITU
Relevant standards and recommendations.
### ITU Recommendations #ITU-R #BroadcastStandards
*   Rec. ITU-R BT.709: Standard for SDR color space (HDTV). [4, 12]
*   Rec. ITU-R BT.2020: Standard defining UHD aspects including WCG. [1, 12]
*   Rec. ITU-R BT.2100: Standard defining HDR television parameters (PQ and HLG). [1, 13]
*   Rec. ITU-R BT.2446: Report detailing methods for HDR-SDR and SDR-HDR conversion. [4, 22]
*   Rec. ITU-R BT.1886: EOTF for SDR reference displays. [4, 19]

### HDR Formats #HDR10 #DolbyVision #HLG #HDR10Plus
*   HDR10: Open standard, static metadata, PQ EOTF, Rec.2020 gamut, 10-bit. [6, 12]
*   HDR10+: Extension of HDR10 with dynamic metadata. [6, 12]
*   Dolby Vision: Proprietary standard, dynamic metadata, PQ EOTF, potentially 12-bit. [2, 6, 12]
*   HLG (Hybrid Log-Gamma): Royalty-free, often no metadata, designed for broadcast backward compatibility. [12, 19]

### Industry Guidelines #UHDForum #MovieLabs
*   Recommendations from bodies like the Ultra HD Forum or MovieLabs on conversion practices. [5]

## Future Trends and Research #Advancements #RD #NextGen
Ongoing developments and future directions in SDR to HDR conversion.
### AI/ML Advancements #AI #MachineLearning
*   More sophisticated AI models for higher quality, more efficient conversion. [1, 22]
*   Improved artifact reduction and detail synthesis. [1]
*   Better preservation of artistic intent through AI.

### Real-time Performance #Live #Efficiency
*   Development of more efficient algorithms suitable for real-time, low-latency applications. [1, 5]
*   Hardware acceleration advancements (GPUs, FPGAs). [2]

### Perceptual Optimization #HumanVision #QoE
*   Algorithms increasingly based on models of the human visual system for perceptually optimal results. [19]
*   Improved quality metrics that better correlate with human perception. [15, 21]

### Improved Standardization #Consistency #Interoperability
*   Efforts towards more consistent and predictable conversion results across different tools and platforms. [4]

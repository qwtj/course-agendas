# Davinci Studio #Software #VideoEditing #PostProduction
This mind map outlines the features and workflow of DaVinci Resolve Studio, the professional version of Blackmagic Design's video editing, color correction, visual effects, and audio post-production software.

## Core Components (Pages) #Workflow #Interface #Modules
DaVinci Resolve is organized into distinct "Pages," each dedicated to a specific stage of the post-production process.

### Media Page #Import #Organization #Metadata
Handles media import, organization, and preparation.
#### Importing Media #Ingest #FileFormats
Supports a wide range of file formats, including professional 10-bit formats like AVCHD, AVC-Intra, H.264 10-bit 422, and HEVC/H.265 profiles (Studio feature). #Formats #Codecs
#### Media Management #Bins #Assets #Database
Organizing clips using Bins, Power Bins (shared across projects), and Smart Bins (metadata-based filtering).
#### Metadata Management #Tags #Keywords #Information
Viewing, adding, and editing clip metadata. Includes Studio-only AI features like facial recognition for automatic bin sorting based on people. #AI #Automation
#### Syncing #AudioVideoSync #Alignment
Synchronizing separate audio and video clips.
#### Proxy Workflow #Optimization #Performance
Generating lower-resolution proxy media for smoother editing on less powerful systems.

### Cut Page #FastEditing #RoughCut #Assembly
Designed for speed and efficiency, especially for quick assemblies and edits.
#### Source Tape Mode #Review #Selection
Viewing all clips as a single continuous "tape" for quick selection.
#### Sync Bin #Multicam #Syncing
Viewing and syncing clips from multiple cameras based on timecode or audio.
#### Fast Editing Tools #Trimming #Transitions
Simplified trimming tools, quick transitions, and intuitive interface for rapid assembly.
#### Quick Export #Sharing #Drafts
Fast export options for quick reviews or draft versions.

### Edit Page #NLE #Timeline #Refinement
The traditional non-linear editing (NLE) interface for detailed editing tasks.
#### Timeline Editing #Sequencing #Arrangement
Standard track-based timeline editing.
#### Advanced Trimming #Ripple #Roll #Slip #Slide
Comprehensive trim tools (Ripple, Roll, Slip, Slide) for precise adjustments.
#### Transitions & Effects #Visuals #Polish
Applying transitions, standard effects (OpenFX), and generators.
#### Keyframing & Animation #Motion #Parameters
Animating clip properties (position, scale, opacity, effects) using keyframes.
#### Multicam Editing #MultipleCameras #Synchronization
Editing footage from multiple camera angles simultaneously.
#### Subtitling & Captions #Text #Accessibility
Tools for creating and editing subtitles and closed captions. Studio version includes AI-powered Animated Subtitles. #AI
#### Text-Based Editing (Studio) #Transcription #AIEditing
Editing based on transcribed audio text (Studio Only AI Feature). #AI #Efficiency

### Fusion Page #VFX #MotionGraphics #Compositing
Integrated node-based compositing, visual effects, and motion graphics environment.
#### Node-Based Workflow #Nodes #Compositing #Flexibility
Connecting tools (nodes) together to build complex effects in a non-destructive, visual way. #VisualProgramming
#### 2D & 3D Workspace #Space #Dimension
Combining 2D and 3D elements within the same environment.
#### Core Tools #Tracking #Keying #Rotoscoping #Particles
Includes tools for planar tracking, 3D camera tracking, delta keyer, Ultra keyer, rotoscoping, 3D particle systems, painting, etc.
#### Templates & Macros #Presets #Efficiency
Creating and using pre-built effects and animations (macros/templates). Compositions can be saved as templates for Edit/Cut pages. #Reusable
#### Deep Compositing (Fusion Studio 20 / Resolve 20) #AdvancedVFX #DepthData
Working with deep image data (encoding depth per pixel) for more accurate compositing, especially with elements like fog or motion blur. #ProfessionalVFX
#### Multi-layer EXR Workflows (Fusion Studio 20 / Resolve 20) #EXR #Layers
Enhanced support for multi-layer EXR files.
#### Cryptomatte Support (Fusion Studio 20 / Resolve 20) #Matting #Masking
Support for Cryptomatte ID mattes generated from 3D renders.

### Color Page #ColorCorrection #ColorGrading #LookDev
Industry-leading tools for primary and secondary color correction and creative grading.
#### Primary Correction Tools #Balance #Contrast #Saturation
Using Lift, Gamma, Gain, Offset wheels/bars, contrast, pivot, saturation, hue controls to affect the entire image.
#### Secondary Correction Tools #Isolation #Refinement
Isolating specific parts of the image for adjustments using:
##### Qualifiers #HSL #RGB #Luminance
Selecting specific color or luminance ranges.
##### Power Windows #Masking #Shapes
Geometric shapes (circles, squares, polygons, gradients) and custom curves (PowerCurves) to limit corrections to specific areas.
##### Tracking #MotionTracking #Stabilization
Tracking Power Windows or objects/subjects to apply corrections consistently over time. Includes Cloud and Point trackers. Studio includes AI-powered Magic Mask and IntelliTrack AI. #AI
#### Node Editor #Workflow #Structure #Flexibility
Building complex grading structures by connecting correction nodes (Serial, Parallel, Layer, Outside).
#### Scopes #Analysis #Monitoring #Measurement
Video scopes (Waveform, Vectorscope, Parade, Histogram) for objective image analysis. Studio includes advanced HDR scopes (Dolby Vision, HDR10+). #HDR
#### Color Management #ACES #RCM #Gamut #Gamma
System-level color management (DaVinci Resolve Color Managed - RCM) or ACES workflows for project consistency.
#### LUTs (Look Up Tables) #Presets #Conversion #Look
Applying and managing 3D LUTs for technical conversions or creative looks.
#### Gallery & Stills #SavingGrades #Reference
Saving grades as stills for reuse or comparison (PowerGrades for project-wide use).
#### HDR Grading #HighDynamicRange #DolbyVision #HDR10+
Tools specifically designed for High Dynamic Range grading, including support for Dolby Vision and HDR10+ metadata (Studio feature).
#### Color Warper #ColorManipulation #HueSaturation
Advanced tool for simultaneous hue and saturation adjustments with a mesh-based interface. Includes Chroma Warp in Resolve 20.

### Fairlight Page #AudioPost #Mixing #SoundDesign
Integrated Digital Audio Workstation (DAW) for audio editing, mixing, and mastering.
#### Track Layers & Editing #AudioEditing #Arrangement
Multi-track audio editing with clip-based and track-based adjustments. Smart Edit tools.
#### Mixing Console #Levels #Panning #Bussing
Professional mixer interface with faders, pan controls, EQ, dynamics, plugins per track, and flexible bussing architecture.
#### FairlightFX #AudioPlugins #Processing
Built-in audio effects (EQ, Dynamics, Reverb, De-Esser, De-Hummer, Noise Reduction etc.) and support for VST/AU plugins. Studio includes more Fairlight FX and AI-powered tools like Voice Isolation, Dialogue Separator, and Music Remixer. #AI
#### ADR (Automated Dialog Replacement) #Dialogue #Recording
Tools for recording dialogue replacement directly in the timeline.
#### Sound Libraries & Foley #SoundEffects #Foley
Integration with sound effect libraries and Foley Sampler (Studio feature) for performing sounds.
#### Immersive Audio #Surround #3DAudio #Atmos
Support for mixing and mastering in various formats, including Stereo, 5.1, 7.1, and immersive 3D audio formats like Dolby Atmos (Studio feature).
#### Fairlight Audio Accelerator (Hardware) #Performance #TrackCount
Optional hardware accelerator card allows for up to 2,000 tracks with real-time processing. #Hardware

### Deliver Page #Export #Rendering #Output
Handles final output rendering and delivery of the project.
#### Render Settings #Format #Codec #Resolution #Framerate
Configuring output parameters like format (QuickTime, MP4, MXF, IMF, DCP etc.), codec (H.264, H.265, ProRes, DNxHR, etc.), resolution, frame rate.
#### Output Presets #YouTube #Vimeo #Broadcast
Presets for common delivery platforms (YouTube, Vimeo, etc.) and custom preset creation.
#### Render Queue #BatchRendering #Management
Managing multiple render jobs simultaneously.
#### Advanced Formats (Studio) #DCP #IMF #HDRDelivery
Support for Digital Cinema Package (DCP) creation, Interoperable Master Format (IMF) encoding/decoding, and advanced HDR delivery (Dolby Vision, HDR10+). #ProfessionalDelivery

## DaVinci Resolve Studio vs. Free #Upgrade #Comparison #Features
Key differences and additional features available only in the paid Studio version.
### Resolution & Frame Rate Limits #Performance #Quality
Free: Up to Ultra HD (3840x2160) at 60fps.
Studio: Up to 32K resolution at 120fps.
### DaVinci Neural Engine #AI #MachineLearning #Automation
Powers many advanced AI features exclusive to Studio:
#### Magic Mask #Rotoscoping #Isolation
AI-powered object/person isolation and tracking. Enhanced in v2/v3.
#### Smart Reframe #AspectRatio #SocialMedia
Automatically reframes footage for different aspect ratios (e.g., vertical).
#### Speed Warp #SlowMotion #OpticalFlow
High-quality optical flow retiming for smooth slow motion.
#### SuperScale #Upscaling #ResolutionEnhancement
AI-powered upscaling of footage (e.g., HD to 4K/8K). 3x/4x enhancement in v20.
#### Face Recognition / Detection #Organization #Metadata
Automatically detects faces for bin organization and Face Refinement FX.
#### Text-Based Editing #Transcription #AIEditing
Edit video based on transcribed text.
#### Scene Cut Detection #Editing #Conforming
Automatically detects cuts in rendered files.
#### Object Removal #VFX #Cleanup
AI tool to remove unwanted objects from shots.
#### Voice Isolation & Dialogue Separation #AudioRepair #Clarity
Isolating dialogue from background noise or separating dialogue/music/effects.
#### Music Remixer #AudioEditing #Timing
Adjusts music track length to fit video duration.
#### IntelliTrack AI #Tracking #AudioPanning
AI point tracker for VFX/Color and audio panning.
#### Other AI Tools #DialogueMatcher #AnimatedSubtitles #AudioAssistant #IntelliScript #SmartSwitch
Various other AI tools enhancing workflow across pages (many introduced/enhanced in v20).

### Additional Resolve FX #Effects #Plugins #CreativeTools
Over 40 extra GPU/CPU accelerated effects exclusive to Studio, including:
#### Noise Reduction #Temporal #Spatial #UltraNR
Advanced temporal, spatial, and AI-powered (UltraNR) noise reduction.
#### Lens Flares & Reflections #OpticalEffects #Visuals
Simulating lens effects.
#### Analog Damage #Vintage #Look
Simulating film/tape damage.
#### Face Refinement & Beauty #Retouching #Cosmetic
Tools for retouching skin and facial features.
#### Film Grain #Look #Texture
Adding realistic film grain.
#### Lens Blur & Optical Blur #DepthOfField #FocusEffects
Creating realistic blur effects.
#### Aperture Diffraction #OpticalEffects #Lens
Simulating diffraction effects.
#### Patch Replacer & Object Removal #Cleanup #VFX
Advanced cloning and object removal tools.
#### Dehaze, Deflicker, Deband #ImageCorrection #Repair
Tools for fixing common image issues.
#### Stylize, Texture Pop, Relight #CreativeFX #LookDev
Creative effects for look development.
#### Film Look Creator #FilmicLook #Simulation
Tool for adding filmic looks, halation, grain, etc.

### GPU Acceleration & Hardware #Performance #Rendering
#### Multiple GPU Support #Speed #Realtime
Utilizes multiple GPUs for significantly enhanced performance (Free version limited, except on Mac Pro).
#### Hardware Accelerated Decoding/Encoding #H264 #H265 #Codecs
Faster playback and rendering of H.264/H.265 formats (Note: H.264/H.265 hardware acceleration *is* available in free Mac version, but not free Windows/Linux). #Efficiency
### Collaboration Features #Teamwork #RemoteWorkflow
Advanced multi-user collaboration features (while basic collaboration is now in free version, Studio offers more robust integration). Remote Grading synchronization. #Cloud #SharedProjects
### Advanced Format Support #Codecs #Delivery
Support for more professional codecs (AVCHD, AVC-Intra, XAVC, etc.) and 10-bit formats. #ProfessionalFormats
### Stereoscopic 3D Tools #3DVideo #Stereo
Tools for editing and grading stereoscopic 3D projects.
### HDR Scopes & Delivery #HDR #Monitoring #Metadata
Advanced scopes for HDR analysis and delivery options for Dolby Vision/HDR10+.
### Scripting & Automation #API #Python #LUA #Integration
Support for Python and LUA scripting and developer APIs for workflow integration and customization. #Customization #Automation
### Workflow Integration Plugins #MAM #AutomationSystems
Support for plugins connecting to asset management and automation systems via JavaScript APIs. #Integration
### Remote Monitoring #ClientReview #Streaming
Stream high-quality video/audio feeds remotely.
### Full Screen Playback on Second Monitor #Monitoring #UI
Dedicated full-screen output to a second display.

## Project Management & Settings #Setup #Configuration #Database
Managing projects, databases, and software settings.
### Project Databases #Disk #PostgreSQL #Cloud
Options for storing projects: Local Disk Database, Shared PostgreSQL Database (for local network collaboration), Blackmagic Cloud Database (for remote collaboration).
### Project Settings #Resolution #FrameRate #ColorManagement
Configuring timeline resolution, frame rate, color science, monitoring settings, etc.
### Backup & Archive #Safety #DataManagement
Project backup and archiving options.
### User Preferences #Customization #UI
Customizing UI layout, keyboard shortcuts, and operational settings.

## Collaboration #Teamwork #MultiUser #Remote
Features enabling multiple users to work on the same project simultaneously.
### Blackmagic Cloud #RemoteCollaboration #CloudStorage
Cloud-based platform for hosting project libraries and syncing media for remote collaboration. #CloudHosting
### Project Server (Local Network) #SharedDatabase #LAN
Setting up a local PostgreSQL server for collaboration within a facility.
### Bin & Timeline Locking #ConcurrencyControl #ConflictAvoidance
Automatic locking prevents multiple users from modifying the same bin or timeline simultaneously. Read/write permissions managed dynamically.
### Shared Markers & Notes #Communication #Feedback
Placing markers with notes visible to all collaborators.
### Built-in Chat #Communication #Messaging
Integrated chat tool for team communication within Resolve.
### Remote Grading #ColorGrading #RemoteSession
Synchronizing two Resolve Studio systems over the internet for real-time remote color grading sessions.
### Comparison & Merging Tools #VersionControl #Updates
Tools to compare different timeline versions and merge changes.

## Hardware Integration #ControlSurfaces #IO #Performance
Using dedicated hardware with DaVinci Resolve.
### Color Control Panels #MicroPanel #MiniPanel #AdvancedPanel
Tactile control surfaces for faster and more intuitive color grading. #Grading #Ergonomics
### Editor Keyboard #Editing #Keyboard #JogWheel
Keyboard with integrated search dial (jog/shuttle) for faster editing.
### Fairlight Consoles & Audio Interfaces #AudioMixing #HardwareControl
Modular audio control surfaces and high-performance audio interfaces for the Fairlight page. #Audio #Mixing
### Video I/O Devices #DeckLink #UltraStudio #Monitoring
Blackmagic Design capture and playback cards/devices for accurate video monitoring.
### eGPU Support #Performance #Graphics
Support for external GPUs to boost performance, especially on laptops.

## Plugins & Integration #Extensibility #ThirdParty #API
Extending Resolve's capabilities with third-party tools.
### OpenFX (OFX) Plugins #Effects #Compositing #Grading
Support for standard OpenFX visual effects, grading, and utility plugins (Studio supports more third-party OFX plugins than Free). #VFX #Utility
### Audio Plugins (VST, AU) #AudioEffects #SoundDesign
Support for VST (Windows/Linux) and Audio Unit (macOS) audio plugins in Fairlight.
### Workflow Integration Plugins #MAM #DAM #Automation
Connecting Resolve Studio to external systems like Media Asset Management (MAM). #Integration #Automation
### Scripting API #Python #LUA #Customization
Automating tasks and integrating Resolve into larger pipelines using Python or LUA scripting (Studio only).

## Advanced Workflows & Techniques #Professional #HighEnd #Specialized
Specialized workflows often requiring the Studio version.
### HDR (High Dynamic Range) #DolbyVision #HDR10+ #HLG
Complete workflows for grading and delivering HDR content. #ColorGrading #Delivery
### Stereoscopic 3D #3DVideo #PostProduction
Editing, grading, and finishing stereoscopic 3D projects.
### ACES Color Management #ColorScience #Standardization
Implementing the Academy Color Encoding System for standardized color pipeline.
### IMF & DCP Creation #Delivery #Theatrical #Broadcast
Creating industry-standard Interoperable Master Format and Digital Cinema Packages (Studio only). #Packaging
### Remote Production #Cloud #Collaboration
Utilizing Blackmagic Cloud and remote features for distributed teams.
### Complex Compositing (Fusion) #VFX #Integration
Leveraging the integrated Fusion page for advanced visual effects shots without round-tripping.

## Learning Resources & Community #Education #Support #Forum
Where to learn and get help with DaVinci Resolve.
### Official Blackmagic Design Training #Certification #Courses
Books, online guides, and certified training courses provided by Blackmagic Design.
### Online Tutorials #YouTube #Vimeo #Skillshare
Vast amount of free and paid tutorials available online.
### Community Forums #Support #Discussion #Tips
Official and unofficial forums for user support and discussion.
### Books & Publications #Guides #Manuals
Third-party books and detailed guides.

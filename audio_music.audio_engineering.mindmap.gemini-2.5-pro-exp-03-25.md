# Audio Engineering #Overview #Discipline
The technical and creative process of recording, manipulating, mixing, reproducing, and reinforcing sound.

## Fundamentals of Sound and Acoustics #Physics #Theory #Basics
Understanding the physical properties of sound and how it behaves in spaces.

### Sound Waves #Physics #Waves
Properties and characteristics of sound waves.
#### Frequency / Pitch #Hertz #Perception
Rate of vibration, perceived as pitch.
#### Amplitude / Loudness #Decibels #Perception
Intensity of the sound wave, perceived as loudness.
#### Velocity #SpeedOfSound #Medium
Speed at which sound travels through a medium.
#### Wavelength #Distance #FrequencyRelation
Physical length of one cycle of a wave.
#### Phase #Timing #Interference
Position of a point in time on a waveform cycle. Constructive and destructive interference.
#### Harmonics and Timbre #Overtones #SoundQuality
The combination of fundamental frequency and overtones that create the unique sound quality of an instrument or voice.

### Decibels (dB) #Measurement #Logarithmic
Units used to measure sound intensity level, voltage, power, etc.
#### dB SPL #SoundPressure #Acoustics
Measurement of sound pressure level in the air.
#### dBFS #DigitalAudio #Clipping
Decibels relative to full scale in digital audio systems.
#### dBu / dBV #Voltage #ProAudio
Decibels relative to voltage levels used in audio equipment.

### Psychoacoustics #Perception #Hearing
The study of how humans perceive sound.
#### Fletcher-Munson Curves / Equal Loudness Contours #Hearing #FrequencyResponse
How human hearing sensitivity varies with frequency and loudness.
#### Masking #Auditory #Perception
When one sound makes another harder to hear.
#### Haas Effect / Precedence Effect #Localization #Timing
How timing differences affect perceived sound source location.
#### Stereo Imaging #Localization #Panning
Creating a sense of spatial location between two speakers.

### Room Acoustics #Environment #Treatment
How sound behaves within an enclosed space.
#### Reflection #SoundBounce #Surfaces
Sound waves bouncing off surfaces.
#### Absorption #EnergyLoss #Materials
Materials converting sound energy into heat.
#### Diffusion #Scattering #Evenness
Scattering sound waves to create a more even sound field.
#### Reverberation (Reverb) #Decay #Space
Persistence of sound after the source has stopped, due to reflections. RT60 measurement.
#### Standing Waves / Room Modes #Resonance #LowFrequency
Frequencies that resonate within a room based on its dimensions.
#### Noise Criteria (NC) / Room Criteria (RC) #BackgroundNoise #Standards
Standards for measuring acceptable background noise levels in rooms.

## Audio Equipment and Technology #Hardware #Software #Tools
The tools used in audio engineering.

### Microphones #Transducers #Input
Devices that convert sound waves into electrical signals.
#### Microphone Types #Dynamic #Condenser #Ribbon
Classification based on transduction principle.
##### Dynamic Microphones #MovingCoil #Robust
Uses electromagnetic induction. Good for loud sources. (e.g., Shure SM57, SM58)
##### Condenser Microphones #Capacitor #Sensitive
Uses a capacitor. Requires phantom power (+48V). Detailed sound capture. (e.g., Neumann U87)
##### Ribbon Microphones #Electromagnetic #Fragile
Uses a thin metal ribbon in a magnetic field. Often warm, natural sound.
#### Polar Patterns #Directionality #Pickup
The sensitivity of a microphone to sound arriving from different angles.
##### Cardioid #Unidirectional #FeedbackRejection
Heart-shaped pattern, sensitive primarily to the front.
##### Supercardioid / Hypercardioid #TighterCardioid #OffAxisRejection
Narrower pickup than cardioid, with some rear sensitivity.
##### Omnidirectional #AllDirections #RoomSound
Picks up sound equally from all directions.
##### Bidirectional / Figure-8 #FrontAndBack #RibbonMics
Picks up sound from the front and rear, rejects sides. Common in ribbon mics.
#### Microphone Specifications #Specs #Performance
Frequency response, sensitivity, self-noise, max SPL.
#### Microphone Preamplifiers (Preamps) #Gain #Impedance
Amplifies the low-level signal from a microphone to line level.

### Mixing Consoles / Control Surfaces #MixingDesk #SignalFlow #Control
Hardware or software interfaces for combining, routing, and processing audio signals.
#### Analog Consoles #Circuits #Warmth
Traditional desks using analog circuitry.
#### Digital Consoles #DSP #Recall #Flexibility
Desks using digital signal processing, offering recall and advanced routing.
#### Control Surfaces #DAWControl #Faders #Knobs
Hardware controllers for Digital Audio Workstation software (DAWs).
#### Signal Flow #Routing #InputOutput
Understanding the path audio takes through a console (input channels, buses, aux sends, master output).

### Audio Interfaces #Connectivity #ADDA
Devices connecting microphones, instruments, and other gear to a computer. Contains Analog-to-Digital (A/D) and Digital-to-Analog (D/A) converters.
#### A/D and D/A Converters #DigitalAudio #Conversion
Converting analog signals to digital data and back.
#### Sample Rate #DigitalAudio #Resolution
Number of samples taken per second (e.g., 44.1kHz, 48kHz, 96kHz). Affects frequency range.
#### Bit Depth #DigitalAudio #DynamicRange
Number of bits used to represent each sample's amplitude (e.g., 16-bit, 24-bit, 32-bit float). Affects dynamic range and noise floor.
#### Connectivity #USB #Thunderbolt #Dante #MADI
Different connection types (USB, Thunderbolt, Ethernet-based like Dante, MADI).

### Signal Processors #Effects #Dynamics #EQ
Tools used to modify audio signals.
#### Equalizers (EQ) #Frequency #ToneShaping
Adjusting the balance of different frequency components.
##### Graphic EQ #FixedBands #Sliders
EQ with fixed frequency bands adjusted by sliders.
##### Parametric EQ #VariableBands #QControl
EQ with adjustable frequency, gain, and bandwidth (Q).
##### Shelving EQ #HighPass #LowPass
Boosts or cuts frequencies above or below a specified point.
##### Filter Types #HPF #LPF #BandPass #Notch
High-pass, low-pass, band-pass, notch filters.
#### Dynamics Processors #LevelControl #Amplitude
Processors that manipulate the dynamic range of audio.
##### Compressors #DynamicRangeReduction #Sustain
Reduce dynamic range by attenuating signals above a threshold. Key parameters: Threshold, Ratio, Attack, Release, Makeup Gain.
##### Limiters #PeakStop #Protection
High-ratio compressors preventing signals from exceeding a set ceiling.
##### Gates / Expanders #NoiseReduction #Tightening
Attenuate signals below a threshold. Expanders increase dynamic range.
##### De-Essers #Sibilance #FrequencySpecificCompression
Compressors targeting specific high frequencies to reduce sibilance ('s' sounds).
#### Time-Based Effects #Reverb #Delay #Modulation
Effects creating a sense of space or manipulating timing.
##### Reverb #Space #Ambience
Simulates acoustic spaces (hall, room, plate, spring).
##### Delay / Echo #Repetition #Rhythm
Creates distinct repeats of the audio signal.
##### Modulation Effects #Chorus #Flanger #Phaser
Uses time delays and pitch shifting to create movement (Chorus, Flanger, Phaser, Tremolo, Vibrato).
#### Pitch Correction / Shifting #Tuning #Harmonizing
Altering the pitch of audio signals (e.g., Auto-Tune, Melodyne).

### Monitoring Systems #Speakers #Headphones #Playback
Accurate reproduction of audio for critical listening.
#### Studio Monitors #Nearfield #Midfield #Farfield
Loudspeakers designed for accurate audio reproduction in studios.
#### Monitor Calibration #RoomCorrection #FlatResponse
Adjusting monitors to achieve a flat frequency response in a specific room.
#### Headphones #ClosedBack #OpenBack #Isolation
Used for detailed listening, tracking, and checking compatibility.
#### Subwoofers #LowFrequency #BassManagement
Speakers dedicated to reproducing very low frequencies.

### Digital Audio Workstations (DAWs) #Software #Recording #Mixing
Software applications for recording, editing, mixing, and mastering audio. (e.g., Pro Tools, Logic Pro, Ableton Live, Cubase, Reaper).
#### Core Functions #Recording #Editing #Mixing #MIDI
Multitrack recording, non-destructive editing, mixing environment, MIDI sequencing.
#### Plugins #VST #AU #AAX
Software modules (EQs, compressors, reverbs, virtual instruments) used within a DAW.
#### Automation #Mixing #DynamicChanges
Programming changes in parameters (volume, pan, effects) over time.

## Recording Techniques and Process #Capture #Tracking #Workflow
The process of capturing sound sources.

### Studio Setup and Preparation #Planning #Environment
Setting up the recording environment and equipment.
#### Session Planning #Instrumentation #Logistics
Defining goals, required tracks, input lists, mic choices.
#### Acoustic Treatment #SoundControl #Isolation
Using absorption, diffusion, and barriers to control sound within the recording space.
#### Gain Staging #LevelSetting #Headroom
Setting appropriate levels throughout the signal chain to maximize signal-to-noise ratio and avoid clipping.
#### Headphone Mixes #Monitoring #PerformerCues
Creating custom monitor mixes for performers during tracking.

### Microphone Techniques #Placement #Selection
Choosing and positioning microphones for optimal sound capture.
#### Close Miking #Isolation #Presence
Placing microphones near the sound source.
#### Distant Miking #Ambience #RoomSound
Placing microphones further from the source to capture room acoustics.
#### Stereo Miking Techniques #Spatial #Image
Using two or more microphones to capture a stereo image.
##### Spaced Pair (A/B) #TimeDifferences #WideImage
Two omni or cardioid mics spaced apart.
##### Coincident Pair (X/Y) #IntensityDifferences #MonoCompatible
Two directional mics with capsules close together, angled apart.
##### Near-Coincident Pair (ORTF, NOS) #CombinedDifferences #RealisticImage
Capsules spaced slightly apart and angled (e.g., ORTF: 17cm, 110 degrees).
##### Mid-Side (M/S) #VariableWidth #MonoCompatible
Uses a cardioid (Mid) and a figure-8 (Side) mic. Width adjustable in post.
#### Multi-Mic Techniques #Drums #Amplifiers
Using multiple microphones on a single source (e.g., drum kit, guitar amplifier). Phase alignment considerations.

### Tracking / Recording #Capture #Multitrack
The process of recording individual tracks or instruments.
#### Overdubbing #Layering #Correction
Recording additional parts onto existing tracks.
#### Comping #BestTakes #Editing
Combining the best parts of multiple takes into one composite performance.
#### Punching In/Out #Correction #Fixes
Re-recording small sections of a track to correct mistakes.
#### Click Tracks / Metronomes #Timing #Synchronization
Providing a timing reference for performers.

## Mixing #Blending #Balancing #Processing
Combining and processing individual tracks into a cohesive stereo (or multichannel) mix.

### Mix Preparation #Organization #Editing
Getting tracks ready for the mixing process.
#### Session Organization #ColorCoding #Grouping
Labeling, color-coding, and grouping tracks for efficient workflow.
#### Editing and Cleaning Tracks #NoiseRemoval #TimingCorrection
Removing unwanted noise, clicks, breaths, and correcting timing issues.
#### Gain Staging (Mix) #Headroom #Levels
Ensuring proper levels within the DAW mix bus.

### Static Mix #Levels #Panning
Setting initial volume levels and stereo placement (panning).
#### Balancing Levels #Volume #Faders
Achieving a basic volume balance between all tracks.
#### Panning #StereoField #Placement
Positioning tracks within the stereo field (left to right).

### EQ in Mixing #ToneShaping #Separation
Using equalization to shape the tonal balance and create separation between tracks.
#### Corrective EQ #ProblemSolving #Cleaning
Removing unwanted frequencies, resonances, or rumble.
#### Creative EQ #Enhancement #Tone
Boosting or cutting frequencies to enhance the character of a sound.
#### Creating Space #FrequencySlotting #MaskingReduction
Using EQ to carve out frequency ranges for each instrument to sit better in the mix.

### Dynamics in Mixing #Control #Impact
Using compression, gating, and limiting to control dynamics and add punch.
#### Controlling Dynamic Range #Compression #Consistency
Using compressors to even out performance dynamics.
#### Adding Punch and Sustain #Compression #AttackRelease
Shaping the attack and release characteristics of sounds.
#### Bus Compression #Glue #Cohesion
Applying compression to groups of tracks (e.g., drum bus, vocal bus) or the entire mix bus.
#### Gating and Expansion #NoiseReduction #Tightening
Cleaning up noise or tightening performances (e.g., gating drums).

### Effects in Mixing #Ambience #Modulation #Interest
Using reverb, delay, chorus, etc., to add space, depth, and character.
#### Creating Depth #Reverb #Delay
Using time-based effects to create a sense of space (front-to-back).
#### Adding Width #StereoEffects #Panning
Using stereo delays, chorusing, or panners to enhance stereo width.
#### Special Effects #CreativeProcessing #EarCandy
Using unique effects for creative purposes.
#### Aux Sends and Returns #EffectsRouting #Efficiency
Using auxiliary buses to send signals to shared effects processors.

### Automation #Movement #DynamicMix
Automating parameters (volume, pan, effects sends, plugin parameters) over time to create a dynamic mix.

### Referencing #Comparison #Perspective
Comparing the mix to commercial reference tracks in a similar genre.

### Mix Bus Processing #FinalPolish #Glue
Applying processing (EQ, compression, saturation, limiting) to the main stereo output bus.

## Mastering #Finalizing #Polishing #Distribution
The final stage of audio production before distribution, preparing the mix for playback systems.

### Mastering Goals #Consistency #Loudness #Translation
Ensuring tonal balance, competitive loudness, and good translation across different playback systems.

### Mastering Environment #Acoustics #Monitoring
Requires highly accurate monitoring and a well-treated acoustic space.

### Mastering Tools #LinearPhaseEQ #MultibandCompression #Limiter
Specialized EQs, compressors (often multiband), limiters, stereo imagers, metering tools.

### Mastering Process #EQ #Dynamics #StereoEnhancement #Loudness
Applying subtle EQ, dynamics control, stereo width adjustments, and maximizing loudness appropriately.
#### Tonal Balance Correction #EQ #Spectrum
Adjusting the overall frequency balance of the mix.
#### Dynamic Range Control #Compression #Density
Controlling the overall dynamics, often with subtle compression.
#### Stereo Image Adjustment #Width #MonoCompatibility
Enhancing or correcting the stereo width, ensuring mono compatibility.
#### Loudness Maximization #Limiting #LUFS
Increasing the perceived loudness to competitive levels using limiters, targeting specific loudness standards (e.g., LUFS - Loudness Units Full Scale).
#### Dithering #QuantizationError #BitDepthReduction
Adding low-level noise before reducing bit depth (e.g., from 24-bit to 16-bit for CD) to minimize quantization distortion.

### Sequencing and Fades #AlbumFlow #Transitions
Arranging tracks in order for an album, setting gaps, and creating fades.

### Metadata and Final Formats #Information #Delivery
Embedding metadata (artist, title, ISRC codes) and exporting to required formats (WAV, MP3, AAC, CD Red Book).
#### File Formats #WAV #AIFF #MP3 #AAC
Different digital audio file formats for various applications.
#### Codecs #Compression #Lossy #Lossless
Algorithms used for compressing audio data (e.g., MP3, AAC are lossy; FLAC, ALAC are lossless).
#### Loudness Standards #Streaming #Broadcast #LUFS
Platform-specific loudness targets (Spotify, Apple Music, YouTube, TV broadcast).

## Live Sound Reinforcement #LiveAudio #PA #Concerts
Amplifying and mixing sound for live performances.

### System Components #FOH #Monitors #Speakers #Amps
Front of House (FOH) console, monitor console/system, PA loudspeakers, amplifiers, microphones, stage cabling.
#### FOH (Front of House) #AudienceMix #MainSystem
The main mixing position and system serving the audience.
#### Monitor System #StageSound #Performers
Providing individual mixes for performers on stage (wedges or in-ear monitors - IEMs).
#### PA System Design #Coverage #SpeakerPlacement
Designing loudspeaker systems for even coverage and optimal sound quality in a venue.
#### Wireless Systems #Microphones #IEMs #RFManagement
Using radio frequency (RF) for wireless microphones and in-ear monitors. Frequency coordination is crucial.

### Live Mixing Workflow #Soundcheck #ShowMixing
The process of setting up and mixing a live show.
#### Soundcheck #LevelSetting #MonitorMixes #EQing
Setting levels, EQ, dynamics, effects, and monitor mixes before the performance.
#### Mixing the Show #DynamicAdjustments #FeedbackControl
Making real-time adjustments during the performance.
#### Feedback Elimination #EQ #MicPlacement #GainControl
Identifying and eliminating acoustic feedback (howling sounds).

### Stage Management #InputList #StagePlot #Communication
Organizing the stage setup, inputs, and communication with performers.

## Audio Post-Production #Film #TV #Games #SoundDesign
Audio engineering for visual media.

### Dialogue Editing #Clarity #Intelligibility #Sync
Cleaning up, editing, and synchronizing recorded dialogue. Noise reduction, ADR matching.

### ADR (Automated Dialogue Replacement) / Looping #DialogueReplacement #StudioRecording
Re-recording dialogue in a studio environment, synchronized to picture.

### Sound Design #CreatingSounds #Atmosphere #Effects
Creating custom sound effects and ambiences to enhance the visuals and story. Synthesizers, samplers, field recording.

### Foley #SoundEffects #Performance #Sync
Creating and recording sound effects in synchronization with the picture, often performed live in a studio (footsteps, cloth movement, props).

### Music Editing and Mixing (for Picture) #Score #SourceMusic #Sync
Editing and mixing underscore music and source music cues against picture.

### Surround Sound and Immersive Audio #Multichannel #SpatialAudio #DolbyAtmos
Mixing audio in multichannel formats (5.1, 7.1, Dolby Atmos, DTS:X) for immersive experiences.

### Final Mix / Dubbing #StemMixing #Deliverables
Combining dialogue, music, and effects (DME stems) into the final soundtrack. Creating deliverables for different formats.

## Audio Repair and Restoration #Cleaning #Archiving #Forensics
Fixing problematic audio recordings or restoring old/damaged media.

### Noise Reduction #Hiss #Hum #BroadbandNoise
Removing unwanted background noise using specialized software (e.g., iZotope RX).

### Click, Pop, and Crackle Removal #Vinyl #DigitalErrors
Repairing impulsive noises often found on vinyl records or due to digital glitches.

### Hum and Buzz Removal #ElectricalNoise #GroundLoops
Removing noise caused by electrical interference (e.g., 50/60 Hz hum).

### Distortion Repair #Clipping #Overload
Attempting to repair audio that was recorded too loud and clipped.

### Forensic Audio #Analysis #Enhancement #Legal
Analyzing and enhancing audio for legal or investigative purposes.

## Music Production #Creation #Arrangement #Workflow
Overlaps significantly with recording/mixing but focuses more on the creative and arrangement aspects.

### Songwriting and Composition #MusicTheory #Structure
Creating the musical and lyrical content.

### Arrangement #Instrumentation #Structure
Deciding how instruments and parts are organized within the song.

### Beat Making #Rhythm #Programming #Sampling
Creating rhythmic foundations, often using drum machines, samplers, and DAWs.

### MIDI Sequencing #VirtualInstruments #Editing
Recording, editing, and arranging Musical Instrument Digital Interface (MIDI) data to control synthesizers and samplers.

### Sampling #AudioManipulation #Loops #Instruments
Using excerpts from existing sound recordings as instruments or elements in a new piece.

### Vocal Production #Tuning #Timing #Effects
Techniques specific to recording, editing, and mixing vocals.

## Studio Design and Acoustics #Environment #Treatment #Isolation
Designing physical spaces for optimal recording and listening.

### Sound Isolation #Soundproofing #Construction
Preventing sound from entering or leaving a space. Mass, damping, decoupling.

### Room Shape and Dimensions #Modes #ReflectionControl
Designing room geometry to minimize problematic acoustic resonances.

### Acoustic Treatment Materials #Absorption #Diffusion #BassTraps
Selecting and placing materials like fiberglass panels, diffusers, and bass traps to control reflections and reverberation.

### Studio Wiring and Patchbays #Connectivity #SignalRouting
Designing efficient and clean audio signal routing within a studio.

## Business and Career Aspects #Industry #Professionalism #Networking
The professional side of audio engineering.

### Roles in Audio #RecordingEngineer #MixingEngineer #MasteringEngineer #LiveSoundEngineer #PostProduction #SoundDesigner
Different specializations within the field.
### Freelancing vs. Staff Positions #Employment #BusinessModels
Different ways audio engineers work.
### Studio Management #BusinessOperations #ClientRelations
Running a recording studio as a business.
### Networking and Portfolio Building #CareerDevelopment #Connections
Building professional relationships and showcasing work.
### Contracts and Rates #Legal #Pricing
Understanding standard agreements and setting professional rates.
### Continuing Education #Technology #Trends #Learning
Staying updated with evolving technology and techniques.

# Librosa #Python #Audio #MIR
Librosa is a Python package for music and audio analysis. It provides the building blocks necessary to create music information retrieval (MIR) systems.

## Core Concepts & Philosophy #Fundamentals #Design
Underlying principles and design goals of the Librosa library.

### Audio Representation #DataModel #Signal
How audio is represented internally, typically as NumPy arrays.
Focus on time-domain (waveforms) and time-frequency representations.

### Lazy Evaluation #Efficiency #Computation
Concept of deferred computation, especially for feature extraction pipelines.

### Modularity #API #Structure
Organization of the library into distinct sub-modules (e.g., `core`, `feature`, `beat`, `display`).

## Installation & Setup #GettingStarted #Environment
How to install Librosa and its dependencies.

### Installation Methods #Pip #Conda
Using package managers like pip and conda.
`pip install librosa`
`conda install -c conda-forge librosa`

### Dependencies #Requirements #Libraries
Core dependencies like NumPy, SciPy, Scikit-learn, Matplotlib, SoundFile/Audioread.
Optional dependencies for extended functionality (e.g., Numba for performance).

### Environment Configuration #BestPractices #Setup
Recommendations for virtual environments. Potential issues with audio backends (e.g., ffmpeg).

## Audio Input/Output (I/O) #Loading #Saving #Core
Reading audio files from disk and basic audio handling.

### Loading Audio Files #CoreFunction #IO
Using `librosa.load()` as the primary function.
`librosa.load(path, sr=None, mono=True, offset=0.0, duration=None)`

#### Sample Rate (sr) #Parameter #Resampling
Handling native sample rates and resampling audio on load. Default is 22050 Hz.

#### Mono/Stereo Conversion #Parameter #Channels
Option to convert audio to mono.

#### Offset and Duration #Parameter #Slicing
Loading specific segments of an audio file.

### Streaming Audio #LargeFiles #Memory
Processing large audio files block by block using `librosa.stream`.

### Writing Audio Files #Export #Saving
Requires external libraries like `soundfile`. Librosa focuses on analysis, not direct saving.
`import soundfile as sf`
`sf.write('output.wav', y, sr)`

## Time-Domain Audio Processing #Waveform #SignalProcessing
Operations performed directly on the audio waveform (amplitude vs. time).

### Waveform Manipulation #Core #Utilities
Basic operations like slicing, padding (`librosa.util.pad_center`), reversing.

### Amplitude Envelope #Energy #Dynamics
Tracking the overall loudness contour.
`librosa.amplitude_to_db`
`librosa.feature.rms` (can be seen as time-domain energy).

### Zero-Crossing Rate #Feature #Timbre
Rate at which the signal changes sign. Related to noisiness/tonality.
`librosa.feature.zero_crossing_rate`

## Spectral Representations #FrequencyDomain #STFT #Core
Transforming audio from the time domain to the time-frequency domain.

### Short-Time Fourier Transform (STFT) #CoreFunction #Spectrogram
The fundamental tool for time-frequency analysis.
`librosa.stft(y, n_fft=2048, hop_length=512, win_length=None, window='hann')`

#### STFT Parameters #Configuration #AnalysisWindow
`n_fft`: FFT window size (frequency resolution).
`hop_length`: Step size between frames (time resolution).
`window`: Window function applied to each frame.

#### Magnitude and Phase #Components #Complex
STFT output is complex-valued. Separating magnitude (amplitude) and phase.
`S = librosa.stft(y)`
`magnitude = np.abs(S)`
`phase = np.angle(S)`

#### Inverse STFT (ISTFT) #Reconstruction #Synthesis
Reconstructing the time-domain signal from the complex STFT.
`librosa.istft(S)`

### Constant-Q Transform (CQT) #FrequencyScale #Music
Time-frequency representation with logarithmically spaced frequency bins, suitable for musical analysis.
`librosa.cqt(y, sr, hop_length=512)`
`librosa.hybrid_cqt`
`librosa.pseudo_cqt`

### Variable-Q Transform (VQT) #FrequencyScale #Adaptive
A more flexible version of CQT allowing variable Q-factors per frequency band.
`librosa.vqt(y, sr, hop_length=512)`

## Feature Extraction #MIR #Descriptors #Analysis
Calculating high-level descriptors from audio signals, often based on spectral representations.

### Spectrogram Features #Spectral #Visual
Features derived directly from spectrograms.

#### Mel Spectrogram #AuditoryScale #Perception
Spectrogram warped according to the Mel scale, mimicking human auditory perception.
`librosa.feature.melspectrogram(y=y, sr=sr, S=None, n_fft=2048, hop_length=512, n_mels=128)`

#### Log-Power Spectrogram #Decibel #Amplitude
Converting magnitude/Mel spectrogram to a decibel scale.
`librosa.power_to_db(S**2)`
`librosa.amplitude_to_db(S)`

### Mel-Frequency Cepstral Coefficients (MFCCs) #Timbre #Speech #Music
Compact representation of the spectral envelope, widely used in speech and music processing.
`librosa.feature.mfcc(y=y, sr=sr, S=None, n_mfcc=20, dct_type=2, norm='ortho')`

### Chroma Features #Harmony #PitchClass
Representing the distribution of energy across the 12 pitch classes (C, C#, D, ...). Useful for harmonic analysis.
`librosa.feature.chroma_stft`
`librosa.feature.chroma_cqt`
`librosa.feature.chroma_cens` (energy normalized statistics)

### Tonal Centroid Features (Tonnetz) #Harmony #Tonality
Features related to tonal space, representing harmonic relationships.
`librosa.feature.tonnetz(y=y, sr=sr, chroma=None)`

### Spectral Contrast #Timbre #PeaksValleys
Measures the difference between spectral peaks and valleys, related to harmonicity/noisiness.
`librosa.feature.spectral_contrast(y=y, sr=sr, S=None)`

### Other Spectral Features #Timbre #Shape
Features describing the shape of the spectrum.
`librosa.feature.spectral_centroid` (brightness)
`librosa.feature.spectral_bandwidth`
`librosa.feature.spectral_rolloff`
`librosa.feature.spectral_flatness`

### Root Mean Square (RMS) Energy #Dynamics #Loudness
Frame-wise energy calculation.
`librosa.feature.rms(y=y, S=None, frame_length=2048, hop_length=512)`

### Feature Statistics and Deltas #Dynamics #Context
Calculating derivatives (deltas) and delta-deltas to capture temporal dynamics.
`librosa.feature.delta(data, width=9, order=1)`
Aggregating features over time (mean, std, min, max).

## Tempo and Beat Tracking #Rhythm #Time
Analyzing the rhythmic structure of music.

### Tempo Estimation #BPM #Globally
Estimating the overall beats per minute (BPM).
`librosa.beat.tempo(y=y, sr=sr, onset_envelope=None, hop_length=512)`

### Beat Tracking #BeatDetection #Events
Identifying the time locations of individual beats.
`tempo, beats = librosa.beat.beat_track(y=y, sr=sr, onset_envelope=None, hop_length=512)`

### Onset Detection #NoteStarts #Events
Finding the starting times of note or percussive events.
`librosa.onset.onset_detect(y=y, sr=sr, onset_envelope=None, hop_length=512)`
`o_env = librosa.onset.onset_strength(y=y, sr=sr)`

### Tempogram #RhythmVariation #Visualization
Representing local tempo variations over time.
`librosa.feature.tempogram(y=y, sr=sr, onset_envelope=None, hop_length=512)`

## Pitch and Tuning Estimation #Melody #Frequency
Analyzing the fundamental frequency (F0) of audio.

### Fundamental Frequency (F0) Estimation #PitchTracking #Melody
Estimating the F0 contour over time.
`f0, voiced_flag, voiced_probs = librosa.pyin(y, fmin=librosa.note_to_hz('C2'), fmax=librosa.note_to_hz('C7'))`

### Pitch Tuning Offset #ConcertPitch #Deviation
Estimating the overall deviation from standard tuning (e.g., A440).
`librosa.estimate_tuning(y=y, sr=sr)`

## Source Separation #Decomposition #SignalProcessing
Separating audio into constituent components.

### Harmonic-Percussive Source Separation (HPSS) #CoreFunction #Separation
Decomposing audio into harmonic (tonal) and percussive (transient) parts.
`y_harmonic, y_percussive = librosa.effects.hpss(y, margin=1.0)`

### Median Filtering #SeparationTechnique #Robust
Using median filters in the time-frequency domain for separation.

### Nearest Neighbor Filtering #Decomposition #Advanced
Using non-negative matrix factorization (NMF)-like ideas.
`librosa.decompose.nn_filter`

## Audio Effects and Modification #Synthesis #Manipulation
Applying transformations to audio signals (often requires reconstruction via ISTFT).

### Time Stretching #Duration #PlaybackRate
Changing the duration of audio without affecting pitch.
`y_stretched = librosa.effects.time_stretch(y, rate=2.0)`

### Pitch Shifting #Frequency #Transpose
Changing the pitch of audio without affecting duration.
`y_shifted = librosa.effects.pitch_shift(y, sr, n_steps=4)`

### Pre-emphasis Filtering #SignalProcessing #Filter
Applying a high-pass filter to boost higher frequencies.
`y_preemphasized = librosa.effects.preemphasis(y)`

### De-emphasis Filtering #SignalProcessing #Filter
Applying a low-pass filter, inverse of pre-emphasis.
`y_deemphasized = librosa.effects.deemphasis(y_preemphasized)`

## Visualization #Plotting #Display
Tools for visualizing audio waveforms and features. Requires `matplotlib`.

### Waveform Plotting #TimeDomain #Amplitude
Displaying the raw audio signal over time.
`import librosa.display`
`librosa.display.waveshow(y, sr=sr)`

### Spectrogram Plotting #TimeFrequency #Heatmap
Visualizing STFT, Mel spectrograms, CQT, etc.
`S_db = librosa.amplitude_to_db(np.abs(S), ref=np.max)`
`librosa.display.specshow(S_db, sr=sr, hop_length=hop_length, x_axis='time', y_axis='log')` # or 'mel', 'hz', 'cqt_note'

### Feature Visualization #Plotting #Analysis
Displaying Chroma features, Tempograms, etc.
`librosa.display.specshow(chroma, sr=sr, hop_length=hop_length, x_axis='time', y_axis='chroma')`
`librosa.display.specshow(tempogram, sr=sr, hop_length=hop_length, x_axis='time', y_axis='tempo')`

## Utilities (`librosa.util`) #Helpers #Convenience
Various helper functions for common tasks.

### Conversion Functions #Units #Scales
Converting between different scales and units.
`librosa.hz_to_mel`, `librosa.mel_to_hz`
`librosa.hz_to_note`, `librosa.note_to_hz`
`librosa.amplitude_to_db`, `librosa.db_to_amplitude`
`librosa.samples_to_time`, `librosa.time_to_samples`
`librosa.frames_to_time`, `librosa.time_to_frames`

### Padding and Framing #SignalProcessing #Windowing
Functions for padding signals and creating analysis frames.
`librosa.util.pad_center`
`librosa.util.frame`

### Normalization #Scaling #Preprocessing
Scaling data to a specific range or standard deviation.
`librosa.util.normalize`

### Finding Files #Dataset #Management
Locating example audio files included with Librosa.
`librosa.util.example_audio_file()` (Deprecated, use `librosa.ex()`)
`librosa.ex(key)` # e.g., 'trumpet', 'nutcracker'

## Performance and Optimization #Efficiency #Numba
Considerations for speeding up Librosa computations.

### Numba Integration #Acceleration #JIT
Using the Numba library for Just-In-Time (JIT) compilation of critical functions. Librosa uses it internally.

### Memory Management #LargeData #Efficiency
Strategies for handling large audio files or feature matrices. Using `librosa.stream`.

### Choosing Parameters #Tradeoffs #Resolution
Understanding the impact of parameters like `n_fft`, `hop_length`, `n_mels` on speed and accuracy.

## Advanced Topics & Applications #MIR #Research
More specialized use cases and related fields.

### Music Information Retrieval (MIR) #Application #Field
Using Librosa as a core tool for tasks like genre classification, mood detection, music similarity, cover song identification, etc.

### Sequence Modeling #DeepLearning #Temporal
Using Librosa features as input to recurrent neural networks (RNNs), LSTMs, Transformers for sequence analysis.

### Audio Synthesis #Generation #Creative
Using Librosa components (like ISTFT, Griffin-Lim) as part of audio generation pipelines.

### Real-time Processing #LowLatency #Streaming
Challenges and techniques for applying Librosa concepts in real-time scenarios (often requires optimization beyond standard Librosa).

## Integration with Other Libraries #Ecosystem #Interoperability
How Librosa works with other common Python scientific libraries.

### NumPy #CoreDependency #Arrays
Fundamental reliance on NumPy for numerical operations and array representation.

### SciPy #SignalProcessing #Algorithms
Leveraging SciPy for core signal processing algorithms (filtering, interpolation, etc.).

### Scikit-learn #MachineLearning #Modeling
Using Librosa features as input for Scikit-learn machine learning models. Integration via feature vectors.

### Matplotlib #Visualization #Plotting
Default backend for `librosa.display`.

### SoundFile / Audioread #IO #Backend
Libraries used under the hood by `librosa.load` for file reading.

### PyTorch / TensorFlow #DeepLearning #AI
Using Librosa for data preprocessing and feature extraction in deep learning workflows for audio.

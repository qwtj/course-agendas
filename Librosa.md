# I. Introduction to Librosa

## Understanding Librosa's Purpose and Functionality

### Defining Librosa
A Python library for analyzing and processing audio and music.

### Key Features of Librosa
Feature extraction, time-domain and frequency-domain analysis, audio manipulation.

### Installing Librosa
Using `pip install librosa`.

## Loading and Playing Audio Files

### Loading Audio with `librosa.load()`
Understanding the parameters like `sr` (sampling rate) and `mono` (mono conversion).

### Accessing Audio Data and Sample Rate
Accessing the audio time series (`y`) and sample rate (`sr`) returned by `librosa.load()`.
```python
import librosa

y, sr = librosa.load('audio.wav')
print(f"Sample Rate: {sr}")
print(f"Audio Data: {y}")
```

### Playing Audio using `IPython.display.Audio`
Visualizing and playing audio files within a Jupyter Notebook.
```python
import IPython.display as ipd
ipd.Audio(y, rate=sr)
```

# II. Basic Audio Analysis

## Time-Domain Analysis

### Amplitude Envelope
Calculating and visualizing the amplitude envelope of an audio signal.

### Zero-Crossing Rate
Understanding and calculating the zero-crossing rate using `librosa.feature.zero_crossing_rate()`.

### Root Mean Square (RMS) Energy
Calculating RMS energy using `librosa.feature.rms()`.

## Frequency-Domain Analysis

### Short-Time Fourier Transform (STFT)
Understanding STFT and its role in converting time-domain signals to frequency-domain. Using `librosa.stft()`.

### Spectrogram
Generating spectrograms from STFT data using `librosa.amplitude_to_db()` and `librosa.display.specshow()`.
```python
import matplotlib.pyplot as plt
import librosa.display

D = librosa.stft(y)
S_db = librosa.amplitude_to_db(abs(D), ref=np.max)
fig, ax = plt.subplots()
img = librosa.display.specshow(S_db, sr=sr, x_axis='time', y_axis='log', ax=ax)
ax.set_title('Spectrogram Example', fontsize=20)
fig.colorbar(img, ax=ax, format=f'%0.2f dB')
plt.show()
```

### Frequency Spectrum Visualization
Visualizing the frequency spectrum at a specific time frame.

# III. Feature Extraction

## Mel-Frequency Cepstral Coefficients (MFCCs)

### Understanding MFCCs
The concept and importance of MFCCs in audio analysis.

### Extracting MFCCs using `librosa.feature.mfcc()`
Exploring the parameters like `n_mfcc`, `sr`, and `n_fft`.
```python
mfccs = librosa.feature.mfcc(y=y, sr=sr, n_mfcc=40)
print(mfccs.shape)
```

### Visualizing MFCCs
Using `librosa.display.specshow()` to visualize the MFCCs.

## Chroma Features

### Understanding Chroma Features
Representing the 12 different pitch classes.

### Extracting Chroma Features using `librosa.feature.chroma_stft()`
Calculating Chroma features from the STFT.

### Visualizing Chroma Features
Displaying the chroma representation.

## Spectral Contrast

### Understanding Spectral Contrast
Measures the spectral peaks and valleys in each frame.

### Extracting Spectral Contrast using `librosa.feature.spectral_contrast()`

### Visualizing Spectral Contrast

## Feature Scaling

### Why feature scaling is important.
Standardization and Normalization.

### Scaling Using `sklearn.preprocessing`
Using `StandardScaler` or `MinMaxScaler` to scale features before training a model.
```python
from sklearn.preprocessing import StandardScaler

scaler = StandardScaler()
mfccs_scaled = scaler.fit_transform(mfccs.T).T
```

# IV. Audio Manipulation

## Time Stretching

### Understanding Time Stretching
Changing the duration of an audio signal without affecting its pitch.

### Time Stretching with `librosa.effects.time_stretch()`
Adjusting the `rate` parameter to control the stretching factor.

```python
y_stretched = librosa.effects.time_stretch(y, rate=2.0) # speed up by 2x
ipd.Audio(y_stretched, rate=sr)
```

## Pitch Shifting

### Understanding Pitch Shifting
Changing the pitch of an audio signal without affecting its duration.

### Pitch Shifting with `librosa.effects.pitch_shift()`
Adjusting the `n_steps` parameter to control the pitch shift in semitones.
```python
y_shifted = librosa.effects.pitch_shift(y, sr=sr, n_steps=4) # increase pitch by 4 semitones
ipd.Audio(y_shifted, rate=sr)
```

## Harmonic and Percussive Source Separation (HPSS)

### Understanding HPSS
Separating audio into harmonic and percussive components.

### Separating Audio with `librosa.decompose.hpss()`
Using default parameters and visualizing or processing the separated components.
```python
y_harmonic, y_percussive = librosa.decompose.hpss(y)
ipd.Audio(y_harmonic, rate=sr) # listen to the harmonic part.
ipd.Audio(y_percussive, rate=sr) # listen to the percussive part.
```

# V. Applications and Projects

## Music Genre Classification

### Dataset Preparation
Loading and preprocessing audio data from a genre dataset (e.g., GTZAN).

### Feature Extraction for Genre Classification
Extracting relevant features (MFCCs, Chroma, Spectral Contrast) and preparing data.

### Building and Training a Classification Model
Using machine learning models (e.g., Support Vector Machines, Random Forests) for genre classification with scikit-learn.

### Evaluating Model Performance
Using metrics like accuracy, precision, recall, and F1-score.

## Audio Event Detection

### Preparing Audio Data for Event Detection
Segmenting audio into smaller clips and labeling events.

### Feature Extraction for Event Detection
Extracting features relevant to the audio events.

### Training an Event Detection Model
Using classification models to identify specific events in the audio.

## Beat Tracking

### Using `librosa.beat.beat_track()`
Understanding parameters like `sr`, `onset_envelope`, and `hop_length`.

### Accessing Beat Frames and Times
Retrieving beat frame indices and corresponding times.

### Tempo Estimation
Understanding and interpreting the estimated tempo.
```python
tempo, beat_frames = librosa.beat.beat_track(y=y, sr=sr)
print(f"Estimated Tempo: {tempo}")
beat_times = librosa.frames_to_time(beat_frames, sr=sr)
print(f"Beat Times: {beat_times}")
```

# I. Introduction to Fourier Analysis

## Understanding Signals and Systems

### Time-Domain Representation

### Frequency-Domain Representation

## Review of Complex Numbers

### Complex Number Arithmetic: Addition, Subtraction, Multiplication, Division

### Euler's Formula: `e^(ix) = cos(x) + i sin(x)`

### Complex Conjugate and Magnitude

# II. The Fourier Series

## Periodic Functions

### Definition of Periodicity: `f(t) = f(t + T)`

### Examples: Sine waves, square waves, triangle waves

## Fourier Series Representation

### Synthesis Equation: `f(t) = a_0 + Σ [a_n cos(nωt) + b_n sin(nωt)]`
*   Where `ω = 2π/T` is the fundamental frequency.

### Analysis Equations: Calculating Coefficients

*   `a_0 = (1/T) ∫ f(t) dt` (from 0 to T)
*   `a_n = (2/T) ∫ f(t) cos(nωt) dt` (from 0 to T)
*   `b_n = (2/T) ∫ f(t) sin(nωt) dt` (from 0 to T)

## Complex Exponential Fourier Series

### Expressing Cosine and Sine using Euler's Formula

### Synthesis Equation: `f(t) = Σ c_n e^(jnωt)`

### Analysis Equation: `c_n = (1/T) ∫ f(t) e^(-jnωt) dt` (from -T/2 to T/2)

## Properties of Fourier Series

### Linearity

### Time Shifting

### Time Scaling

### Differentiation

### Integration

## Gibbs Phenomenon

### Understanding Overshoot at Discontinuities

### Minimizing the Gibbs Phenomenon

# III. The Fourier Transform

## From Fourier Series to Fourier Transform

### Extending the Period to Infinity

### Definition of the Fourier Transform

*   `F(ω) = ∫ f(t) e^(-jωt) dt` (from -∞ to ∞)

### Definition of the Inverse Fourier Transform

*   `f(t) = (1/2π) ∫ F(ω) e^(jωt) dω` (from -∞ to ∞)

## Common Fourier Transform Pairs

### Impulse Function: `δ(t) ↔ 1`

### Rectangular Function: `rect(t) ↔ sinc(ω/2)`

### Gaussian Function: `e^(-at^2) ↔ e^(-ω^2/4a)`

## Properties of the Fourier Transform

### Linearity

### Time Shifting

### Frequency Shifting

### Time Scaling

### Differentiation in Time Domain

### Differentiation in Frequency Domain

### Convolution Theorem: `f(t) * g(t) ↔ F(ω)G(ω)`

### Multiplication Theorem: `f(t)g(t) ↔ (1/2π)[F(ω) * G(ω)]`

### Parseval's Theorem

## Applications of the Fourier Transform

### Signal Analysis

### Image Processing

### Solving Differential Equations

### System Identification

# IV. Discrete Fourier Transform (DFT)

## Sampling Theorem

### Nyquist Rate

### Aliasing

## Discrete-Time Signals

### Discrete-Time Fourier Transform (DTFT)

### Definition of DFT

*   `X[k] = Σ x[n] e^(-j2πkn/N)` (from n=0 to N-1)

### Definition of Inverse DFT (IDFT)

*   `x[n] = (1/N) Σ X[k] e^(j2πkn/N)` (from k=0 to N-1)

## Properties of DFT

### Linearity

### Circular Shift

### Duality

## Fast Fourier Transform (FFT)

### Radix-2 FFT Algorithm

### Computational Complexity

### Applications of FFT

# V. Advanced Topics

## Windowing Techniques

### Rectangular Window

### Hamming Window

### Hanning Window

### Blackman Window

## Spectrograms

### Time-Frequency Analysis

### Applications in Audio Processing

## Applications in Image Processing
### Image Enhancement
### Image Compression

## Z-Transform (Brief Overview)
### Relation to DFT
### Region of Convergence (ROC)

# I. Introduction to Information Theory

## Understanding the Concept of Information

### Defining Information
*   Information as reduction of uncertainty.
*   Relation to surprise.

### Units of Information
*   Bits, nats, hartleys.
*   Conversions between units.

## Probability and Random Variables

### Probability Distributions
*   Discrete and continuous distributions.
*   Examples: Bernoulli, Binomial, Gaussian.

### Entropy

### Definition of Entropy
*   Measuring uncertainty of a random variable.
*   Formula: `H(X) = - Σ p(x) log₂ p(x)`.

### Properties of Entropy
*   Non-negativity, upper bound.
*   Entropy of deterministic variables.

# II. Source Coding

## Kraft Inequality

### Understanding Kraft Inequality
*   Condition for uniquely decodable codes.
*   Formula: `Σ 2^(-lᵢ) ≤ 1`, where `lᵢ` is the length of the i-th codeword.

### Implications of Kraft Inequality
*   Existence of prefix codes.

## Huffman Coding

### Algorithm for Huffman Coding
*   Constructing optimal prefix codes.
*   Steps: sorting, merging, assigning codes.

### Example: Building a Huffman Code
```
Symbols: A, B, C, D
Probabilities: 0.4, 0.3, 0.2, 0.1

1. Sort: D(0.1), C(0.2), B(0.3), A(0.4)
2. Merge D & C: DC(0.3), B(0.3), A(0.4)
3. Merge DC & B: DCB(0.6), A(0.4)
4. Merge DCB & A: DCBA(1.0)

Codes: A(1), B(01), C(001), D(000)
```

### Optimality of Huffman Coding
*   Achieving minimum average code length.

## Shannon-Fano Coding

### Algorithm for Shannon-Fano Coding
*   Dividing symbols based on probabilities.

### Comparison with Huffman Coding
*   Suboptimality in certain cases.

# III. Channel Coding

## Channel Capacity

### Definition of Channel Capacity
*   Maximum rate of reliable communication over a channel.
*   Formula: `C = max I(X;Y)`, where I(X;Y) is mutual information.

### Discrete Memoryless Channels (DMC)
*   Definition and properties.

### Symmetric Channels
*   Simplifying capacity calculations.

## Noisy Channel Coding Theorem

### Statement of the Theorem
*   Achievable rates approaching capacity.
*   Implications for reliable communication.

### Proof Outline
*   Random coding argument.

## Error Correction Codes

### Linear Block Codes
*   Generator and parity-check matrices.
*   Examples: Hamming codes.

### Cyclic Codes
*   Polynomial representation.
*   Encoding and decoding.

# IV. Rate Distortion Theory

## Rate Distortion Function

### Definition of Rate Distortion Function
*   Minimum rate required to achieve a certain distortion level.
*   `R(D) = min I(X; Y)` subject to `E[d(X, Y)] ≤ D`.

### Distortion Measures
*   Hamming distance, squared error.

### Properties of Rate Distortion Function
*   Monotonicity, convexity.

## Gaussian Source

### Rate Distortion Function for Gaussian Source
*   Analytical expression for `R(D)`.
*   Water-filling interpretation.

# V. Advanced Topics

## Information Theory and Statistics

### Kullback-Leibler Divergence (Relative Entropy)
*   Measuring the difference between probability distributions.
*   Formula: `D(P||Q) = Σ P(x) log(P(x)/Q(x))`.

### Mutual Information
*   Quantifying the amount of information one random variable contains about another.
*   Formula: `I(X; Y) = Σ Σ p(x,y) log(p(x,y) / (p(x)p(y)))`.

## Network Information Theory

### Multiple Access Channel (MAC)
*   Capacity region.

### Broadcast Channel
*   Degraded broadcast channel.

### Relay Channel
*   Strategies for relaying information.

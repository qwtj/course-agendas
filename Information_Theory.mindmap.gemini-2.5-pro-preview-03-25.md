# Information Theory #Overview #FieldOfStudy
A branch of applied mathematics, electrical engineering, and computer science involving the quantification, storage, and communication of digital information.

## History and Foundations #History #Development #Pioneers
Traces the origins and key figures in the development of information theory.
### Early Contributions #Precursors #Ideas
Work predating Shannon's formalization.
#### Nyquist and Hartley #Engineers #EarlyWork
Contributions related to signal transmission and quantifying information.
### Claude Shannon #Founder #SeminalWork
Often called the "father of information theory".
#### "A Mathematical Theory of Communication" (1948) #Publication #Landmark
The foundational paper establishing the field. [7, 15]
#### Shannon's Communication Model #Model #Framework
Describes the basic components of a communication system (source, encoder, channel, decoder, receiver, noise). [1]
### Post-Shannon Developments #Evolution #Expansion
Further development and expansion of the theory.

## Core Concepts #Fundamentals #Basics #Definitions
Fundamental quantities and ideas used throughout information theory. [1, 2, 11, 14]
### Information Measure #Quantification #Measurement
Defining and measuring information. [21]
#### Uncertainty and Information #Concept #Relationship
Information is viewed as the resolution of uncertainty. [2, 16]
#### Self-Information #Measure #Event
Information gained from observing a single event.
### Entropy (H) #Uncertainty #Measure #Randomness
The average amount of information or uncertainty inherent in a random variable's possible outcomes. [2, 4, 11, 14, 16]
#### Definition and Formula #Math #Calculation
Mathematical definition based on probabilities (e.g., H(X) = -Σ p(x) log p(x)). [11]
#### Properties of Entropy #Characteristics #Axioms
Non-negativity, maximum value for uniform distribution, etc.
#### Joint Entropy #Measure #MultipleVariables
Entropy of a pair or set of random variables. [2]
#### Conditional Entropy #Measure #Dependence
Entropy of a random variable given knowledge of another. [2]
#### Entropy Rate #Measure #Process
Entropy per symbol for stochastic processes (e.g., Markov chains). [5, 15]
### Mutual Information (I) #Dependence #Correlation #Measure
Measures the amount of information one random variable contains about another; the reduction in uncertainty of one variable due to knowledge of the other. [2, 6, 8, 15, 18]
#### Definition and Formula #Math #Calculation
I(X;Y) = H(X) - H(X|Y) = H(Y) - H(Y|X) = H(X) + H(Y) - H(X,Y).
#### Properties of Mutual Information #Characteristics #Relationships
Symmetry, non-negativity, relation to entropy.
#### Conditional Mutual Information #Measure #Context
Mutual information between two variables given a third. [2]
#### Pointwise Mutual Information (PMI) #Measure #SpecificEvents
Measures association between specific outcomes of random variables. [2]
### Relative Entropy (Kullback-Leibler Divergence) #Measure #Difference #Distance
Measures the difference between two probability distributions. [2, 5]
#### Definition and Properties #Math #Characteristics
Non-symmetric measure of how one distribution diverges from a second expected distribution.
#### Relation to Mutual Information #Connection #Formulation
Mutual information as KL divergence between joint and product-of-marginals distributions.
### Other Information Measures #Extensions #Variations
#### Rényi Entropy #Generalization #Entropy
A family of entropy measures generalizing Shannon entropy. [2]
#### Tsallis Entropy #Generalization #Nonextensive
Another generalization often used in statistical mechanics. [2]
#### Differential Entropy #Continuous #Measure
Extension of entropy to continuous random variables. [2, 5, 6, 15]
#### f-Divergences #Generalization #Distance
A broad class of measures for the difference between distributions, including KL divergence. [12, 15, 18, 19]

## Source Coding (Data Compression) #Compression #Efficiency #SourceModel
The process of encoding information using fewer bits than the original representation. [2, 3, 4, 5, 6, 11, 13, 18, 19]
### Lossless Compression #Exact #Reversible
Allows the original data to be perfectly reconstructed from the compressed data. [2, 5, 13]
#### Source Coding Theorem #Shannon #Limit #Fundamental
Establishes the fundamental limit on lossless compression (entropy H). [6]
#### Prefix Codes #Coding #Property
Codes where no codeword is a prefix of another (e.g., Huffman).
#### Huffman Coding #Algorithm #VariableLength #Optimal
A greedy algorithm for finding optimal prefix codes. [4, 6]
#### Arithmetic Coding #Algorithm #RangeEncoding
Encodes entire message into a single fraction. [5]
#### Lempel-Ziv Algorithms (LZ77, LZ78, LZW) #Dictionary #Algorithm
Family of universal compression algorithms based on dictionaries. [4, 5]
#### Universal Source Coding #Adaptive #UnknownDistribution
Compression techniques that work well without knowing the source statistics beforehand. [13, 18, 19, 20]
#### Kolmogorov Complexity (Algorithmic Information Theory) #Complexity #DescriptionLength
Measures the complexity of an object by the length of the shortest computer program that produces it as output. [2, 13, 16, 20]
### Lossy Compression #Approximation #Irreversible
Compresses data by discarding some information; reconstruction is an approximation. [2, 5, 13]
#### Rate-Distortion Theory #Tradeoff #Fidelity #LossyLimit
Defines the tradeoff between compression rate and distortion (loss of fidelity). [5, 6, 15, 18, 19, 20]
#### Distortion Measures #Metric #Error
Quantifies the difference between original and reconstructed data (e.g., Mean Squared Error).
#### Rate-Distortion Function R(D) #Function #Limit
Minimum rate required to achieve a given maximum distortion D.

## Channel Coding (Error Correction) #Reliability #Noise #Correction
Techniques for adding redundancy to data to detect and correct errors introduced during transmission over a noisy channel. [2, 3, 4, 9, 13, 15, 18, 19]
### Noisy Channel Model #Communication #Errors #Model
Mathematical representation of a communication channel affected by noise. [1]
#### Types of Channels #Classification #Examples
Binary Symmetric Channel (BSC), Gaussian Channel, Erasure Channel. [15]
### Channel Capacity (C) #Limit #Rate #Maximum
The maximum rate at which information can be transmitted reliably (with arbitrarily low error probability) over a channel. [2, 4, 6, 9, 11, 17, 18, 19]
#### Noisy-Channel Coding Theorem #Shannon #Fundamental #Achievability
States that reliable communication is possible at rates below capacity. [6, 16]
#### Shannon-Hartley Theorem #Gaussian #Bandwidth #SNR
Defines the capacity of a band-limited Gaussian channel. [9]
### Error Detection and Correction Codes #Techniques #Algorithms
Specific methods for adding redundancy. [4, 9]
#### Block Codes #FixedLength #Encoding
Encode data in fixed-size blocks.
##### Hamming Codes #Linear #SEC-DED
Simple linear codes capable of correcting single errors. [4]
##### Reed-Solomon Codes #NonBinary #BurstErrors
Powerful codes used in storage (CDs, DVDs) and digital communication. [4]
#### Convolutional Codes #Memory #SlidingWindow
Codes whose output depends on current and previous input bits. [5]
##### Viterbi Algorithm #Decoding #Optimal
An efficient algorithm for decoding convolutional codes. [4]
#### Low-Density Parity-Check (LDPC) Codes #SparseGraph #Iterative
Codes defined by sparse parity-check matrices, approaching channel capacity.
#### Turbo Codes #Iterative #NearCapacity
Codes using parallel concatenated convolutional codes with iterative decoding.
#### Polar Codes #CapacityAchieving #Structured
Provably capacity-achieving codes with efficient encoding/decoding. [5]
### Error Exponents #Reliability #Performance
Analyzes the exponential decay rate of error probability as code length increases. [2, 5, 18, 19]
### Feedback #ChannelProperty #Capacity
Role of feedback channels in communication. [5]

## Continuous Variables and Channels #Analog #Signals #Gaussian
Extending information-theoretic concepts to continuous signals and distributions. [1, 5, 6]
### Differential Entropy #Continuous #Measure #Extension
Analogue of entropy for continuous random variables. [2, 5, 15]
### Gaussian Channel #Model #Noise #Continuous
A fundamental channel model where noise follows a Gaussian distribution. [5, 15]
#### Capacity of Gaussian Channel #Formula #Limit
Shannon-Hartley theorem application. [5, 9]
#### Water-filling #Optimization #ParallelChannels
Optimal power allocation strategy for parallel Gaussian channels. [5]
### Bandlimited Channels #Frequency #Constraint
Channels with limited frequency bandwidth. [1, 5, 9]

## Network Information Theory #MultiUser #Distributed #Networks
Extends information theory to scenarios with multiple senders and/or receivers. [5, 7, 8, 12, 15, 17, 20]
### Multiple Access Channel (MAC) #Uplink #Convergence
Multiple senders transmitting to a single receiver. [5, 12]
### Broadcast Channel (BC) #Downlink #Divergence
Single sender transmitting to multiple receivers. [5, 12]
### Relay Channel #Intermediate #Cooperation
Communication assisted by intermediate relay nodes. [12]
### Interference Channel #Crosstalk #Competition
Multiple communication pairs interfering with each other.
### Slepian-Wolf Coding (Distributed Source Coding) #Correlation #Compression
Lossless compression of correlated sources observed separately. [5, 12, 18, 19]
### Wyner-Ziv Coding (Lossy Source Coding with Side Information) #Lossy #SideInfo
Lossy compression where the decoder has access to correlated side information. [5]
### Network Coding #Routing #Mixing #Capacity
Allows intermediate nodes to mix information streams, potentially increasing throughput. [7, 17]

## Advanced Topics #FurtherStudy #Research #Frontiers
More specialized or recent areas within information theory. [5, 8, 12, 15, 17]
### Rate-Distortion Theory #Lossy #Tradeoff #Fidelity
Mathematical framework for lossy compression. [5, 6, 15, 18, 19, 20]
### Information Geometry #Geometry #Statistics #Manifolds
Uses differential geometry to study probability distributions and statistical models. [5]
### Algorithmic Information Theory (Kolmogorov Complexity) #Complexity #IndividualSequence
Focuses on the information content of individual objects rather than probabilistic ensembles. [2, 13, 16, 20]
### Quantum Information Theory #Quantum #Qubits #Entanglement
Applies information theory concepts to quantum mechanical systems. [2, 4]
### Information-Theoretic Security #Cryptography #Secrecy #Wiretap
Uses information theory to analyze and achieve security in communication. [2, 3, 5]
#### Wiretap Channel #Secrecy #Eavesdropping
Model for communication in the presence of an eavesdropper. [5]
#### Secret Key Generation #Cryptography #SharedRandomness
Using common randomness from correlated sources.
### Hypothesis Testing #Statistics #Decisions #ErrorBounds
Using information measures to analyze statistical tests (e.g., Chernoff-Stein Lemma). [5, 15, 18, 19]
### Large Deviations Theory #Probability #RareEvents #Asymptotics
Analyzing the probabilities of rare events, often connected to error exponents. [5, 18, 19]
### Information Theory and Statistics #Inference #Estimation #Learning
Connections between information measures and statistical inference, estimation bounds (Cramér-Rao), model selection. [5, 10, 11, 18, 19, 20]
### Information Theory and Thermodynamics #Physics #Entropy #Connection
Relationship between Shannon entropy and thermodynamic entropy (Landauer's principle, Maxwell's Demon). [6]

## Applications #RealWorld #Uses #Impact
Areas where information theory concepts are applied. [1, 2, 3, 4, 6, 9, 10, 13, 14, 15, 17, 18, 21]
### Telecommunications #Communication #Engineering
Core application area: efficient and reliable data transmission (DSL, mobile phones, deep space communication). [1, 2, 3, 9, 11, 13]
### Data Storage #Memory #Compression #ErrorCorrection
CDs, DVDs, hard drives, flash memory. [3, 4, 13]
### Computer Science #Algorithms #DataStructures
Data compression (ZIP files), cryptography, algorithm analysis. [2, 4, 11, 13, 21]
### Cryptography and Security #Encryption #Secrecy #Authentication
Foundations for secure communication protocols. [1, 3, 4, 5, 11, 13, 21]
### Machine Learning and Artificial Intelligence #Learning #Inference #Models
Feature selection, model complexity (MDL), generalization bounds, training deep neural networks. [2, 6, 10, 11, 15, 18, 19]
### Natural Language Processing (NLP) #Linguistics #LanguageModels
Quantifying language structure, language modeling. [1, 2, 3, 13]
### Biology and Neuroscience #Genetics #NeuralCoding #SystemsBiology
Analyzing DNA sequences, neural spike trains, information transmission in biological systems. [2, 6, 8, 10, 13, 16, 21]
### Physics #Thermodynamics #StatisticalMechanics #BlackHoles
Connections to entropy, statistical physics, black hole information paradox. [1, 2, 3, 6]
### Economics and Finance (Portfolio Theory) #Gambling #Investment
Optimal investment strategies, analysis of market information. [5, 10, 20]
### Gambling #Betting #Strategies
Analysis of optimal betting strategies based on information. [5, 10, 20]
### Plagiarism Detection #Analysis #Comparison
Using information measures to compare documents. [2, 13]

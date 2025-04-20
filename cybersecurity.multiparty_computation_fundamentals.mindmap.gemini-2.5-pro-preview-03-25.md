# Multi-Party Computation Fundamentals #MPC #Cryptography #Security
Multi-Party Computation (MPC) allows multiple parties to jointly compute a function over their private inputs without revealing those inputs to each other or any other party. It's a subfield of cryptography focused on collaborative computation while preserving privacy. [2, 3, 11, 34]

## Introduction and Motivation #Overview #ProblemStatement #History
Provides context, defines the core problem, and outlines the historical development and goals of MPC.

### The Need for Secure Computation #Privacy #Confidentiality #Collaboration
Situations where parties need to compute a joint result from sensitive data they cannot share directly (e.g., due to privacy regulations, business competition). [1, 33, 37] MPC enables collaboration without centralizing sensitive data or requiring a fully trusted third party. [2, 3]

### Problem Definition: The Millionaires' Problem #Example #Intuition
A classic introductory problem posed by Andrew Yao: Two millionaires want to know who is richer without revealing their actual wealth to each other. This illustrates the fundamental goal of computing a function (comparison) on private inputs (wealth). [1, 8, 36]

### Historical Context and Origins #Yao #GMW #Chaum
MPC foundations trace back to the late 1970s and early 1980s. Key milestones include Yao's work on the Millionaires' Problem (1982) and general two-party computation (1986), and seminal papers by Goldreich, Micali, Wigderson (GMW) and Chaum, Crépeau, Damgård showing the feasibility of general MPC (late 1980s). [1, 4, 8, 24] Initially theoretical, MPC has become increasingly practical. [31, 36]

### Goals of MPC #Correctness #Privacy #Security
The primary goals MPC protocols aim to achieve:
*   **Privacy:** No party should learn anything about other parties' private inputs beyond what can be inferred from the output itself. [2, 9, 11]
*   **Correctness:** The computed output must be accurate according to the agreed-upon function. [9]
*   **Input Independence:** A party's input choice should not depend on other parties' inputs. [1]
*   **(Optional) Guaranteed Output Delivery:** Honest parties should receive the output even if some parties misbehave (abort). [9]
*   **(Optional) Fairness:** All parties receive the output simultaneously, or no one does. [1, 9]

## Core Definitions and Security Models #Fundamentals #Security #Theory
Establishes the formal framework for defining and proving MPC security.

### Parties and Setup Assumptions #Participants #NetworkModel
Defines the number of parties (N), communication network properties (e.g., synchronous with guaranteed message delivery vs. asynchronous with potential delays), and potential setup assumptions (e.g., existence of a Public Key Infrastructure). [1, 15]

### Ideal vs. Real World Paradigm #Simulation #SecurityProof
A standard method for defining security in cryptography.
*   **Ideal World Functionality (Trusted Third Party - TTP):** An imaginary, incorruptible party receives all inputs, computes the function, and distributes outputs. This defines the "best possible" outcome. [1, 2, 17]
*   **Real World Protocol Execution:** Parties interact directly following a specific protocol, potentially facing an adversary. [1, 12]
*   **Simulation-Based Security:** A protocol is secure if any attack executable by an adversary in the real world can be "simulated" in the ideal world using only the TTP. This means the real protocol leaks no more information than the ideal TTP interaction. [1, 7, 12]

### Security Properties #Goals #Guarantees
Specific guarantees provided by MPC protocols, often depending on the protocol and adversary model.
*   **Privacy (Input Secrecy):** As defined above. [2, 9, 11]
*   **Correctness:** As defined above. [9]
*   **Independence of Inputs:** Ensuring inputs are chosen without influence from others. [1]
*   **Guaranteed Output Delivery:** Resilience against denial-of-service by malicious parties. [9]
*   **Fairness:** Preventing one party from getting the output while others don't. [1, 9]

### Adversary Models #ThreatModel #Assumptions
Characterizes the capabilities and behavior of potential attackers controlling some parties. [1, 15, 27]
*   **Computational Power:** Typically assumed to be Probabilistic Polynomial-Time (PPT), meaning computationally bounded. Some protocols offer security against computationally unbounded adversaries (information-theoretic security). [1, 15]
*   **Corruption Strategy:**
    *   **Static:** Adversary chooses which parties to corrupt before the protocol starts. [15]
    *   **Adaptive:** Adversary can corrupt parties during protocol execution. [15]
*   **Behavior:**
    *   **Semi-Honest (Passive / Honest-but-Curious):** Corrupted parties follow the protocol specification but try to learn extra information from the messages they see. [1, 10, 35] Considered a weaker, sometimes unrealistic model, but often a building block for stronger security. [1, 22]
    *   **Malicious (Active):** Corrupted parties can arbitrarily deviate from the protocol (e.g., send false messages, abort prematurely) to disrupt correctness or privacy. Provides stronger security guarantees. [1, 10, 22]
    *   **Covert:** Adversaries deviate only if they likely won't be caught. Offers a middle ground between semi-honest and malicious. [10]
    *   **Honorific:** Adversaries may cheat but leave evidence allowing detection with high probability. [10]
*   **Corruption Threshold (t):** The maximum number of parties the adversary can control.
    *   **Honest Majority (t < N/2):** Protocols often achieve information-theoretic security and can be more efficient. [1, 5, 45]
    *   **Dishonest Majority (t ≥ N/2):** Typically requires computational assumptions (cryptographic primitives) and may be less efficient. Includes the common two-party case (N=2, t=1). [1, 45]
*   **General Adversary Structures:** Specifies exactly which subsets of parties might be corrupted, rather than just a threshold number. [15]

## Fundamental Building Blocks #Primitives #Tools #Cryptography
Core cryptographic techniques used within MPC protocols.

### Secret Sharing Schemes #Sharing #Reconstruction #Distribution
Methods to split a secret value `s` into multiple shares `s_1, ..., s_N`, distributed among parties. [1, 26, 28] Key properties: a threshold `t` of shares reveals nothing about `s`, while `t+1` (or more) shares allow reconstruction of `s`. [13, 42] Used extensively in GMW, BGW, SPDZ. [1, 29]
*   **Shamir's Secret Sharing (SSS):** Based on polynomial interpolation over finite fields. Information-theoretically secure. [1, 9, 13, 34]
*   **Additive Secret Sharing:** Secret `s` is split such that `s = s_1 + ... + s_N` (in a field). Very simple, forms the basis for GMW-style computation. [1, 19]
*   **Verifiable Secret Sharing (VSS):** Allows parties to verify the consistency of shares received, crucial for security against malicious adversaries. [1, 15]
*   **Stochastic Secret Sharing:** A newer model where correctness/privacy hold with high probability against adversaries corrupting parties randomly. Can achieve 1-bit shares. [19]

### Oblivious Transfer (OT) #Oblivious #Choice #Transfer
A two-party protocol where a Sender has multiple messages (commonly two: m0, m1) and a Receiver has a choice index (commonly a bit: b). The Receiver learns the chosen message (mb) but nothing about the other messages (m1-b). The Sender learns nothing about the Receiver's choice (b). [7, 12, 14, 17] A fundamental primitive for many MPC protocols, especially Yao's Garbled Circuits and GMW. [7, 16, 23, 35, 40]
*   **1-out-of-2 OT:** The most basic form described above. [7, 12, 14]
*   **1-out-of-N OT:** Generalization where the Sender has N messages and the Receiver chooses one. [1]
*   **Generalized OT:** Allows the receiver to select specific subsets of messages. [14]
*   **OT Extensions:** Techniques to efficiently generate a large number of OTs from a small number of "base" OTs, significantly improving performance. [1, 40]

### Homomorphic Encryption (HE) #Encryption #ComputationOnCiphertext
Encryption schemes allowing computations to be performed directly on ciphertexts without decrypting them. [8, 11, 28] The result, when decrypted, matches the result of the computation on the plaintexts.
*   **Partially Homomorphic Encryption (PHE):** Supports only one type of operation (e.g., addition OR multiplication) unlimited times. Example: Paillier (additive). [8, 11]
*   **Somewhat Homomorphic Encryption (SHE):** Supports limited numbers of both addition and multiplication operations. [1]
*   **Fully Homomorphic Encryption (FHE):** Supports arbitrary computations (unlimited additions and multiplications). Theoretically powerful but often computationally expensive. [1, 45]
*   **Role of HE in MPC:** Can be used as a building block in specific protocols or for certain computations, sometimes combined with ZKPs. [1, 8, 45]

### Zero-Knowledge Proofs (ZKP) #Proofs #Verification #Privacy
Protocols allowing a Prover to convince a Verifier that a statement is true, without revealing any information beyond the truth of the statement itself. [8, 30] Used in MPC mainly to ensure parties follow the protocol correctly, especially against malicious adversaries. [1, 5, 45]
*   **Proving Correctness of Computation:** Ensuring parties don't cheat when performing computations on shared or encrypted data. [1, 5]
*   **Types (SNARKs, STARKs, Bulletproofs):** Different ZKP constructions with varying trade-offs in proof size, prover/verifier time, and setup assumptions. [1]

## General Two-Party Computation (2PC) Protocols #2PC #Protocols #SpecificCases
Protocols specifically designed for the N=2 case.

### Yao's Garbled Circuits #Garbling #Circuits #ObliviousTransfer
A foundational and widely used 2PC protocol. [4, 6, 16, 24, 36, 40]
*   **Circuit Garbling:** One party (Garbler) encrypts a Boolean circuit representation of the function gate-by-gate. Wire values are represented by random keys ("labels"). [4, 6, 16, 24]
*   **Input Transfer via OT:** The other party (Evaluator) uses Oblivious Transfer to obtain the input labels corresponding to their private input, without revealing their input to the Garbler. [4, 7, 40]
*   **Evaluation:** The Evaluator decrypts the circuit gate-by-gate using the labels obtained, learning only the output labels. [4, 6]
*   **Security:** Secure against semi-honest adversaries. [4, 5]
*   **Extensions for Malicious Security:** Techniques like "Cut-and-Choose" or using ZKPs can add security against malicious adversaries, often at the cost of efficiency. [1, 5]
*   **Optimizations:** Point-and-Permute, Free-XOR, Half-Gates reduce the cost of garbling and communication. [4, 6]

### Goldreich-Micali-Wigderson (GMW) Protocol #GMW #SecretSharing #BooleanCircuits
Another fundamental protocol applicable to both 2PC and MPC. [5, 22, 23, 29, 35, 40]
*   **Based on Secret Sharing:** Parties hold additive shares of values on each wire of the circuit (Boolean or Arithmetic). [1, 5, 26]
*   **Gate Computation:** XOR/Addition gates are computed locally by adding shares. AND/Multiplication gates require interaction, often using OT (especially for Boolean circuits) or multiplication triples. [1, 5, 23, 29]
*   **Security:** Secure against semi-honest adversaries. [5, 22]
*   **Extensions for Malicious Security:** Requires additional mechanisms like ZKPs or VSS. [1, 5]
*   **Round Complexity:** Proportional to the circuit depth, unlike Yao's constant-round protocol. [5, 16]

## General Multi-Party Computation (MPC) Protocols #MPC #Protocols #GeneralCases
Protocols designed for N > 2 parties.

### MPC based on Secret Sharing (GMW generalization) #SecretSharing #ArithmeticCircuits #BooleanCircuits
Extends the GMW paradigm to multiple parties. [1, 26]
*   **Computing on Shared Values:** Addition is local; multiplication requires interaction. [1, 26]
*   **BGW Protocol (Ben-Or, Goldwasser, Wigderson):** Uses Shamir Secret Sharing over large fields for arithmetic circuits. Tolerates t < N/3 malicious adversaries (or t < N/2 semi-honest) with information-theoretic security. [5, 40]
*   **CCD Protocol (Chaum, Crépeau, Damgård):** Another early protocol for honest majority. [1]
*   **GMW Multi-Party Protocol:** Generalization of 2-party GMW using additive sharing and OT for AND gates. Tolerates t < N semi-honest adversaries (or t < N/2 malicious with ZKPs). [5, 23]

### MPC based on Garbled Circuits (Generalization of Yao) #GarbledCircuits #ConstantRound
Extends garbled circuits to multiple parties.
*   **BMR Protocol (Beaver, Micali, Rogaway):** A constant-round protocol using garbled circuits and OT. [40]

### MPC in the Preprocessing Model #OfflineOnline #Efficiency
Splits computation into two phases for better online performance. [1, 45]
*   **Offline Phase (Input Independent):** Performs expensive, input-independent cryptographic operations (e.g., generating multiplication triples, Beaver triples, OT correlations) beforehand. [1, 23, 45]
*   **Online Phase (Input Dependent):** Uses the preprocessed data to quickly compute the function once inputs are known. Very fast, low latency. [1, 23, 45]
*   **SPDZ Protocol Family (and variants):** Popular protocols (SPDZ, MASCOT, Overdrive, etc.) based on authenticated additive shares and Beaver triples. Provide malicious security in the preprocessing model, often efficient for dishonest majority. [1]

## MPC Security Settings and Variants #Variations #Models #Context
Different assumptions and guarantees affecting protocol design and feasibility.

### Honest Majority vs. Dishonest Majority #CorruptionThreshold #Feasibility
The number of potentially corrupted parties (t) relative to the total number of parties (N).
*   **Honest Majority MPC (t < N/2):** Often allows for information-theoretic security and higher efficiency (e.g., BGW). [1, 5, 45]
*   **Dishonest Majority MPC (t ≥ N/2):** Generally requires computational assumptions (cryptography) and can be less efficient. Includes the 2PC case. [1, 45]

### Security with Abort vs. Guaranteed Output Delivery #Robustness #Fairness
*   **Security with Abort:** Malicious adversaries might cause the protocol to abort, but if honest parties receive an output, it's guaranteed to be correct, and privacy is maintained. [1, 5]
*   **Guaranteed Output Delivery:** Ensures honest parties always receive the correct output, even if some parties are malicious (requires honest majority, t < N/3 for malicious). [9]

### Synchronous vs. Asynchronous Networks #TimingAssumptions #NetworkModel
*   **Synchronous:** Assumes known bounds on message delivery times (messages arrive in "rounds"). [1, 15]
*   **Asynchronous:** Messages can be arbitrarily delayed (but eventually arrive). More challenging setting. [15]

### Public Key Infrastructure (PKI) Assumptions #Setup #Keys
Some protocols assume parties have authenticated public keys, simplifying secure channel establishment or identity verification. [1]

## Efficiency and Performance #Optimization #Scalability #Practicality
Metrics and techniques for making MPC practical.

### Communication Complexity #Bandwidth #Rounds
Amount of data exchanged between parties and the number of interaction rounds. Crucial for performance. [1, 19, 40]

### Computational Complexity #CPU #GateCount
Amount of local computation performed by each party (e.g., cryptographic operations, circuit evaluations). [1, 19, 40]

### Round Complexity #Latency #Interaction
Number of sequential communication steps required. High round complexity increases latency. Constant-round protocols (like Yao's) are often preferred for low latency. [5, 16, 40]

### Concrete Efficiency Measures #Throughput #Latency
Practical performance metrics like computations per second or time to complete a task.

### Protocol Optimizations #Techniques #Improvements
Methods to reduce overhead and improve speed.
*   **OT Extension:** Massively reduces cost of generating many OTs. [1, 40]
*   **Vector-OLE / VOLE (Vector Oblivious Linear Evaluation):** Generalization of OT extension for efficient linear correlations. [1]
*   **Circuit Optimizations:** Using specialized circuit representations or compilers to reduce gate count or depth. [1]
*   **Batching Techniques:** Processing multiple computations together for amortized efficiency. [1]
*   **Preprocessing:** Performing expensive work offline. [1, 23, 45]
*   **Specialized Hardware:** Using FPGAs or ASICs.

## Applications of MPC #UseCases #RealWorld #Impact
Examples of where MPC is or could be applied. [1, 37]

### Secure Auctions #BiddingPrivacy #Fairness
Computing auction outcomes (e.g., highest bidder, clearing price) without revealing individual bids. [1, 38] The Danish Sugar Beet Auction (2008) was a pioneering large-scale application. [1, 38]

### Private Set Intersection (PSI) #SetOperations #Privacy
Allowing parties to compute the intersection of their private sets without revealing non-intersecting elements. [1]

### Secure Statistical Analysis #DataMining #Analytics
Computing aggregate statistics (e.g., averages, counts) on combined datasets from multiple sources without revealing individual data points. [1, 3, 28]

### Private Machine Learning (ML) #AI #ModelTraining #Inference
Training ML models on data distributed across multiple owners or performing inference on private data without revealing the data or the model. [1, 33] Facebook's CrypTen is an example framework. [33]

### Secure Genome Analysis #Bioinformatics #MedicalPrivacy
Performing computations on genomic data (e.g., comparing sequences, association studies) while protecting sensitive genetic information. [3]

### Cryptocurrencies and Blockchain #ThresholdSignatures #DistributedKeyGeneration
*   **Threshold Signatures (TSS):** Splitting a private key into shares so that a threshold `t` of parties must cooperate to generate a signature, without ever reconstructing the full key. Enhances wallet security. [3, 8, 32, 42, 44]
*   **Distributed Key Generation (DKG):** Securely generating key shares among parties without any single party knowing the full key. [1, 44]
*   **MPC Wallets:** Use TSS/DKG to manage private keys, eliminating single points of failure. [3, 8, 42]

### Secure Database Queries #SQL #DataPrivacy
Allowing users to query encrypted or distributed databases without revealing the query or database contents unnecessarily. [1, 37]

### Electronic Voting #Voting #Democracy
Allowing voters to cast votes privately and enabling secure tallying without revealing individual votes. [1, 2]

## Advanced Topics and Related Areas #FurtherStudy #Research #Connections
More complex concepts and related cryptographic fields.

### Universal Composability (UC) Framework #SecurityProof #Composition
A strong security framework ensuring protocols remain secure even when run concurrently with other protocols. [1, 10]

### Verifiable Computation #Outsourcing #Integrity
Allowing a weak client to outsource computation to a powerful server and efficiently verify the result's correctness. Garbled circuits have applications here. [1, 16]

### Fully Homomorphic Encryption (FHE) #AdvancedCryptography #Alternative
While sometimes used within MPC, FHE is also studied as an alternative approach to secure computation, allowing one party to compute on another's encrypted data. [1, 45]

### Zero-Knowledge Proofs (ZKP) #PrivacyEnhancing #Verification
A closely related field, often used as a building block within MPC, especially for malicious security. [1, 8, 45]

### Functional Encryption #FineGrainedAccess #Cryptography
Allows decryption keys to be issued that reveal only specific functions of the encrypted data. [1]

### Quantum MPC #QuantumComputing #Future
Exploring MPC protocols secure against quantum adversaries or utilizing quantum principles. [1]

## Implementation and Libraries #Software #Tools #Development
Resources for building and deploying MPC applications.

### Existing MPC Frameworks #Libraries #Platforms
Software libraries that implement various MPC protocols and building blocks.
*   MP-SPDZ [1]
*   SCALE-MAMBA [1, 33]
*   EMP-toolkit [1]
*   FRESCO [1]
*   MPCLib [1]
*   MPyC [1]
*   VIFF [22]
*   Sharemind [22]

### Domain Specific Languages (DSLs) for MPC #Programming #Abstraction
Higher-level languages designed to simplify programming secure computations, compiling down to circuit representations or MPC protocols. [1]

### Challenges in Practical Deployment #Usability #Performance #TrustSetup
Real-world hurdles include achieving sufficient performance, managing network latency, usability for developers, and establishing necessary trust assumptions or setup phases. [10, 21, 31]

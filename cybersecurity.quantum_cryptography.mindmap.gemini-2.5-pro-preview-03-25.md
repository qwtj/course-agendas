```markdown
# Quantum Cryptography #Overview #QuantumSecurity #InformationSecurity
Provides methods for secure communication based on the laws of quantum mechanics, offering security guarantees unbreakable by computational power, including future quantum computers.

## Introduction and Motivation #Basics #Context #WhyQuantum
Setting the stage for quantum cryptography.
### What is Quantum Cryptography? #Definition #Scope
Using quantum mechanical properties to perform cryptographic tasks. Primarily focused on Quantum Key Distribution (QKD), but includes other primitives.
### Need for Quantum Cryptography #Threat #QuantumComputing #Motivation
The emergence of quantum computers poses a threat to current public-key cryptosystems (like RSA, ECC) based on computational difficulty (e.g., factoring). Quantum cryptography offers security based on physical laws.
### Relationship to Classical Cryptography #Comparison #Integration
Quantum cryptography complements rather than replaces classical cryptography. QKD secures key exchange, while classical symmetric algorithms (like AES) use these keys for encryption. Classical authentication is still needed.
### Historical Context #History #Milestones
Development milestones, from early ideas (Wiesner's quantum money) to the first QKD protocols (BB84) and experimental demonstrations.

## Fundamental Quantum Mechanics Principles #Physics #QuantumMechanics #CoreConcepts
The underlying physics enabling quantum cryptography.
### Qubits vs. Classical Bits #Qubit #InformationUnit
Representation of information using quantum states (e.g., photon polarization, phase). Unlike classical bits (0 or 1), qubits can exist in superpositions.
### Superposition #QuantumPhenomenon #QubitState
Quantum systems can exist in multiple states simultaneously until measured. A qubit can be a combination of |0> and |1>.
### Entanglement #QuantumPhenomenon #Correlation #Nonlocality
Quantum correlation between particles where their fates are linked, regardless of separation distance. Measuring one instantly influences the other. Used in protocols like E91.
### Measurement Problem (Wave Function Collapse) #QuantumMeasurement #ObservationEffect
Measuring a quantum state irreversibly changes it (collapses the superposition). This is key to detecting eavesdropping.
### No-Cloning Theorem #FundamentalLimit #SecurityPrinciple
It's impossible to create an identical copy of an arbitrary unknown quantum state. Prevents passive eavesdropping without disturbance.
### Uncertainty Principle #FundamentalLimit #MeasurementTradeoff
Certain pairs of conjugate properties (e.g., position and momentum, or polarization in different bases) cannot be simultaneously known with arbitrary precision. Used in BB84.

## Quantum Key Distribution (QKD) #CoreApplication #KeyExchange #QKD
The most mature application of quantum cryptography, focused on establishing a shared secret key between two parties (Alice and Bob) with security against eavesdropping (Eve).
### Goal: Secure Key Establishment #Objective #SecurityGoal
To generate and share a secret key known only to the intended participants, secure against any eavesdropper, even one with unlimited computational power (including quantum computers).
### Basic Principle: Using Quantum States for Keys #Methodology #Encoding
Encoding key bits onto quantum states (e.g., single photons) and transmitting them over a quantum channel.
### Detection of Eavesdropping #SecurityFeature #IntrusionDetection
Any attempt by an eavesdropper to measure the transmitted quantum states inevitably disturbs them (due to the measurement problem and no-cloning theorem), which Alice and Bob can detect.
### Components of a QKD System #SystemArchitecture #Infrastructure
Requires a quantum channel (e.g., optical fiber, free space) for transmitting quantum states and an authenticated public classical channel for post-processing communication.

## QKD Protocols #Algorithms #Methods #ProtocolFamilies
Specific procedures for implementing QKD.
### Prepare-and-Measure (P&M) Protocols #ProtocolType #PnMQKD
Alice prepares quantum states and sends them; Bob measures them. Eavesdropping is detected by discrepancies.
#### BB84 Protocol #BB84 #PnM #Foundation
The first QKD protocol. Uses four quantum states (e.g., polarization at 0°, 45°, 90°, 135°) in two conjugate bases.
#### B92 Protocol #B92 #PnM #SimplerBB84
A simpler variant using only two non-orthogonal states.
#### Six-State Protocol #SixState #PnM #ImprovedSecurity
Uses six states across three mutually unbiased bases, potentially offering higher noise tolerance.
#### Decoy State QKD #DecoyState #PnM #PracticalSecurity
Uses randomly inserted 'decoy' states with different intensities to detect photon-number-splitting attacks, enabling secure QKD with practical weak coherent pulse sources instead of ideal single-photon sources.
### Entanglement-Based Protocols #ProtocolType #EntanglementQKD
Uses shared entangled particle pairs. Security relies on the properties of entanglement and Bell's theorem.
#### E91 Protocol #E91 #Entanglement #BellTest
Proposed by Artur Ekert. Uses entangled pairs; security can be verified by checking for Bell inequality violations, confirming the quantum nature of correlations and detecting eavesdropping.
#### BBM92 Protocol #BBM92 #Entanglement #BB84Equivalent
An entanglement-based protocol shown to be equivalent to BB84 under certain conditions.
### Continuous-Variable QKD (CV-QKD) #ProtocolType #CVQKD #GaussianStates
Uses properties like the amplitude and phase quadratures of the light field (continuous variables) rather than discrete photon counts. Potentially compatible with standard telecom components.
### Distributed Phase Reference (DPR) Protocols #ProtocolType #DPR #PhaseEncoding
Protocols like Coherent One-Way (COW) or Differential Phase Shift (DPS) that encode information in relative phases, often offering robustness.
### Measurement-Device-Independent QKD (MDI-QKD) #ProtocolType #MDIQKD #SecurityEnhancement
Removes all detector side-channel attacks by having Alice and Bob send states to an untrusted third party (Charlie) who performs measurements. Security does not depend on trusting the measurement devices.
### Twin-Field QKD (TF-QKD) #ProtocolType #TFQKD #LongDistance
A recent advancement related to MDI-QKD, allowing for significantly increased transmission distances by overcoming the fundamental rate-loss bounds of traditional QKD.

## Implementation and Hardware #Technology #Experiment #Realization
Practical aspects of building and deploying quantum cryptography systems.
### Photon Sources #Hardware #Component
Requirements for generating quantum states.
#### Single-Photon Sources #IdealSource #SPS
Emit one photon at a time on demand. Difficult to build efficiently. Examples: quantum dots, nitrogen-vacancy centers.
#### Weak Coherent Pulses (WCP) #PracticalSource #Laser
Attenuated laser pulses. Easier to implement but contain a small probability of multiple photons, opening vulnerability to Photon Number Splitting (PNS) attacks (addressed by decoy states).
### Quantum Channels #Transmission #Medium
The medium for transmitting quantum states.
#### Optical Fiber #FiberOptic #GuidedWave
Standard telecom fibers. Suffer from photon loss (attenuation), limiting distance. Polarization or phase encoding used.
#### Free Space #Atmospheric #Satellite
Transmission through air or vacuum (e.g., ground-to-ground, ground-to-satellite). Affected by atmospheric conditions, beam wander, background light. Enables mobile applications and satellite QKD.
### Photon Detectors #Hardware #Component #MeasurementDevice
Devices to measure the incoming quantum states (single photons).
#### Single-Photon Avalanche Diodes (SPADs) #Detector #SPAD
Common semiconductor detectors. Issues include dark counts, afterpulsing, efficiency limitations.
#### Superconducting Nanowire Single-Photon Detectors (SNSPDs) #Detector #SNSPD #HighPerformance
Offer higher efficiency, lower noise, and faster recovery times but require cryogenic cooling.
### Optical Components #Hardware #PassiveActive
Standard and specialized optics. Examples: beam splitters, polarizers, phase modulators, Faraday mirrors, interferometers.
### Random Number Generators (RNGs) #Component #Randomness
High-quality randomness needed for basis choices, key generation, and protocol steps. Both classical (PRNG/TRNG) and quantum RNGs (QRNGs) are relevant.
### System Integration and Engineering #Implementation #EngineeringChallenges
Combining components into a stable, reliable system. Includes timing synchronization, calibration, thermal management, software control.
### Standardization Efforts #Standards #Interoperability #ETSI #ITU
Work by organizations like ETSI (European Telecommunications Standards Institute) and ITU-T (International Telecommunication Union) to standardize protocols, interfaces, and security requirements for QKD systems.

## Security Analysis and Proofs #Security #Theory #Vulnerabilities #Trust
Establishing and verifying the security of QKD protocols and implementations.
### Information-Theoretic Security #SecurityGuarantee #UnconditionalSecurity
QKD aims for security based on information theory and quantum physics, meaning security holds regardless of the eavesdropper's computational power or future algorithmic advances.
### Security Definitions #Framework #Composability
Formal definitions of security (e.g., composable security) ensuring that keys generated by QKD are safe to use in subsequent cryptographic applications. Quantifies tolerable information leakage to Eve.
### Security Proofs for QKD Protocols #MathematicalProof #Rigour
Mathematical demonstrations that a specific protocol achieves a defined level of security under certain assumptions about the devices and channel. Often complex and involves bounding Eve's information.
### Assumptions in Security Proofs #SecurityModel #TrustAssumptions
Security proofs rely on assumptions, e.g., correctness of quantum mechanics, trusted device boundaries (what parts are secure), characterization of devices (sources, detectors). Violations can lead to vulnerabilities.
### Known Attacks on QKD Systems #AttackVector #Vulnerability #RealWorldThreats
Exploiting deviations between theoretical models and real-world implementations.
#### Intercept-Resend Attack #BasicAttack #Eavesdropping
Eve intercepts the quantum state, measures it, and sends a new state to Bob based on her measurement outcome. Detected by increased error rates (QBER).
#### Man-in-the-Middle Attack (Mitigated by Authentication) #ClassicalAttack #Impersonation
Eve impersonates Bob to Alice and Alice to Bob. Requires authentication on the classical channel to prevent.
#### Side-Channel Attacks #ImplementationAttack #SideChannel #HardwareAttack
Exploiting information leaked through unintended channels in physical devices.
##### Photon Number Splitting (PNS) Attack #AttackVector #WCPVulnerability
Effective against WCP sources without decoy states. Eve blocks single-photon pulses and splits multi-photon pulses, keeping one copy and sending the other to Bob.
##### Detector Blinding/Control Attacks #AttackVector #DetectorHack
Exploiting vulnerabilities in detectors (e.g., SPADs) by blinding them with bright light and then controlling their responses. Addressed by MDI-QKD or careful detector characterization/monitoring.
##### Trojan Horse Attacks #AttackVector #SystemIntrusion
Eve sends bright light into Alice's or Bob's system, analyzes the reflections to learn internal settings (e.g., basis choices). Countered with optical isolators and monitoring.
### Countermeasures and Defenses #Mitigation #SecurityHardening
Techniques to prevent or detect attacks, including decoy states, MDI-QKD, monitoring device parameters, careful engineering, and secure installation practices.
### Device-Independent QKD (DI-QKD) #AdvancedSecurity #DIQKD #BellTestSecurity
Highest level of security. Security relies only on observed correlations (violating Bell inequalities) and minimal assumptions (correctness of quantum mechanics, no information leakage from labs). Relies on loophole-free Bell tests, currently extremely challenging experimentally for key distribution.

## Post-Processing in QKD #DataHandling #ErrorCorrection #KeyFinalization
Steps performed over the authenticated classical channel after quantum transmission to distill a final, secure key.
### Sifting #KeyReconciliation #BasisMatching
Alice and Bob compare (publicly) the bases they used for preparing/measuring each qubit and discard results where bases didn't match. Results in a 'sifted key'.
### Parameter Estimation (Quantum Bit Error Rate - QBER) #QBER #Performance #EavesdroppingCheck
Alice and Bob reveal a random subset of their sifted key bits to estimate the error rate (QBER). An abnormally high QBER indicates potential eavesdropping, causing them to abort.
### Error Correction (Information Reconciliation) #ErrorCorrection #Cascade #LDPC
Correcting discrepancies (errors) between Alice's and Bob's sifted keys caused by channel noise or potential eavesdropping, while minimizing information leaked to Eve. Algorithms like Cascade or LDPC codes are used.
### Privacy Amplification #SecurityEnhancement #Hashing #KeyDistillation
Reducing (to a negligible level) any partial information an eavesdropper might have gained about the key during transmission or error correction. Involves applying universal hash functions to shorten the reconciled key into a final, highly secure key.
### Authentication #SecurityRequirement #ClassicalChannelSecurity
Crucial step: All communication on the classical channel during post-processing MUST be authenticated using a pre-shared secret key (often established initially via QKD or trusted means) to prevent Man-in-the-Middle attacks.

## Other Quantum Cryptographic Primitives #BeyondQKD #AdvancedProtocols #QuantumCryptoZoo
Cryptographic tasks beyond key distribution that leverage quantum mechanics. Generally less mature than QKD.
### Quantum Secure Direct Communication (QSDC) #QSDC #DirectCommunication
Transmitting secret messages directly over the quantum channel without first establishing a key.
### Quantum Secret Sharing (QSS) #QSS #Multiparty #ThresholdScheme
Distributing a secret among multiple parties such that only authorized subsets can reconstruct it.
### Quantum Commitment Schemes #Commitment #Protocols #SecureComputation
Allowing a party to commit to a value while keeping it secret, with the ability to reveal it later. Basis for other protocols.
### Quantum Digital Signatures #QDS #Signatures #Authenticity
Creating digital signatures with security based on quantum properties.
### Quantum Coin Flipping #CoinFlipping #Protocols #SecureComputation
Two distrustful parties remotely flipping a fair coin.
### Position-Based Quantum Cryptography #PositionBased #LocationSecurity #PQCChallenge
Verifying a party's claimed geographical position using quantum information. Challenging due to fundamental limits.
### Blind Quantum Computation #BQC #CloudSecurity #DelegatedComputation
Delegating a quantum computation to a remote, potentially untrusted quantum server while keeping the input, output, and algorithm private.

## Applications and Use Cases #RealWorld #Deployment #Impact
Where quantum cryptography, primarily QKD, is being used or considered.
### Secure Communication Networks #NetworkSecurity #QKDNetworks
Building networks (metropolitan, backbone) incorporating QKD links for highly secure key exchange between nodes. Examples: government networks, financial institutions, research networks.
### Long-Term Data Security #DataSecurity #FutureProofing
Protecting data that needs to remain confidential for decades, against future threats including quantum computers.
### Securing Critical Infrastructure #InfrastructureSecurity #SCADA
Protecting communications for power grids, transportation systems, and other critical infrastructure.
### Integration with Existing Networks #NetworkIntegration #HybridSystems
Developing methods to integrate QKD systems with classical communication infrastructure and security protocols (e.g., VPNs, KMS).
### Quantum Networks and the Quantum Internet #FutureInternet #QuantumCommunication
QKD is a foundational technology for future quantum networks that will enable various quantum communication tasks beyond key distribution.
### Commercial QKD Systems and Deployments #Commercialization #Market
Companies offering QKD hardware and solutions. Notable deployments in various countries (China, Europe, US, South Korea, Japan).

## Challenges and Limitations #Obstacles #Drawbacks #ResearchAreas
Difficulties hindering widespread adoption.
### Distance Limitations #Attenuation #Decoherence #RangeLimit
Photon loss and decoherence in optical fibers and free space restrict practical QKD links typically to tens or a few hundreds of kilometers without trusted nodes or quantum repeaters.
### Key Rate Limitations #Performance #Bandwidth
The rate at which secure key bits can be generated decreases significantly with distance. Current rates can be low for demanding applications.
### Cost and Complexity of Hardware #Economics #Engineering #Accessibility
QKD systems require specialized, often expensive components (single-photon sources/detectors, cryogenics for SNSPDs) and careful engineering.
### Need for Point-to-Point Links or Trusted Nodes #NetworkArchitecture #TrustModel
QKD is inherently point-to-point. Building networks requires either direct links between all users (impractical) or intermediate "trusted nodes" (which reintroduce security vulnerabilities if compromised). Quantum repeaters are the long-term goal to avoid trusted nodes.
### Integration with Classical Infrastructure #Compatibility #Hybridization
Challenges in seamlessly integrating QKD systems with existing network management, key management systems (KMS), and security protocols.
### Standardization and Interoperability #Standards #Compatibility #AdoptionBarrier
Lack of mature, universally adopted standards can hinder interoperability between equipment from different vendors and slow down adoption.
### Security Vulnerabilities in Practical Implementations #SideChannels #RealWorldSecurity
Ensuring that the physical implementation perfectly matches the theoretical model used in security proofs is extremely difficult, leading to side-channel vulnerabilities.

## Future Directions and Research #Research #Innovation #NextGen #QuantumFuture
Ongoing work and future possibilities in quantum cryptography.
### Development of Quantum Repeaters #QuantumRepeater #LongDistance #QuantumNetwork
The key enabling technology for overcoming distance limitations and building large-scale quantum networks without trusted nodes. Relies on entanglement swapping and quantum memories. Still in the research phase.
### Improving Hardware Performance #HardwareDevelopment #Efficiency #Miniaturization
Research into better single-photon sources (higher brightness, purity), detectors (higher efficiency, lower noise, room temperature operation), and integrated photonic circuits to reduce size, cost, and improve performance.
### Satellite-Based QKD #SatelliteQKD #GlobalCoverage #SpaceQuantum
Using satellites as nodes to extend QKD reach globally, overcoming fiber limitations. Demonstrated feasibility (e.g., Micius satellite).
### Development of Quantum Networks #QuantumInternet #NetworkProtocols
Designing architectures, protocols, and software for networks where nodes can exchange and process quantum information, enabling applications beyond QKD.
### Exploring New Protocols and Primitives #AlgorithmDesign #NewApplications
Developing novel quantum cryptographic protocols with enhanced features (e.g., better rates, higher loss tolerance like TF-QKD) or entirely new functionalities.
### Full Security Proofs for Complex Scenarios #SecurityAnalysis #TheoryDevelopment
Developing rigorous security proofs that account for realistic device imperfections and complex network scenarios.
### Post-Quantum Cryptography (PQC) vs. Quantum Cryptography (QC) #PQC #Comparison #Strategy
Understanding the distinct roles: PQC provides computational security via classical algorithms resistant to quantum computers; QKD provides information-theoretic security for key exchange using quantum physics. They address different aspects of the quantum threat.

## Relation to Post-Quantum Cryptography (PQC) #PQC #Comparison #Synergy #CryptoLandscape
Understanding the differences and potential coexistence.
### Distinguishing QC (esp. QKD) and PQC #Terminology #Clarification
QC (specifically QKD) uses quantum mechanics for security tasks (key exchange). PQC uses classical algorithms designed to be hard for quantum computers to break.
### PQC: Algorithms Secure Against Quantum Computers #PQCAlgorithms #SoftwareSolution
Focuses on developing new mathematical problems (e.g., lattice-based, code-based, hash-based, multivariate) for public-key cryptography that are believed to resist quantum attacks. Software-based and deployable on existing infrastructure.
### QKD: Using Quantum Mechanics for Key Exchange Security #QKDMechanism #HardwareSolution
Focuses on the key exchange problem, using quantum physics (no-cloning, measurement disturbance) to guarantee security based on physical laws, not computational assumptions. Requires specialized hardware.
### Potential Synergy and Hybrid Approaches #HybridSecurity #FutureSystems
Using both PQC and QKD together. For example, using PQC for initial authentication of QKD channels, or combining keys from both sources to hedge bets on the long-term security of either approach alone.
```

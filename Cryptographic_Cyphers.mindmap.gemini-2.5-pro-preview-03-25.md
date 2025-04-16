# Cryptographic Cyphers #Cryptography #Overview #Security
An introduction to the science of secure communication techniques that allow only the sender and intended recipient of a message to view its contents.

## Fundamentals of Cryptography #Basics #Concepts #Theory
Core principles and terminology used in the study and application of ciphers.

### Basic Terminology #Definitions #CoreConcepts
Defining the essential language of cryptography.
#### Plaintext #Unencrypted #OriginalData
The original, readable message or data.
#### Ciphertext #Encrypted #ScrambledData
The unreadable, transformed message or data after encryption.
#### Cipher #Algorithm #EncryptionMethod
The algorithm or method used for encryption and decryption.
#### Encryption #Encoding #Process
The process of converting plaintext to ciphertext.
#### Decryption #Decoding #Process
The process of converting ciphertext back to plaintext.
#### Key #Secret #Parameter
A piece of information (parameter) that determines the functional output of a cryptographic algorithm.
#### Cryptosystem #System #Components
The collection of algorithms, keys, protocols, and procedures used for cryptographic operations.

### Core Security Goals #Objectives #CIA_Triad #Principles
The primary objectives that cryptographic systems aim to achieve.
#### Confidentiality #Secrecy #Privacy
Ensuring that information is not accessed by unauthorized individuals.
#### Integrity #Authenticity #Unaltered
Ensuring that information has not been altered or tampered with during transmission or storage.
#### Authentication #Identity #Verification
Verifying the identity of the sender or receiver.
#### Non-repudiation #Proof #Accountability
Ensuring that a party cannot deny having sent or received a message.

### Kerckhoffs's Principle #SecurityPrinciple #OpenDesign
The principle that a cryptosystem should be secure even if everything about the system, except the key, is public knowledge.

## Historical Ciphers #Classical #Manual #History
Early methods of encryption, often performed manually or with simple mechanical devices.

### Transposition Ciphers #Rearrangement #Permutation
Ciphers that rearrange the order of letters in the plaintext.
#### Rail Fence Cipher #Zigzag #SimpleTransposition
#### Scytale #Rod #AncientGreece
#### Columnar Transposition #Grid #Keyword

### Substitution Ciphers #Replacement #Mapping
Ciphers that replace plaintext letters or symbols with other letters, symbols, or numbers.
#### Simple Substitution (Monoalphabetic) #OneToOne #FrequencyAnalysis
##### Caesar Cipher #ShiftCipher #ROT13
##### Atbash Cipher #ReverseAlphabet #Hebrew
#### Polyalphabetic Substitution #MultipleAlphabets #Vigenere
##### Vigenère Cipher #Keyword #TabulaRecta
##### Autokey Cipher #KeyFromMessage
##### Playfair Cipher #Digram #5x5Matrix
#### Homophonic Substitution #OneToMany #FrequencyObscurity

### Mechanical and Electromechanical Ciphers #Machines #WWII #Automation
Devices used to automate encryption processes.
#### Rotor Machines #Polyalphabetic #ComplexWiring
##### Enigma Machine #Germany #WWII
##### Lorenz Cipher #Germany #Teleprinter
##### Typex #UK #EnigmaVariant
#### Hagelin Machines #PinAndLug #USA #Sweden

## Symmetric-Key Cryptography #SecretKey #SharedKey #PrivateKet
Encryption methods where the same key is used for both encryption and decryption.

### Stream Ciphers #Bitwise #Sequential #Stateful
Ciphers that encrypt data one bit or byte at a time.
#### Synchronous Stream Ciphers #KeyStream #Independent
##### One-Time Pad (OTP) #PerfectSecrecy #Unbreakable #KeyManagementIssue
##### RC4 #WidelyUsed #Weaknesses #WEP_TLS
##### ChaCha20 / Salsa20 #Modern #Fast #Secure

#### Self-Synchronizing Stream Ciphers #Autokey #ErrorPropagation

### Block Ciphers #FixedSize #Blocks #StatelessBase
Ciphers that encrypt data in fixed-size blocks.
#### Data Encryption Standard (DES) #Legacy #SmallKey #NIST
##### Triple DES (3DES) #DES_Variant #IncreasedSecurity #Slow
#### Advanced Encryption Standard (AES) #Rijndael #ModernStandard #NIST
##### AES Key Sizes (128, 192, 256 bits) #SecurityLevels #PerformanceTradeoff
##### AES Structure (SubBytes, ShiftRows, MixColumns, AddRoundKey) #SPN #Rounds
#### Blowfish #Unpatented #VariableKey #RoyaltyFree
#### Twofish #AES_Candidate #Flexible #Secure
#### Serpent #AES_Candidate #Conservative #HighlySecure
#### IDEA #PGP #PatentedExpired

### Key Distribution Problem #Challenge #SymmetricCrypto #KeyExchange
The inherent challenge of securely sharing the secret key between parties.

## Asymmetric-Key Cryptography #PublicKey #KeyPair #PublicPrivateKey
Encryption methods using a pair of keys: a public key for encryption and a private key for decryption.

### Core Concepts #Fundamentals #PKC
Underlying principles of public-key cryptography.
#### Public Key #Distribution #Encryption #Verification
#### Private Key #Secret #Decryption #Signing
#### Key Pair Generation #Algorithm #Randomness
#### Trapdoor Functions #OneWayFunction #SecretInfo

### Key Exchange Algorithms #KeyAgreement #SessionKey
Methods for securely establishing shared secrets over an insecure channel.
#### Diffie-Hellman Key Exchange (DH) #FirstPKC #KeyAgreement #NoAuthentication
#### Elliptic Curve Diffie-Hellman (ECDH) #ECC #Efficiency #SmallerKeys

### Public-Key Encryption Algorithms #Confidentiality #RSA #ECC
Algorithms used for encrypting data using the recipient's public key.
#### RSA (Rivest–Shamir–Adleman) #Factoring #WidelyUsed #LargeKeys
#### ElGamal Encryption #DiscreteLogarithm #Probabilistic
#### Elliptic Curve Cryptography (ECC) #DiscreteLogarithm #Efficiency #Mobile
##### ECDSA (Elliptic Curve Digital Signature Algorithm) #Signatures #ECC

### Digital Signatures #Authentication #Integrity #NonRepudiation
Mechanisms to verify the authenticity and integrity of digital messages or documents.
#### RSA Signatures #Signing #Verification
#### DSA (Digital Signature Algorithm) #US_Standard #FIPS
#### ECDSA #ECC_Variant #Efficiency

### Public Key Infrastructure (PKI) #Trust #Certificates #Management
Framework for managing public keys and digital certificates.
#### Certificate Authorities (CAs) #TrustedThirdParty #Issuance
#### Digital Certificates (e.g., X.509) #Binding #PublicKeyIdentity
#### Certificate Revocation Lists (CRLs) / OCSP #Validation #RevocationStatus

## Cryptographic Hash Functions #Hashing #Integrity #OneWay
Algorithms that produce a fixed-size hash value (digest) from an arbitrary block of data. Not ciphers, but essential components.

### Properties of Hash Functions #Requirements #SecurityGoals
#### Preimage Resistance #OneWay #HardToReverse
#### Second Preimage Resistance #WeakCollisionResistance #SpecificInput
#### Collision Resistance #StrongCollisionResistance #AnyTwoInputs

### Hash Algorithms #Examples #Standards
#### MD Family (Message Digest) #Legacy #Insecure
##### MD5 #CollisionFound #Obsolete
#### SHA Family (Secure Hash Algorithm) #NIST #Standards
##### SHA-1 #Weaknesses #Deprecated
##### SHA-2 (SHA-224, SHA-256, SHA-384, SHA-512) #WidelyUsed #Secure
##### SHA-3 (Keccak) #NewStandard #DifferentStructure #SPONGE

### Applications of Hash Functions #UseCases #IntegrityChecks
#### Data Integrity Verification #Checksum #FileVerification
#### Password Storage #Salting #HashingPasswords
#### Digital Signatures (Hashing before Signing) #Efficiency #FixedInput
#### Message Authentication Codes (MACs) #HMAC #AuthenticationIntegrity

## Cipher Modes of Operation #BlockCipherModes #SecurityPatterns #Usage
Techniques for applying block ciphers securely to messages longer than one block.

### Modes for Confidentiality #EncryptionModes #Privacy
#### Electronic Codebook (ECB) #Simple #Insecure #Deterministic
#### Cipher Block Chaining (CBC) #Chaining #IV #ErrorPropagation
#### Cipher Feedback (CFB) #StreamCipherFromBlock #IV #SelfSynchronizingSegment
#### Output Feedback (OFB) #StreamCipherFromBlock #IV #NoErrorPropagation
#### Counter (CTR) #Parallelizable #Nonce #Efficient

### Authenticated Encryption (AE / AEAD) #ConfidentialityAndIntegrity #CombinedModes
Modes providing both confidentiality and data authenticity/integrity simultaneously.
#### Galois/Counter Mode (GCM) #CTR_Based #AuthenticationTag #Parallelizable #Efficient
#### Counter with CBC-MAC (CCM) #CTR_CBCMAC #Nonce #Wireless
#### EAX Mode #AEAD #TwoPass
#### OCB Mode (Offset Codebook) #Patented #SinglePass #Efficient

### Initialization Vectors (IVs) and Nonces #Randomness #Uniqueness #SecurityParameter
Requirement for randomness or uniqueness in certain modes to ensure security.

## Cryptanalysis #Codebreaking #AttackVectors #SecurityEvaluation
The study of methods for obtaining the meaning of encrypted information, without access to the secret key.

### Attack Models #AttackerCapabilities #Scenarios
#### Ciphertext-Only Attack (COA) #Weakest #Passive
#### Known-Plaintext Attack (KPA) #Pairs #HistoricalLeaks
#### Chosen-Plaintext Attack (CPA) #Oracle #Active #CommonModel
#### Chosen-Ciphertext Attack (CCA / CCA2) #DecryptionOracle #Strongest #Active

### Classical Cryptanalysis Techniques #HistoricalMethods #ManualAnalysis
#### Frequency Analysis #LetterCounts #LanguageStatistics
#### Kasiski Examination #Vigenere #RepeatedSequences
#### Index of Coincidence (IC) #Polyalphabetic #Statistical

### Modern Cryptanalysis Techniques #Mathematical #Computational
#### Brute-Force Attack #ExhaustiveSearch #KeySpace
#### Dictionary Attack #CommonKeys #Passwords
#### Linear Cryptanalysis #BlockCiphers #Matsui #LinearApproximations
#### Differential Cryptanalysis #BlockCiphers #BihamShamir #XOR_Differences
#### Integral Cryptanalysis #BlockCiphers #SquareAttack
#### Algebraic Attacks #EquationSystems #StructureExploitation

### Side-Channel Attacks #ImplementationAttack #Leakage #Physical
Attacks exploiting information leaked from the physical implementation of a cryptosystem.
#### Timing Attacks #ExecutionTime #Variations
#### Power Analysis (SPA/DPA) #PowerConsumption #Correlations
#### Electromagnetic Attacks #EM_Radiation #Leakage
#### Acoustic Cryptanalysis #Sound #DeviceNoise
#### Fault Analysis #InducingErrors #DifferentialFaultAnalysis

## Implementation and Deployment #PracticalCrypto #Software #Hardware
Practical aspects of using cryptographic ciphers in real-world systems.

### Software Implementation #Libraries #APIs #Code
#### Cryptographic Libraries (e.g., OpenSSL, Libsodium, Bouncy Castle, Tink) #Tools #Frameworks
#### Common Programming Language Support #CryptoAPIs #BuiltinModules
#### Secure Coding Practices #Pitfalls #Vulnerabilities

### Hardware Implementation #Performance #SecurityModules
#### Hardware Security Modules (HSMs) #TamperResistance #KeyManagement
#### Cryptographic Accelerators (e.g., AES-NI) #CPU_Instructions #PerformanceBoost
#### Field-Programmable Gate Arrays (FPGAs) #CustomHardware #HighThroughput
#### Application-Specific Integrated Circuits (ASICs) #DedicatedHardware #Efficiency

### Key Management #Lifecycle #Generation #Storage #Rotation
The process of handling cryptographic keys throughout their lifecycle.
#### Key Generation #Randomness #EntropySources
#### Key Storage #SecureStorage #HSMs #SoftwareKeystores
#### Key Distribution #Protocols #SecureChannels #PKI
#### Key Rotation and Revocation #Policies #SecurityMaintenance

### Common Pitfalls #Mistakes #Vulnerabilities
#### Use of Weak or Deprecated Algorithms #OutdatedCrypto #Insecurity
#### Incorrect Mode Selection #ECB_Misuse #AuthenticationLack
#### Poor Random Number Generation #PredictableIVs #WeakKeys
#### Improper Key Handling #Leaks #HardcodingKeys
#### Side-Channel Vulnerabilities in Implementation #Leakage #Timing

## Cryptographic Standards and Protocols #Interoperability #SecurityFrameworks #Guidelines
Agreed-upon standards and protocols that utilize cryptographic ciphers for secure communication.

### Standards Bodies #Organizations #Specifications
#### NIST (National Institute of Standards and Technology) #FIPS #AES #SHA
#### ISO/IEC (International Organization for Standardization / International Electrotechnical Commission) #ISO_Standards
#### IETF (Internet Engineering Task Force) #RFCs #InternetProtocols

### Secure Communication Protocols #NetworkSecurity #DataProtection
#### TLS/SSL (Transport Layer Security / Secure Sockets Layer) #WebSecurity #HTTPS
#### SSH (Secure Shell) #SecureRemoteAccess #Tunneling
#### IPsec (Internet Protocol Security) #NetworkLayerSecurity #VPNs
#### PGP (Pretty Good Privacy) / GPG (GNU Privacy Guard) #EmailEncryption #FileEncryption
#### WPA2/WPA3 (Wi-Fi Protected Access) #WirelessSecurity #Encryption

### Cryptographic Primitives in Standards #BuildingBlocks #Usage
How ciphers and hash functions are integrated into broader security standards.

## Advanced Topics and Future Directions #EmergingTech #Research #PostQuantum
Current research areas and the future evolution of cryptographic ciphers.

### Quantum Computing Impact #Threat #ShorAlgorithm #GroverAlgorithm
The potential for quantum computers to break currently used public-key algorithms (RSA, ECC, DH) and weaken symmetric algorithms.

### Post-Quantum Cryptography (PQC) #QuantumResistant #NIST_Competition
Developing new cryptographic algorithms resistant to quantum attacks.
#### Lattice-Based Cryptography #HardProblems #Efficiency
#### Code-Based Cryptography #ErrorCorrectingCodes #McEliece
#### Hash-Based Cryptography #Signatures #MinimalAssumptions #Lamport #Merkle
#### Multivariate Cryptography #PolynomialSystems #Signatures
#### Isogeny-Based Cryptography #EllipticCurves #SupersingularIsogenies

### Homomorphic Encryption #ComputationOnCiphertext #PrivacyPreserving
Allows computations to be performed on encrypted data without decrypting it first.

### Zero-Knowledge Proofs #ProofOfKnowledge #Privacy
Methods by which one party (the prover) can prove to another party (the verifier) that they know a value x, without conveying any information apart from the fact that they know the value x.

### Lightweight Cryptography #IoT #ResourceConstrained #Efficiency
Ciphers designed for devices with limited computational power, memory, or energy (e.g., IoT devices, RFID tags).

### Fully Hashed Encryption #SearchableEncryption #EncryptedDatabases
Techniques allowing specific types of searches or queries on encrypted data.

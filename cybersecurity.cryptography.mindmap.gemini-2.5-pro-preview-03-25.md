# Cryptography #Security #Encryption #Overview
The practice and study of techniques for secure communication in the presence of adversaries. Cryptography aims to ensure confidentiality, integrity, authentication, and non-repudiation of information.

## History of Cryptography #History #Evolution
Tracing the development of secret communication methods from ancient times to the modern digital age.

### Classical Ciphers #Ancient #Manual
Early methods of encryption done by hand or simple mechanical devices.
#### Substitution Ciphers #Substitution #Classical
Replacing plaintext units (letters, pairs) with ciphertext units.
##### Caesar Cipher #Caesar #ShiftCipher
Simple shift cipher where each letter is replaced by a letter a fixed number of positions down the alphabet.
##### Monoalphabetic Substitution #SimpleSubstitution #FrequencyAnalysis
Each letter is consistently replaced by another unique letter. Vulnerable to frequency analysis.
##### Polyalphabetic Substitution #Vigenere #Polyalphabetic
Using multiple substitution alphabets to obscure letter frequencies. Example: Vigenère cipher.
##### Playfair Cipher #Playfair #Digraph
Encrypting pairs of letters (digraphs) instead of single letters.
##### Hill Cipher #HillCipher #LinearAlgebra
Using matrix multiplication for encryption.
#### Transposition Ciphers #Transposition #Permutation
Rearranging the order of plaintext letters without changing the letters themselves.
##### Rail Fence Cipher #RailFence #Zigzag
Writing plaintext in a zigzag pattern and reading off row by row.
##### Columnar Transposition #Columnar #Grille
Writing plaintext into a grid and reading off column by column based on a keyword.
#### Rotor Machines #Mechanical #Enigma #Lorenz
Electromechanical devices used primarily during WWII for complex encryption.
##### Enigma Machine #Enigma #WWII #Germany
German rotor machine famous for its complexity and role in WWII communications.
##### Lorenz Cipher #Lorenz #WWII #Tunny
German teleprinter cipher machine used by High Command.

### Early Computer-Era Cryptography #ComputerAge #DES
Development driven by the advent of computers and increasing need for digital security.
#### Lucifer Cipher #Lucifer #IBM #PreDES
An early civilian block cipher developed by IBM, precursor to DES.
#### Data Encryption Standard (DES) #DES #BlockCipher #Standard
Widely adopted symmetric-key block cipher standard, now considered insecure due to small key size.

### Modern Cryptography #Modern #Digital #ProvableSecurity
Characterized by mathematical rigor, public-key concepts, and provable security based on computational hardness.

## Fundamental Concepts #Basics #Theory #Principles
Core ideas and goals underpinning cryptographic systems.

### Security Goals #CIA #SecurityObjectives
The primary objectives that cryptographic systems aim to achieve.
#### Confidentiality #Privacy #Secrecy
Ensuring that information is not understood by unauthorized parties. Achieved through encryption.
#### Integrity #Authenticity #Unaltered
Ensuring that information has not been altered in transit or storage without detection. Achieved through hash functions and MACs.
#### Authentication #Identity #Verification
Verifying the identity of the sender or receiver of information. Achieved through MACs, digital signatures, and protocols.
#### Non-Repudiation #Proof #Accountability
Ensuring that a party cannot deny having sent or received a message or performed an action. Achieved through digital signatures.
#### Availability #Access #Reliability
Ensuring that systems and data are accessible to authorized users when needed (though cryptography primarily focuses on the other goals).

### Basic Terminology #Definitions #Language
Essential terms used in cryptography.
#### Plaintext #Cleartext #OriginalMessage
The original, understandable message before encryption.
#### Ciphertext #EncryptedMessage #Scrambled
The unintelligible, encrypted message.
#### Encryption #Encoding #Scrambling
The process of converting plaintext to ciphertext using a cipher and a key.
#### Decryption #Decoding #Unscrambling
The process of converting ciphertext back to plaintext using a cipher and a key.
#### Cipher #Algorithm #Cryptosystem
The mathematical algorithm or set of procedures used for encryption and decryption.
#### Key #Secret #Parameter
A piece of information (parameter) that controls the operation of a cryptographic algorithm. Security often relies on the secrecy of the key.
#### Cryptosystem #System #Framework
The complete set of elements needed for cryptographic communication: algorithms, keys, key management processes, protocols, and user actions.
#### Cryptanalysis #Codebreaking #Attack
The study and practice of analyzing information systems to study the hidden aspects of the systems; involves breaking cryptographic security systems and gaining access to the contents of encrypted messages, even if the cryptographic key is unknown.
#### Cryptology #Study #CryptographyAndCryptanalysis
The broader field encompassing both cryptography (designing secure systems) and cryptanalysis (breaking systems).

### Mathematical Foundations #Math #NumberTheory #Complexity
Underlying mathematical principles crucial for modern cryptography.
#### Modular Arithmetic #ClockArithmetic #Congruence
Arithmetic operations within a finite set of integers (modulo n).
#### Number Theory #Primes #Divisibility
Properties of integers, particularly prime numbers, factorization, and discrete logarithms.
#### Probability Theory #Randomness #Statistics
Used in analyzing security, designing randomized algorithms, and generating keys.
#### Information Theory #Entropy #Shannon
Concepts like entropy and perfect secrecy (Shannon).
#### Complexity Theory #HardProblems #Efficiency
Defining computational difficulty (hardness) and relating cryptographic security to hard mathematical problems (e.g., factoring, discrete log). One-way functions are central.

## Symmetric-Key Cryptography #SecretKey #SharedKey #Conventional
Encryption methods where the sender and receiver use the *same* secret key for both encryption and decryption.

### Overview #SymmetricConcepts #Efficiency
Faster than asymmetric cryptography but faces key distribution challenges. Requires a secure channel to exchange the key beforehand.
#### Key Distribution Problem #Challenge #KeyExchange
The difficulty of securely sharing the secret key between parties without it being intercepted.

### Stream Ciphers #StreamEncryption #Bitwise
Encrypting data one bit or byte at a time. Often faster and use less hardware than block ciphers, suitable for streaming data.
#### Principles #Keystream #XOR
Generate a pseudorandom keystream and combine it with the plaintext (often using XOR) for encryption.
#### RC4 #RonRivest #WEP #WPA
Once widely used (e.g., in WEP, WPA, early TLS), but known vulnerabilities exist.
#### ChaCha20 / Salsa20 #ModernStream #TLS #WireGuard
Modern, secure, and fast stream ciphers used in protocols like TLS 1.3 and WireGuard.
#### A5/1 #GSM #MobileSecurity
Stream cipher used for GSM mobile phone voice encryption, known to be weak.
#### One-Time Pad (OTP) #PerfectSecrecy #Unbreakable #Theoretical
The only provably unbreakable cipher. Uses a truly random key as long as the message, used only once. Impractical due to key distribution and length requirements.

### Block Ciphers #BlockEncryption #FixedSize
Encrypting data in fixed-size blocks (e.g., 64 or 128 bits). More common than stream ciphers for many applications.
#### Principles #SubstitutionPermutation #Feistel
Operate on fixed-size blocks using rounds of substitution and permutation operations. Common structures include Feistel Networks and Substitution-Permutation Networks (SPNs).
#### Data Encryption Standard (DES) #DES #Legacy #Insecure
Early standard block cipher with a 56-bit key. Now considered insecure due to vulnerability to brute-force attacks.
#### Triple DES (3DES) #TripleDES #Intermediate #Slow
Applying DES three times with two or three different keys to increase effective key size. Slower and being phased out.
#### Advanced Encryption Standard (AES) #AES #Rijndael #Standard
Current global standard. Uses 128, 192, or 256-bit keys and a 128-bit block size. Widely used and considered secure and efficient.
#### Other Block Ciphers #Blowfish #Twofish #Serpent #IDEA
Examples include Blowfish, Twofish, Serpent, IDEA, CAST, etc.

### Modes of Operation #BlockCipherModes #Chaining #Padding
Techniques for applying block ciphers securely to messages longer than a single block. Addresses issues like identical plaintext blocks encrypting to identical ciphertext blocks.
#### Electronic Codebook (ECB) #ECB #InsecureMode
Simplest mode. Encrypts each block independently. Insecure as identical plaintext blocks yield identical ciphertext blocks, revealing patterns. Avoid using.
#### Cipher Block Chaining (CBC) #CBC #Chaining #IV
Each plaintext block is XORed with the previous ciphertext block before encryption. Requires an Initialization Vector (IV) for the first block. Common but requires careful implementation regarding IVs and padding.
#### Cipher Feedback (CFB) #CFB #StreamMode
Turns a block cipher into a self-synchronizing stream cipher. Encrypts previous ciphertext block, XORs output with plaintext.
#### Output Feedback (OFB) #OFB #StreamMode #NoPropagation
Turns a block cipher into a synchronous stream cipher. Keystream generated independently of plaintext/ciphertext. Errors don't propagate.
#### Counter (CTR) #CTR #Parallelizable #Efficient
Turns a block cipher into a synchronous stream cipher using a counter. Allows parallel encryption/decryption and random access. Widely recommended.
#### Galois/Counter Mode (GCM) #GCM #AEAD #AuthenticatedEncryption
Provides both confidentiality (CTR mode) and data authenticity/integrity (using GHASH). Efficient and widely used (e.g., TLS 1.2, TLS 1.3). Authenticated Encryption with Associated Data (AEAD).
#### Other Modes (XTS, CCM, etc.) #DiskEncryption #AEAD
Modes designed for specific purposes like disk encryption (XTS-AES) or combining confidentiality and integrity (CCM).

## Asymmetric-Key Cryptography #PublicKey #KeyPairs
Uses a pair of keys: a public key (shared freely) and a private key (kept secret). One key encrypts, the other decrypts. Solves the key distribution problem of symmetric crypto.

### Overview #AsymmetricConcepts #KeyPairs #Trapdoor
Based on mathematical problems (trapdoor functions) that are easy to compute in one direction but hard to reverse without special information (the private key). Slower than symmetric cryptography.
#### Public Key #Distribution #Encryption #Verification
Made available to anyone. Used for encrypting messages intended for the private key holder or verifying digital signatures made with the private key.
#### Private Key #Secret #Decryption #Signing
Kept secret by the owner. Used for decrypting messages encrypted with the corresponding public key or creating digital signatures.
#### Trapdoor Functions #OneWayFunction #SecretInformation
Functions easy to compute but hard to invert without the secret "trapdoor" information (private key).

### Key Exchange Algorithms #KeyAgreement #SharedSecret
Allows two parties to establish a shared secret key over an insecure channel without prior shared secrets. This shared secret is often then used for symmetric encryption.
#### Diffie-Hellman Key Exchange (DH) #DH #KeyAgreement #DiscreteLog
Allows two parties to establish a shared secret based on the difficulty of the discrete logarithm problem. Vulnerable to Man-in-the-Middle (MitM) attacks if unauthenticated.
#### Elliptic Curve Diffie-Hellman (ECDH) #ECDH #ECC #EfficientKeyExchange
A variant of Diffie-Hellman using elliptic curve mathematics. Provides equivalent security with smaller key sizes, making it more efficient.

### Public-Key Encryption Algorithms #AsymmetricEncryption #Confidentiality
Algorithms used to encrypt messages using the recipient's public key, ensuring only the recipient (with the private key) can decrypt.
#### RSA Cryptosystem #RSA #Factoring #Encryption #Signatures
Named after Rivest, Shamir, Adleman. Security based on the difficulty of factoring large integers. Can be used for both encryption and digital signatures. Requires careful implementation (padding schemes like OAEP).
#### ElGamal Encryption Scheme #ElGamal #DiscreteLog #Encryption
Based on the difficulty of the discrete logarithm problem (similar to Diffie-Hellman). Primarily used for encryption.
#### Elliptic Curve Cryptography (ECC) #ECC #SmallerKeys #Efficiency
An approach using the algebraic structure of elliptic curves over finite fields. Algorithms like ECDSA (signatures) and ECIES (encryption) offer similar security to RSA/ElGamal with much smaller keys, leading to performance benefits.

## Cryptographic Hash Functions #Hashing #Integrity #Fingerprint
Algorithms that take an arbitrary-length input message and produce a fixed-size output string (the hash value or message digest). Designed to be one-way and collision-resistant.

### Properties #HashProperties #SecurityRequirements
Essential security characteristics of cryptographic hash functions.
#### Preimage Resistance (One-Way) #OneWay #HardToInvert
Given a hash value `h`, it should be computationally infeasible to find any input `m` such that `hash(m) = h`.
#### Second Preimage Resistance #WeakCollisionResistance
Given an input `m1`, it should be computationally infeasible to find a *different* input `m2` such that `hash(m1) = hash(m2)`.
#### Collision Resistance #StrongCollisionResistance
It should be computationally infeasible to find *any* two distinct inputs `m1` and `m2` such that `hash(m1) = hash(m2)`.

### Hash Algorithms #HashingAlgorithms #Standards
Specific implementations of hash functions.
#### MD5 (Message Digest 5) #MD5 #Legacy #Insecure
Older hash function producing a 128-bit hash. Known collision vulnerabilities; should not be used for security purposes.
#### SHA-1 (Secure Hash Algorithm 1) #SHA1 #Legacy #Weak
Produces a 160-bit hash. Theoretical and practical collision attacks exist. Being phased out.
#### SHA-2 Family (SHA-224, SHA-256, SHA-384, SHA-512) #SHA2 #Standard #Secure
Currently recommended standard. Includes variants with different output sizes (e.g., SHA-256 is common). Considered secure.
#### SHA-3 (Keccak) #SHA3 #Keccak #NewStandard
New standard selected through NIST competition. Based on a different structure ("sponge construction") than SHA-1/SHA-2. Provides an alternative if weaknesses are found in SHA-2.
#### Whirlpool #Whirlpool #ISOStandard
Hash function standardized by ISO/IEC. Uses a Miyaguchi–Preneel structure based on a modified AES block cipher.
#### BLAKE2 / BLAKE3 #BLAKE #Fast #Modern
Modern, high-performance hash functions often faster than SHA-2/SHA-3 in software.

### Applications of Hash Functions #HashingUses
Common use cases for cryptographic hash functions.
#### Data Integrity Verification #Checksum #FileIntegrity
Hashing a file or message allows verification that it hasn't been altered by comparing its hash before and after transmission/storage.
#### Password Storage #PasswordHashing #Security
Storing hashes of passwords (often salted and stretched) instead of plaintext passwords prevents attackers from easily obtaining passwords if a database is breached.
#### Digital Signatures #MessageDigest #Signing
Hashing a message before signing makes the signature process more efficient and secure.
#### Pseudorandom Number Generation #PRNG #Hashing
Hash functions can be used as components in pseudorandom number generators.

## Digital Signatures #Authentication #Integrity #NonRepudiation
Asymmetric cryptography mechanism providing authentication, integrity, and non-repudiation for digital messages or documents.

### Process #Signing #Verification
How digital signatures are created and verified.
#### Signing #PrivateKey #HashAndEncrypt
The sender hashes the message, then encrypts the hash with their *private* key. The original message and the signature are sent together.
#### Verification #PublicKey #DecryptAndCompare
The receiver gets the message and signature. They decrypt the signature using the sender's *public* key to recover the original hash. They independently hash the received message. If the two hashes match, the signature is valid (proving sender identity and message integrity).

### Digital Signature Algorithms #DSA #RSA #ECDSA
Specific algorithms used for digital signatures.
#### RSA Signatures #RSA #Factoring #Signatures
Using the RSA algorithm for signing (encrypting hash with private key). Requires padding schemes like PSS for security.
#### Digital Signature Algorithm (DSA) #DSA #DiscreteLog #Standard
US government standard based on the discrete logarithm problem.
#### Elliptic Curve Digital Signature Algorithm (ECDSA) #ECDSA #ECC #EfficientSignatures
Elliptic curve variant of DSA. Widely used due to smaller key sizes and efficiency (e.g., in Bitcoin, TLS).

### Public Key Infrastructure (PKI) #PKI #Certificates #Trust
Framework of policies, standards, hardware, software, and people used to manage public keys and bind them to identities via digital certificates.
#### Digital Certificates #X509 #IdentityBinding
Electronic documents (e.g., X.509 standard) that use a digital signature to bind a public key with an identity (person, organization, device). Issued by Certificate Authorities (CAs).
#### Certificate Authorities (CAs) #CA #TrustAnchor
Trusted third parties that issue and manage digital certificates. They verify the identity of the certificate requestor before issuing.
#### Certificate Revocation Lists (CRLs) #CRL #Revocation
Lists of certificates that have been revoked by the CA before their scheduled expiration date (e.g., due to key compromise).
#### Online Certificate Status Protocol (OCSP) #OCSP #RealTimeCheck
A protocol for checking the revocation status of a certificate in real-time without needing large CRLs.

## Cryptographic Protocols #SecureCommunication #Protocols
Standardized procedures that use cryptographic primitives to achieve security goals in communication systems.

### Secure Communication Protocols #NetworkSecurity #TLS #SSH #IPsec
Protocols designed to secure data transmission over networks.
#### Transport Layer Security (TLS) / Secure Sockets Layer (SSL) #TLS #SSL #WebSecurity
Secures communication over computer networks (most notably HTTPS for web traffic). Provides confidentiality, integrity, and authentication using a combination of symmetric and asymmetric cryptography, hash functions, and certificates. SSL is the predecessor and insecure; TLS (1.2, 1.3) is the current standard.
#### Secure Shell (SSH) #SSH #RemoteAccess #SecureLogin
Protocol for secure remote login, command execution, and other secure network services over an insecure network.
#### Internet Protocol Security (IPsec) #IPsec #VPN #NetworkLayerSecurity
Suite of protocols for securing IP communications by authenticating and encrypting each IP packet. Often used for VPNs.
#### Pretty Good Privacy (PGP) / GnuPG (GPG) #PGP #GPG #EmailSecurity
Provides cryptographic privacy and authentication for data communication, commonly used for signing, encrypting, and decrypting emails, files, and directories.
#### Kerberos #AuthenticationProtocol #NetworkAuth
Network authentication protocol designed to provide strong authentication for client/server applications using secret-key cryptography. Uses tickets to authenticate users.
#### Signal Protocol #Signal #EndToEndEncryption #Messaging
Cryptographic protocol providing end-to-end encryption for instant messaging. Used by WhatsApp, Signal Messenger, etc. Known for advanced security features like forward secrecy and post-compromise security.

### Authentication Protocols #IdentityVerification #Protocols
Protocols specifically focused on verifying the identity of users or systems.
#### Password Authentication Protocol (PAP) #PAP #InsecureAuth
Simple authentication protocol sending username/password in cleartext. Insecure.
#### Challenge-Handshake Authentication Protocol (CHAP) #CHAP #ChallengeResponse
Uses a challenge-response mechanism with a shared secret to authenticate without sending the secret over the network. More secure than PAP.
#### Extensible Authentication Protocol (EAP) #EAP #AuthenticationFramework
An authentication framework, not a specific mechanism. Allows various authentication methods (EAP-TLS, EAP-TTLS, PEAP) within protocols like PPP, Wi-Fi (WPA/WPA2/WPA3), and wired networks (IEEE 802.1X).

### Specialized Protocols #SpecificApplications #AdvancedProtocols
Protocols designed for specific advanced cryptographic tasks.
#### Secure Multi-Party Computation (SMPC / MPC) #MPC #CollaborativeComputation
Allows multiple parties to jointly compute a function over their inputs while keeping those inputs private.
#### Zero-Knowledge Proofs (ZKP) #ZKP #ProofOfKnowledge
Allows one party (the prover) to convince another party (the verifier) that a statement is true, without revealing any information beyond the truth of the statement itself.
#### Secret Sharing #SecretSplitting #ThresholdCryptography
Distributing a secret among a group of participants, each allocated a share. The secret can only be reconstructed when a sufficient number (threshold) of shares are combined.
#### Oblivious Transfer (OT) #ObliviousTransfer #SecureChoice
Protocol where a sender transfers one of potentially many pieces of information to a receiver, but remains oblivious as to which piece (if any) has been transferred.

## Key Management #Lifecycle #Keys #Distribution #Storage
Processes and infrastructure for handling cryptographic keys throughout their lifecycle. Critical for overall security.

### Key Generation #Creation #Randomness
Creating keys using secure random or pseudorandom number generators. Key strength depends on randomness and length.
#### Random Number Generation (RNG) #RNG #Entropy
Generating unpredictable numbers essential for key creation. True Random Number Generators (TRNGs) use physical phenomena; Pseudorandom Number Generators (PRNGs/CSPRNGs) use algorithms.

### Key Distribution / Agreement #Sharing #Exchange
Securely providing keys to the intended parties. Methods include manual transport, PKI, and key exchange protocols (DH, ECDH).

### Key Storage #Protection #HSM
Securing keys while stored, preventing unauthorized access or disclosure. Often involves encryption or specialized hardware (HSMs).

### Key Usage #Application #Policy
Defining policies for how and when keys should be used, including algorithm choices and operational procedures.

### Key Revocation #Invalidation #Compromise
Deactivating keys before their expiration date, typically due to compromise or change in status. Managed via CRLs or OCSP in PKI.

### Key Backup and Recovery #Contingency #Escrow
Procedures for backing up keys to prevent data loss and recovering them if necessary (e.g., key escrow for legal/corporate purposes).

### Key Lifecycle Management #FullCycle #Policy
Comprehensive management of keys from creation to destruction according to defined policies and procedures.

## Cryptanalysis #BreakingCiphers #Attacks
The study of methods for obtaining the meaning of encrypted information without access to the secret key normally required to do so. Analyzing weaknesses in cryptographic algorithms or protocols.

### Attack Models #AttackerCapabilities #Scenarios
Assumptions about the attacker's capabilities and access to the system.
#### Ciphertext-Only Attack (COA) #COA #WeakestModel
Attacker only has access to ciphertext.
#### Known-Plaintext Attack (KPA) #KPA #PlaintextPairs
Attacker has access to some pairs of plaintext and corresponding ciphertext.
#### Chosen-Plaintext Attack (CPA) #CPA #EncryptionOracle
Attacker can choose arbitrary plaintexts and obtain their corresponding ciphertexts. This models scenarios where attackers can influence what gets encrypted.
#### Chosen-Ciphertext Attack (CCA / CCA2) #CCA #DecryptionOracle
Attacker can choose arbitrary ciphertexts and obtain their corresponding plaintexts (decryption oracle). CCA2 is adaptive (choices can depend on previous results). Strongest model for encryption schemes.

### Attack Techniques #Methods #BreakingStrategies
Specific methods used to break cryptosystems.
#### Brute-Force Attack #ExhaustiveSearch #KeySpace
Trying every possible key until the correct one is found. Feasibility depends on key size and computational resources.
#### Frequency Analysis #StatisticalAttack #Classical
Analyzing the frequency of letters or symbols in ciphertext to break classical substitution ciphers.
#### Dictionary Attack #PasswordCracking #CommonWords
Trying common words, phrases, or known passwords as keys or inputs.
#### Birthday Attack #CollisionAttack #HashFunctions
Exploits the mathematics behind the birthday problem to find collisions in hash functions more efficiently than brute force.
#### Differential Cryptanalysis #BlockCipherAttack #DifferencePropagation
Analyzing how differences in plaintext inputs propagate through the rounds of a block cipher.
#### Linear Cryptanalysis #BlockCipherAttack #LinearApproximation
Using linear approximations to describe the behavior of block ciphers and find key bits.
#### Side-Channel Attacks #ImplementationAttack #PhysicalLeakage
Exploiting information leaked from the *physical implementation* of a cryptosystem, rather than theoretical weaknesses. Examples include timing attacks, power analysis, electromagnetic analysis, acoustic cryptanalysis.
#### Man-in-the-Middle (MitM) Attack #Impersonation #Eavesdropping
Attacker secretly relays and possibly alters communication between two parties who believe they are directly communicating. Often targets key exchange protocols.
#### Replay Attack #MessageReplay #OldMessages
Attacker intercepts a message and later retransmits it to impersonate the legitimate sender or disrupt the system. Often mitigated by nonces or timestamps.

## Applications of Cryptography #UseCases #RealWorld
Where and how cryptographic techniques are employed in practice.

### Secure Communication #Confidentiality #Integrity #Authentication
Protecting data transmitted over networks (Internet, mobile, etc.).
#### Internet Security (HTTPS, TLS/SSL, VPNs, SSH) #WebSecurity #NetworkSecurity
Securing web browsing, remote connections, virtual private networks.
#### Email Security (PGP, S/MIME) #EmailEncryption #EmailSigning
Encrypting and signing emails for confidentiality and authentication.
#### Secure Messaging (Signal, WhatsApp) #EndToEndEncryption #E2EE
Providing end-to-end encrypted chat applications.
#### Wireless Security (WPA2, WPA3) #WiFiSecurity #MobileSecurity
Securing Wi-Fi networks and mobile communications.

### Data Encryption #DataAtRest #DataInTransit
Protecting data stored on devices or transmitted across networks.
#### Full Disk Encryption (FDE) #DiskEncryption #BitLocker #FileVault #LUKS
Encrypting entire storage volumes (hard drives, SSDs).
#### File/Folder Encryption #FileEncryption #EFS #VeraCrypt
Encrypting individual files or folders.
#### Database Encryption #DatabaseSecurity #TDE
Encrypting sensitive data stored within databases.

### Digital Currencies / Blockchain #Cryptocurrency #Bitcoin #Blockchain
Using cryptographic techniques (hashing, digital signatures, ECC) to secure transactions and maintain distributed ledgers.

### Authentication Systems #Login #AccessControl
Verifying user identities for access to systems and resources (passwords, tokens, biometrics often involve cryptographic hashing or protocols).

### Digital Rights Management (DRM) #DRM #ContentProtection
Using encryption to control access to copyrighted digital media.

### Electronic Voting #eVoting #SecureVoting
Applying cryptographic techniques (e.g., homomorphic encryption, blind signatures) to attempt secure and verifiable electronic voting systems.

### Code Signing #SoftwareIntegrity #Authenticity
Using digital signatures to verify the publisher of software and ensure it hasn't been tampered with.

## Advanced Cryptographic Primitives & Concepts #CuttingEdge #SpecializedTools
More complex or specialized cryptographic building blocks and ideas.

### Zero-Knowledge Proofs (ZKP) #ZKP #PrivacyPreserving
Proving knowledge of a secret without revealing the secret itself. Interactive and non-interactive (NIZK) variants. Applications in authentication, blockchain privacy.

### Homomorphic Encryption #HE #ComputeOnCiphertext
Allows computations (e.g., addition, multiplication) to be performed directly on ciphertexts, yielding an encrypted result which, when decrypted, matches the result of operations performed on the plaintext. Enables privacy-preserving outsourcing of computation.

### Secure Multi-Party Computation (SMPC / MPC) #MPC #DistributedComputation
Enables multiple parties to jointly compute a function using their private inputs without revealing those inputs to each other.

### Elliptic Curve Cryptography (ECC) Deep Dive #ECCDetails #Curves #Pairings
Further exploration of specific curves (e.g., Curve25519), pairing-based cryptography, and advanced ECC applications.

### Lightweight Cryptography #LWC #IoT #ResourceConstrained
Cryptographic algorithms designed for resource-constrained environments like IoT devices, RFID tags, embedded systems. Focus on low power, small footprint, and efficiency.

### Format-Preserving Encryption (FPE) #FPE #DataMasking
Encryption methods where the ciphertext has the same format as the plaintext (e.g., encrypting a credit card number results in another number of the same length). Used for integrating encryption into legacy systems with rigid data formats.

### Searchable Encryption #EncryptedSearch #PrivacyPreservingQuery
Allows searching over encrypted data without decrypting it first.

### Threshold Cryptography #DistributedKeys #FaultTolerance
Distributing cryptographic operations (like signing or decryption) among multiple parties, requiring a threshold number to collaborate. Increases security and availability.

## Quantum Computing and Cryptography #Quantum #Future #PQC #QKD
The impact of quantum computers on current cryptography and the development of quantum-resistant methods.

### Quantum Threat #ShorAlgorithm #GroverAlgorithm
How quantum algorithms threaten current cryptographic standards.
#### Shor's Algorithm #Factoring #DiscreteLog #RSA #ECCThreat
Efficiently solves integer factorization and discrete logarithm problems on a quantum computer, breaking RSA, DH, ECDH, DSA, ECDSA.
#### Grover's Algorithm #Search #SymmetricKeyThreat
Provides a quadratic speedup for unstructured search problems, effectively reducing the security of symmetric keys (e.g., halving the effective bits of security for AES against brute-force).

### Post-Quantum Cryptography (PQC) #QuantumResistant #NISTPQC
Developing classical cryptographic algorithms believed to be resistant to attacks by both classical and quantum computers.
#### NIST PQC Standardization #Competition #NewStandards
Ongoing effort by NIST to select and standardize PQC algorithms.
#### Lattice-Based Cryptography #Lattices #PQC #HardProblems
Based on the hardness of problems on mathematical lattices (e.g., Shortest Vector Problem - SVP, Learning With Errors - LWE). Leading candidates in PQC.
#### Code-Based Cryptography #ErrorCorrectingCodes #McEliece #PQC
Based on the difficulty of decoding general linear error-correcting codes. McEliece cryptosystem is an example.
#### Hash-Based Signatures #HashingSignatures #Lamport #Merkle #PQC
Signatures built solely from hash functions. Statefulness can be a challenge, but stateless schemes (e.g., SPHINCS+) exist. Security well understood.
#### Multivariate Cryptography #PolynomialSystems #PQC
Based on the hardness of solving systems of multivariate polynomial equations over finite fields.
#### Isogeny-Based Cryptography #EllipticCurveIsogenies #SIDH #PQC
Uses maps (isogenies) between elliptic curves. Relatively new area compared to others. (Note: SIKE, a prominent candidate, was recently broken).

### Quantum Key Distribution (QKD) #QKD #PhysicsBased #SecureKeyExchange
Uses principles of quantum mechanics (like photon polarization) to establish a shared secret key between two parties in a way that detects any eavesdropping attempt. Relies on physics, not computational hardness, but faces practical deployment challenges (distance limits, specialized hardware).

## Hardware Security #Hardware #HSM #TPM
Physical devices designed to protect cryptographic keys and perform cryptographic operations securely.

### Hardware Security Modules (HSMs) #HSM #KeyProtection #CryptoAcceleration
Dedicated hardware devices that safeguard and manage digital keys, perform encryption/decryption, and provide strong authentication. Offer high levels of security and performance. Tamper-resistant.
#### Features #TamperResistance #SecureGeneration #Performance
Secure key generation/storage, cryptographic acceleration, access control, auditing.
#### Use Cases #PKI #DatabaseEncryption #PaymentProcessing
Root key protection for PKI, database encryption keys, payment processing (PIN translation, card verification), TLS acceleration.

### Trusted Platform Modules (TPMs) #TPM #EndpointSecurity #PlatformIntegrity
A specification for a secure cryptoprocessor chip that can store cryptographic keys specific to the host system for hardware authentication. Found in many PCs/laptops. Used for platform integrity measurement, disk encryption key protection, authentication.

### Secure Elements (SEs) #SecureElement #MobileSecurity #SmartCards
Tamper-resistant hardware platform (e.g., a chip) capable of securely hosting applications and their confidential data (like keys) and performing crypto operations. Found in smart cards, SIM cards, smartphones (e.g., for NFC payments).

## Legal and Ethical Aspects #Law #Ethics #Policy #Surveillance
Societal, legal, and ethical considerations surrounding the use and regulation of cryptography.

### Export Controls #Regulations #Wassenaar
Government regulations controlling the export of cryptographic technology. Historically strict, now somewhat relaxed for mass-market products but still relevant for strong/custom crypto. (e.g., Wassenaar Arrangement).
### Key Escrow / Key Disclosure Laws #LawEnforcementAccess #Backdoors
Proposals or laws requiring ways for third parties (like governments) to access encrypted data under certain conditions, often via key escrow or compelled key disclosure. Highly controversial due to security and privacy implications.
### Surveillance Debates #Privacy #Security #GovernmentAccess
Ongoing debate about balancing individual privacy and security provided by strong encryption against the needs of law enforcement and intelligence agencies to investigate crime and terrorism.
### Digital Rights #PrivacyRights #FreedomOfSpeech
The role of cryptography in protecting fundamental rights like privacy and freedom of expression online.
### Cryptography Policy #NationalPolicies #StandardsAdoption
Government and organizational policies regarding the required use, standards, and management of cryptography.

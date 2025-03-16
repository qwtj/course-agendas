# I. Introduction to Cryptography

## Understanding Basic Concepts

### Defining Cryptography, Cryptanalysis, and Cryptology

### Exploring the History of Cryptography

### Identifying Goals of Cryptography: Confidentiality, Integrity, Availability, Authentication, and Non-Repudiation (CIAAN)

## Cryptographic Terminology

### Plaintext and Ciphertext

### Encryption and Decryption Algorithms

### Keys: Symmetric and Asymmetric

### Ciphers and Codes

# II. Symmetric-Key Cryptography

## Introduction to Symmetric-Key Algorithms

### Understanding the principles of symmetric-key cryptography

### Advantages and disadvantages compared to asymmetric-key cryptography

## Block Ciphers

### DES (Data Encryption Standard)

### 3DES (Triple DES)

### AES (Advanced Encryption Standard)

   *   AES Variants (AES-128, AES-192, AES-256)
   *   AES implementation in `OpenSSL`: ```openssl enc -aes-256-cbc -salt -in plaintext.txt -out ciphertext.enc```

### Block Cipher Modes of Operation

   *   ECB (Electronic Codebook)
   *   CBC (Cipher Block Chaining)
   *   CTR (Counter)
   *   GCM (Galois/Counter Mode)

## Stream Ciphers

### RC4

### Salsa20

### ChaCha20

## Key Management in Symmetric-Key Cryptography

### Key Generation

### Key Exchange (Diffie-Hellman for pre-shared keys)

### Key Storage

# III. Asymmetric-Key Cryptography

## Introduction to Asymmetric-Key Algorithms

### Understanding the principles of asymmetric-key cryptography

### Public and Private Keys

### Applications: Encryption, Digital Signatures, Key Exchange

## RSA (Rivest-Shamir-Adleman)

### RSA Algorithm Explanation

### Key Generation in RSA

### Encryption and Decryption in RSA

### Practical Example: `openssl genrsa -out private.pem 2048`

### `openssl rsa -in private.pem -pubout -out public.pem`

## Elliptic Curve Cryptography (ECC)

### Understanding Elliptic Curves

### Elliptic Curve Diffie-Hellman (ECDH)

### Elliptic Curve Digital Signature Algorithm (ECDSA)

## Digital Certificates

### X.509 Certificates

### Certificate Authorities (CAs)

### Certificate Revocation Lists (CRLs)

### Practical Example: Generating and verifying a self-signed certificate using `openssl`

# IV. Hashing Algorithms

## Introduction to Hashing

### Understanding Hashing Concepts

### Properties of Hash Functions: Preimage Resistance, Second Preimage Resistance, Collision Resistance

### Applications of Hashing: Data Integrity, Password Storage, Digital Signatures

## Common Hashing Algorithms

### MD5

### SHA-1

### SHA-256

   *   `sha256sum`: Practical hashing in command line. Example: `sha256sum myfile.txt`

### SHA-3

## Password Storage

### Salting Passwords

### Key Derivation Functions (KDFs): PBKDF2, bcrypt, Argon2

# V. Cryptographic Protocols

## Secure Shell (SSH)

### SSH Key Exchange

### SSH Encryption

### SSH Authentication

## Transport Layer Security (TLS) / Secure Sockets Layer (SSL)

### TLS/SSL Handshake Protocol

### Certificate Validation

### Cipher Suite Negotiation

### Understanding HTTPS

## Internet Protocol Security (IPsec)

### IPsec Architecture

### Authentication Header (AH)

### Encapsulating Security Payload (ESP)

### VPNs and IPsec

# VI. Cryptanalysis

## Introduction to Cryptanalysis

### Types of Attacks: Ciphertext Only, Known Plaintext, Chosen Plaintext, Chosen Ciphertext

### Brute-Force Attacks

### Frequency Analysis

### Differential Cryptanalysis

### Linear Cryptanalysis

## Side-Channel Attacks

### Timing Attacks

### Power Analysis

### Electromagnetic Radiation Attacks

## Social Engineering

### Phishing

### Pretexting

### Baiting

# VII. Applied Cryptography and Security

## Cryptographic Libraries

### OpenSSL

### Bouncy Castle

### PyCryptodome (Python)

## Cryptography in Programming

### Using cryptographic libraries in code examples (Python, Java)

### Secure coding practices

## Practical Applications

### Securing web applications

### Securing databases

### Data encryption at rest and in transit

## Cryptographic Standards and Regulations

### FIPS

### GDPR

### HIPAA

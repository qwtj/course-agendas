# DNSSEC #Overview #DomainNameSystem #Security
Domain Name System Security Extensions (DNSSEC) provides mechanisms for authenticating the origin of DNS data and verifying its integrity, helping to mitigate threats like DNS spoofing and cache poisoning.

## Introduction and Motivation #Basics #ProblemStatement #Goals
Understanding the need for DNSSEC and its fundamental objectives.

### The Problem: DNS Vulnerabilities #Security #Threats #DNS
Limitations of the original DNS protocol leading to security risks.
#### DNS Cache Poisoning (Spoofing) #AttackVector #ManInTheMiddle
Explaining how attackers can inject false DNS data into resolving caches.
#### Lack of Data Origin Authentication #Weakness #Authentication
Original DNS does not verify if the received data came from the authoritative source.
#### Lack of Data Integrity #Weakness #Integrity
Original DNS does not guarantee that the data hasn't been tampered with in transit.

### DNSSEC Goals #Objectives #SecurityProperties
What DNSSEC aims to achieve.
#### Data Origin Authentication #Goal #Authentication
Ensuring responses truly come from the authoritative zone administrator.
#### Data Integrity Protection #Goal #Integrity
Ensuring responses have not been modified during transit.
#### Authenticated Denial of Existence #Goal #NSEC #NSEC3
Securely proving that a requested domain name or record type does not exist.

### What DNSSEC Does NOT Do #Limitations #Scope
Clarifying the boundaries of DNSSEC protection.
#### Does Not Provide Confidentiality (Encryption) #Encryption #Privacy
DNSSEC data is signed, not encrypted; queries and responses are still public.
#### Does Not Protect Against DDoS Attacks #DDoS #Availability
DNSSEC does not inherently prevent Distributed Denial of Service attacks against DNS infrastructure.
#### Does Not Guarantee Correctness of Zone Data #Configuration #Accuracy
It authenticates the source, not the accuracy of the data itself (garbage in, garbage out).

## Core DNSSEC Concepts #Fundamentals #BuildingBlocks #Terminology
Essential elements and terms used in DNSSEC.

### Digital Signatures #Cryptography #Integrity #Authentication
Using cryptographic signatures to verify data.
#### Public Key Cryptography Basics #AsymmetricKey #PKI
Brief overview of how public/private key pairs work.
#### Hashing Algorithms #Hashing #IntegrityCheck
Generating fixed-size fingerprints of data.
#### Signing Process #Process #Keys
Using a private key to create a signature over DNS data.
#### Verification Process #Process #Keys
Using a public key to verify a signature.

### Trust Anchors #Trust #Validation #Configuration
Starting points for DNSSEC validation.
#### Definition and Purpose #Concept #RootTrust
A configured public key (or hash of it) for a specific zone, used to start the validation chain.
#### Root Zone Trust Anchor #RootZone #IANA #ICANN
The trust anchor for the DNS root zone, essential for global validation.
#### Managing Trust Anchors #Operations #Configuration
How resolvers obtain and update trust anchors (e.g., RFC 5011 automated updates).

### Chain of Trust #Hierarchy #Validation #Delegation
How trust extends from the root zone down through the DNS hierarchy.
#### Parent-Child Relationships #DNS #Delegation
How zones delegate authority for subdomains.
#### DS Records #RecordType #DelegationSigner
Delegation Signer records linking a parent's trust in a child's key.
#### Validation Path #Process #Verification
Tracing signatures and DS records from the requested domain back to a trust anchor.

## Cryptography in DNSSEC #Security #Algorithms #Keys
The cryptographic algorithms and key types used.

### Key Types #Keys #Cryptography
Different roles of keys in DNSSEC.
#### Zone Signing Key (ZSK) #ZSK #Signing
Used frequently to sign RRsets within a zone. Usually shorter lifetime, rolled over more often.
#### Key Signing Key (KSK) #KSK #Signing #Trust
Used less frequently, specifically to sign the DNSKEY RRset (including the ZSK public keys). The public KSK is what's represented in the parent zone's DS record. Usually longer lifetime.
#### Combined Signing Key (CSK) #CSK #Simplicity
Using a single key for both ZSK and KSK functions (less common, potentially less secure).

### Cryptographic Algorithms #Algorithms #Standards #IANA
Supported signature and hashing algorithms.
#### Algorithm Number Registry #IANA #Standards
IANA maintains a registry of DNSSEC algorithm numbers.
#### RSA Variants (e.g., RSA/SHA-256, RSA/SHA-512) #RSA #Hashing
Widely used asymmetric algorithm.
#### ECDSA Variants (e.g., ECDSA P-256/SHA-256) #ECDSA #EllipticCurve
Elliptic Curve Digital Signature Algorithm, offering smaller keys for similar strength.
#### EdDSA Variants (e.g., Ed25519) #EdDSA #ModernCrypto
Edwards-curve Digital Signature Algorithm, known for performance and security features.
#### Hash Algorithms (SHA-1, SHA-256, SHA-384, SHA-512) #Hashing #IntegrityCheck
Used for creating digests for signatures and DS records. (SHA-1 is deprecated).

### Key Sizes and Strength #Security #BestPractices
Choosing appropriate key lengths for adequate security.

## DNSSEC Record Types #Data #Syntax #RRTypes
New DNS Resource Records introduced by DNSSEC.

### RRSIG (Resource Record Signature) #Signature #RecordType #Verification
Contains the cryptographic signature for an RRset.
#### Structure and Fields #Syntax #Details
Type Covered, Algorithm, Labels, Original TTL, Signature Expiration, Signature Inception, Key Tag, Signer's Name, Signature.

### DNSKEY (DNS Public Key) #PublicKey #RecordType #Keys
Contains the public keys (ZSKs and KSKs) for a zone.
#### Structure and Fields #Syntax #Details
Flags (Zone Key, Secure Entry Point), Protocol, Algorithm, Public Key data.
#### Secure Entry Point (SEP) Flag #KSK #Flag
Indicates a key intended to be used as a KSK (referenced by DS records).

### DS (Delegation Signer) #Delegation #RecordType #ChainOfTrust
Located in the parent zone, points to a child zone's KSK.
#### Structure and Fields #Syntax #Details
Key Tag, Algorithm, Digest Type, Digest (hash of the child's DNSKEY record).
#### Purpose in Linking Zones #Hierarchy #Validation

### NSEC (Next Secure) #AuthenticatedDenial #RecordType #Enumeration
Provides authenticated denial of existence by linking existing names in a sorted zone. Also lists the record types present at an existing name.
#### Structure and Fields #Syntax #Details
Next Domain Name, Type Bitmaps.
#### Zone Walking Vulnerability #Security #Privacy #Limitation
Allows enumeration of all records within a zone.

### NSEC3 (Next Secure Version 3) #AuthenticatedDenial #RecordType #Obfuscation
Provides authenticated denial without allowing easy zone enumeration. Uses hashed owner names.
#### Structure and Fields #Syntax #Details
Hash Algorithm, Flags (Opt-Out), Iterations, Salt, Next Hashed Owner Name, Type Bitmaps.
#### NSEC3 Parameters (Salt, Iterations) #Configuration #Security
Tuning parameters for security and performance.
#### Opt-Out Flag #Delegation #Efficiency
Allows skipping signing for insecure delegations below a certain point.
#### Precomputation Attacks #Security #Limitation #OfflineAttack
While harder than NSEC zone walking, offline dictionary attacks are possible.

### CDS and CDNSKEY (Child DS / Child DNSKEY) #Automation #KeyRollover #RFC7344
Allows child zones to signal desired DS/DNSKEY changes to the parent zone automatically.

## The Chain of Trust #Validation #Hierarchy #Process
How DNSSEC validation links secure zones together.

### Establishing the Root Trust #RootZone #IANA #TrustAnchor
Starting validation with the root zone's public key.

### Following Delegations #DNS #Hierarchy
Moving from parent zone to child zone during resolution.
#### Finding the DS Record #ParentZone #Lookup
Querying the parent zone for the DS record of the child.
#### Matching DS Record with Child DNSKEY #Validation #Verification
Hashing the child's KSK (DNSKEY record) and comparing it with the digest in the parent's DS record.

### Validating RRsets #Signature #Verification
Verifying the RRSIG record for a requested RRset.
#### Finding the Correct DNSKEY #ZoneKeys #Lookup
Retrieving the appropriate public ZSK from the zone's DNSKEY RRset (matching the Key Tag in the RRSIG).
#### Verifying the Signature #Cryptography #Process
Using the public ZSK to validate the RRSIG signature over the requested RRset.

### Handling Insecure Delegations #Validation #Insecure
What happens when validation encounters a zone without DNSSEC or a broken chain.

## Zone Signing #Implementation #Process #AuthoritativeServer
How authoritative DNS servers add DNSSEC signatures to zone data.

### Prerequisites #Setup #Requirements
Keys generated, DNS server software supporting DNSSEC.

### Signing Process Overview #Workflow #Operations
Steps involved in signing a zone file.
#### Generating Keys (ZSK, KSK) #KeyGeneration #Cryptography
Creating the necessary key pairs.
#### Adding DNSKEY Records #Configuration #ZoneFile
Including the public keys in the zone data.
#### Generating RRSIG Records #Signing #Automation
Creating signatures for each RRset in the zone.
#### Generating NSEC/NSEC3 Records #AuthenticatedDenial #Signing
Creating records for authenticated denial of existence.
#### Maintaining Zone Serial Numbers #SOA #Updates
Incrementing the SOA serial for zone updates.

### Online vs. Offline Signing #Architecture #Security #Operations
Different approaches to signing zone data.
#### Online Signing #RealTime #DynamicDNS
Signing performed by the live authoritative server, often suitable for dynamic zones. Requires private keys on the server.
#### Offline Signing #Security #StaticZone
Signing performed on a secure, offline machine. Signed zone file is then transferred to live servers. Better key protection, less suitable for dynamic updates.

### Signing Tools and Software #Tools #BIND #KnotDNS #PowerDNS
Common software used for DNSSEC signing (e.g., BIND's `dnssec-keygen`, `dnssec-signzone`; Knot DNS; PowerDNS).

### Publishing DS Records #ParentZone #Coordination #Registry
Submitting the DS record (or public KSK) to the parent zone (often via domain registrar).

## Key Management #Operations #Security #Lifecycle
Managing DNSSEC keys securely and effectively throughout their lifecycle.

### Key Generation #Creation #Randomness
Securely creating strong key pairs.
#### Entropy Requirements #Security #Randomness
Need for sufficient randomness during key generation.
#### Key Storage #Security #Protection
Safeguarding private keys (HSMs, secure file permissions).

### Key Rollover #Maintenance #Lifecycle #Security
Replacing old keys with new ones without interrupting validation.
#### ZSK Rollover #Process #Frequency
Replacing Zone Signing Keys (more frequent).
##### Pre-Publication Rollover #Method #ZSK
Publish the new key first, wait, then start signing with it.
##### Double-Signature Rollover #Method #ZSK
Sign with both old and new keys during a transition period.
#### KSK Rollover #Process #Coordination #ParentZone
Replacing Key Signing Keys (less frequent, requires interaction with parent zone).
##### Double-KSK Rollover #Method #KSK
Requires new KSK to be added to DNSKEY set, signed by old KSK. Then new DS record submitted to parent. Wait for propagation, then activate new KSK.
##### Double-DS Rollover #Method #KSK
Requires parent zone to publish DS records for both old and new KSKs during transition.
#### Timing and Coordination #Planning #TTL
Careful planning considering TTLs and propagation delays.
#### Automated Rollover Tools #Automation #Operations

### Algorithm Rollover #Migration #Standards #Planning
Changing the cryptographic algorithm used for signing (e.g., migrating from RSA/SHA-1 to ECDSA). Requires careful planning similar to KSK rollover.

### Emergency Key Rollover #IncidentResponse #Compromise
Procedures for rapidly replacing keys suspected of compromise.

### Hardware Security Modules (HSMs) #Hardware #Security #KeyStorage
Using specialized hardware for secure key generation, storage, and signing operations.

## Validation Process #Resolvers #Verification #ClientSide
How DNSSEC-aware recursive resolvers validate responses.

### Resolver Configuration #Setup #TrustAnchor
Enabling DNSSEC validation and configuring trust anchors.
#### Enabling Validation #Software #Configuration (e.g., BIND, Unbound, Knot Resolver)
Specific settings in resolver software.
#### Managing the Root Trust Anchor #RFC5011 #Automation
Keeping the root key up-to-date (manual vs. automated).

### Validation Steps #Workflow #Algorithm
The sequence followed by a validating resolver.
1.  Receive DNS response including RRsets and RRSIGs.
2.  Check for DS record for the zone in the parent (unless it's the root).
3.  Retrieve DNSKEY records for the zone.
4.  If DS record exists, verify it matches one of the KSKs in the DNSKEY RRset.
5.  Verify the RRSIG signature over the DNSKEY RRset using the validated KSK.
6.  Verify the RRSIG signature over the requested RRset using the validated ZSK (found in the now-trusted DNSKEY RRset).
7.  Follow the chain up to the configured trust anchor.

### Validation States #Results #Status
Possible outcomes of the validation process.
#### Secure #Success #Trusted
The data is validly signed and traces back to a trust anchor.
#### Insecure #NoDNSSEC #Untrusted
The domain is within a zone that is not signed or below an unsigned delegation point. Validation is not possible, but this is expected.
#### Bogus #Failure #Tampered #Error
The data fails validation checks (bad signature, missing records, expired signature, DS mismatch, etc.). Indicates a potential attack or configuration error. The resolver MUST NOT return this data.
#### Indeterminate #Error #Configuration
Validation could not be completed due to resolver issues (e.g., missing trust anchor).

### Handling Validation Failures (Bogus State) #ErrorHandling #Security
Resolvers typically return an error (e.g., SERVFAIL) to the client when validation results in Bogus.

## Authenticated Denial of Existence #NSEC #NSEC3 #ProofOfNonexistence
How DNSSEC proves that a name or record type does not exist.

### NSEC Mechanism #Concept #SortedList #RecordType
Linking canonical-ordered names and listing types at each name.
#### Proving Name Non-Existence #Method #NSEC
Returning the NSEC record covering the gap where the name would be.
#### Proving RRtype Non-Existence #Method #NSEC
Returning the NSEC record for the existing name, showing the type is not in the bitmap.
#### Zone Enumeration Issue #Limitation #Privacy

### NSEC3 Mechanism #Concept #HashedNames #RecordType
Using hashes of names to prevent easy enumeration.
#### Hashing Names #Obfuscation #Process
Applying hash function (with salt and iterations) to owner names.
#### Linking Hashed Names #Method #NSEC3
NSEC3 records link the sorted *hashed* names.
#### Opt-Out Flag Usage #Delegation #Performance
Reducing signing overhead for large zones with many insecure delegations.
#### Proving Non-Existence with Hashed Gaps #Method #NSEC3
Returning NSEC3 records proving a gap in the hashed name space, or proving the name exists but the type doesn't.
#### NSEC3 Hash Collision Potential #Limitation #Theory (rare in practice)

### Choosing Between NSEC and NSEC3 #Decision #Tradeoffs
Performance vs. Privacy concerns. NSEC3 is generally preferred for privacy but adds computational overhead.

## Deployment and Operations #Implementation #Maintenance #BestPractices
Practical aspects of deploying and running DNSSEC.

### Deployment Strategies #Rollout #Planning
Phased rollouts, testing environments.
#### Top-Down vs. Bottom-Up #Approach #Adoption
Signing TLDs first vs. signing individual domains first.
#### Signing the Root Zone #Milestone #ICANN
The significance of the root zone being signed.
#### TLD Signing Status #Adoption #Global
Tracking which Top-Level Domains support DNSSEC.
#### Registrar Support #Coordination #Management
Ensuring registrars provide mechanisms to manage DS records.

### Monitoring DNSSEC #Monitoring #Validation #Operations
Tools and techniques for checking DNSSEC status.
#### Validation Checkers (e.g., DNSViz, Verisign DNSSEC Debugger) #Tools #Debugging
Online tools to visualize and troubleshoot the chain of trust.
#### Monitoring Systems (Nagios, Zabbix plugins) #Automation #Alerting
Integrating DNSSEC checks into infrastructure monitoring.
#### Checking Signature Expiry #Maintenance #Alerting
Ensuring signatures are refreshed before they expire.

### Troubleshooting Common Issues #Debugging #Errors #Fixes
Diagnosing and resolving DNSSEC problems.
#### Clock Skew #TimeSync #NTP
Server time differences causing signature validation failures (expiration/inception times).
#### Incorrect Keys or DS Records #Configuration #Mismatch
Errors during key generation or publication.
#### Firewall Issues (EDNS0, UDP packet size) #Network #Connectivity
Firewalls blocking larger DNS packets needed for DNSSEC records or blocking EDNS0 negotiation.
#### Broken Chain of Trust #Configuration #ParentZone
Missing or incorrect DS records in the parent zone.
#### Signature Expiration #Maintenance #RolloverFailure
Failure to re-sign the zone before signatures expire.

### Performance Considerations #Performance #Overhead
Impact of DNSSEC on DNS infrastructure.
#### Increased Response Sizes #Bandwidth #UDP
Signatures and keys add data to DNS responses.
#### Increased CPU Load (Signing & Validation) #CPU #Resources
Cryptographic operations consume server and resolver resources.
#### Amplification Attack Potential (Mitigation) #DDoS #Security
Concerns about using DNSSEC responses in reflection/amplification attacks (mitigated by Response Rate Limiting - RRL).

## Security Considerations #ThreatModel #Analysis #Limitations
Evaluating the security impact and boundaries of DNSSEC.

### Threats Mitigated by DNSSEC #Benefits #SecurityWins
#### DNS Cache Poisoning #Mitigation #Spoofing
Preventing injection of false data into resolver caches.
#### Pharming (via DNS manipulation) #Mitigation #Redirection
Protecting against redirection to malicious sites via forged DNS responses.
#### Man-in-the-Middle (DNS aspects) #Mitigation #Integrity

### Threats NOT Mitigated by DNSSEC #Limitations #OutOfScope
#### Server Compromise #AttackVector #AuthoritativeServer
If the authoritative server or signing keys are compromised, DNSSEC cannot help.
#### Zone Data Errors #Configuration #HumanError
DNSSEC validates origin, not correctness of configured data.
#### Volumetric DDoS Attacks #DDoS #Availability
Flooding attacks still affect availability.
#### Client-Side Vulnerabilities #ClientSecurity #Endpoint
Malware on the end-user machine can still bypass DNS.
#### Privacy Concerns (NSEC/NSEC3) #Privacy #Enumeration

### Attacks Against DNSSEC Itself #AttackVector #DNSSECAttacks
#### Zone Enumeration (NSEC) #Privacy #InformationLeakage
Gathering all domain names within a zone.
#### NSEC3 Hash Cracking #OfflineAttack #DictionaryAttack
Precomputing hashes to uncover domain names in NSEC3 zones.
#### Key Compromise #SecurityBreach #PrivateKeys
Stealing private signing keys.
#### Denial of Service via Validation (Resource Exhaustion) #DDoS #ValidationOverhead
Overloading validators with complex validation requests.

### Trust Anchor Security #Security #Configuration #Updates
Importance of securely managing and updating trust anchors.

## Advanced Topics and Extensions #DANE #Future #Applications
Building upon DNSSEC for further security enhancements.

### DANE (DNS-based Authentication of Named Entities) #DANE #TLS #Certificates #RFC6698
Using DNSSEC to securely publish information about TLS/SSL certificates and other services.
#### TLSA Record #RecordType #TLS #Validation
Specifying certificate constraints (CA, specific cert, public key) associated with a service (e.g., _443._tcp.www.example.com).
#### Use Cases #Applications #Email #VoIP
##### Validating TLS Certificates #Security #PKIAlternative
Complementing or replacing traditional CA system for web server certificates.
##### Securing SMTP (Email) #EmailSecurity #STARTTLS
Authenticating keys used for STARTTLS encryption between mail servers.
##### Securing XMPP, SIP #VoIP #InstantMessaging

### DNS Cookies #AntiSpoofing #RFC7873
Client/server mechanism to mitigate certain DoS attacks and spoofing unrelated to DNSSEC validation itself.

### DNS over TLS (DoT) / DNS over HTTPS (DoH) #Encryption #Privacy #TransportSecurity
Encrypting the DNS query transport layer, complementary to DNSSEC's data authentication. DNSSEC ensures data integrity *within* the encrypted tunnel.

### Future Directions #Research #Evolution
Potential future developments in DNSSEC and related technologies.
#### New Cryptographic Algorithms #Cryptography #Standards
Adoption of newer, more efficient, or post-quantum algorithms.
#### Simplification Efforts #Usability #Adoption
Making DNSSEC easier to deploy and manage.

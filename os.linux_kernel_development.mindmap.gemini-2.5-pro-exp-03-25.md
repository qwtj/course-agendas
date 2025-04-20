# Linux Kernel Development #SkillsOverview #KnowledgeMap #Main #OperatingSystems #CProgramming #SystemsProgramming
## Core Concepts & Architecture #Fundamentals #OSTheory #Architecture
### Kernel vs. User Space #CoreConcept #MemoryProtection #PrivilegeLevels
#### System Calls Interface #API #Boundary #SyscallMechanism
##### Syscall Table #Implementation #Dispatch
##### Argument Passing #Registers #Stack
##### Return Values & Error Handling (errno) #Convention
#### Privilege Separation #Security #HardwareSupport #Rings
#### Context Switching (User <-> Kernel) #Performance #Mechanism #Overhead
### Kernel Architecture Models #Design #Philosophy
#### Monolithic Kernel #LinuxModel #Integrated #Tradeoffs
#### Microkernel (vs. Monolithic) #Comparison #Concept #IPCHeavy
#### Hybrid Kernel #Concept #Examples
#### Loadable Kernel Modules (LKMs) #Modularity #Flexibility #DynamicLoading
### Interrupts & Exception Handling #HardwareInteraction #AsynchronousEvents #ControlFlow
#### Interrupt Types (Hardware, Software) #Classification
#### Interrupt Service Routines (ISRs) #Handlers #Concurrency
##### Top Halves vs. Bottom Halves #Deferral #Latency
###### Softirqs #Mechanism #Predefined
###### Tasklets #Mechanism #Dynamic
###### Workqueues #ProcessContext #Scheduling
#### Interrupt Controllers (APIC, GIC) #Hardware #ArchitectureSpecific
#### Exception Handling (Faults, Traps, Aborts) #ErrorHandling #CPUArchitecture
### Kernel Initialization & Boot Process #Startup #SystemBoot #InitializationSequence
#### Bootloader Interaction (GRUB, U-Boot) #Handover #Parameters
#### Architecture-Specific Setup #HardwareInit #CPU #Memory
#### Kernel Decompression #EarlyBoot
#### Subsystem Initialization Order #Dependencies #CoreSetup
#### init Process Handoff #UserSpaceTransition #PID1
### Portability & Abstraction #CrossPlatform #HardwareAbstractionLayer #DesignPrinciple
#### Architecture-Specific Code (`arch/`) #CPUFamilies #HardwareSupport
#### Endianness Handling #DataRepresentation #ByteOrder
#### Hardware Abstraction Layers (HALs) #Interfaces #Drivers
## Programming Fundamentals #Prerequisites #CoreSkills #Coding
### C Programming Language #PrimaryLanguage #ExpertLevel
#### Pointers & Memory Management #Crucial #LowLevel #ManualMemory
#### Data Structures (Linked Lists, Trees, Hash Tables) #KernelImplementations #Efficiency
#### Bit Manipulation #HardwareControl #Flags #Optimization
#### Function Pointers #Callbacks #Abstraction #Flexibility
#### Macros & Preprocessor #CodeGeneration #Conditionals #Tricks
#### GCC Extensions (Inline Assembly, Attributes, Builtins) #CompilerSpecific #Optimization #Features
#### Understanding ABI & Calling Conventions #ArchitectureSpecific #Interfacing
### Assembly Language (Basic) #LowLevel #ArchitectureSpecific #Optimization
#### Reading Assembly #Debugging #PerformanceAnalysis
#### Inline Assembly (`asm volatile`) #HardwareAccess #SpecificInstructions
#### System Call Implementation Details #ArchInterface
#### Boot Code Understanding #StartupSequence
### Linux Kernel Coding Style #BestPractice #Readability #Consistency #CommunityStandard
#### Indentation & Formatting (Checkpatch) #Tooling #Standard
#### Naming Conventions #Variables #Functions #Types
#### Comment Requirements #Documentation #Clarity
#### Function Length & Complexity #Maintainability
#### Error Handling Conventions #ReturnCodes #goto
### Data Structures in the Kernel #Implementation #Performance
#### Linked Lists (`struct list_head`) #Common #Implementation
#### Radix Trees / Patricia Tries #MemoryManagement #Lookup
#### Red-Black Trees #Scheduling #MemoryManagement
#### Hash Tables #Lookup #Efficiency
#### Bitmaps #ResourceTracking #Flags
#### IDR/IDA (ID Radix/ID Allocator) #IDManagement
## Development Environment & Tooling #Setup #Workflow #Productivity
### Linux Distribution #HostOS #DevelopmentPlatform
#### Package Management (apt, dnf, pacman) #Dependencies #ToolInstallation
#### Basic Shell Commands & Scripting (Bash) #Automation #Workflow
### Compiler & Build Tools #CoreToolchain
#### GCC (GNU Compiler Collection) #PrimaryCompiler #Flags #OptimizationLevels
#### Clang/LLVM (Alternative) #Compiler #ToolchainDiversity
#### Make & Kbuild System #Automation #BuildProcess #Configuration
##### Makefiles (Kernel Syntax) #Specifics #Targets
##### Kconfig #Configuration #FeatureSelection #Dependencies
#### Cross-Compilation Setup #Embedded #DifferentArchitectures
### Version Control System #Collaboration #HistoryTracking #Essential
#### Git #Standard #DistributedVCS
##### Core Commands (clone, pull, push, branch, merge, rebase, commit, diff, log) #Basics
##### Kernel Workflow Specifics #PatchManagement #HistoryMaintenance
##### Staging (`git add -p`) #FineGrainedCommits
##### Rebasing (`git rebase -i`) #HistoryCleanup #PatchSeries
##### Commit Message Formatting #KernelStandard #Clarity
##### Handling Merge Conflicts #ResolutionTechniques
### Editors & IDEs #CodeWriting #Navigation
#### Vim / Neovim #TerminalEditor #Powerful #Customizable
#### Emacs #TerminalEditor #Powerful #Extensible #Lisp
#### VS Code / Codium (with extensions) #GUIEditor #Features #DebuggingSupport
#### Source Code Navigation Tools (ctags, cscope, LSP) #CodeBrowsing #Understanding
### Virtualization & Emulation #Testing #Isolation #CrossArchDev
#### QEMU #Emulator #Virtualizer #Versatile #TestingPlatform
#### KVM #HardwareAcceleration #LinuxNative
#### VirtualBox / VMware #DesktopVirtualization #Testing
#### Docker / Containers (for build env) #EnvironmentIsolation #Reproducibility
## Kernel Subsystems - Core Areas #Specialization #InternalArchitecture
### Memory Management (MM) #CoreSubsystem #ResourceManagement #PerformanceCritical
#### Physical Memory Management #HardwareInterface #RAM
##### Buddy Allocator #PageAllocation #FragmentationControl
##### Page Frame Management #Tracking #States
##### Zones (DMA, NORMAL, HIGHMEM) #ArchitectureConstraints #Addressing
##### NUMA (Non-Uniform Memory Access) #Architecture #Performance #Policy
#### Virtual Memory Management #Abstraction #ProcessIsolation
##### Paging & Page Tables #MMU #AddressTranslation #ArchitectureSpecific
##### Translation Lookaside Buffer (TLB) #Cache #Performance #Management
##### Demand Paging #LazyLoading #Efficiency
##### Copy-on-Write (CoW) #Optimization #fork()
##### Memory Allocation APIs #KernelInterface
###### `kmalloc`/`kzalloc` #Contiguous #SlabBased #Common
###### `vmalloc` #VirtuallyContiguous #LargeAllocations
###### `alloc_pages` #DirectPageAllocation #LowLevel
##### Slab Allocator (SLUB/SLAB/SLOB) #ObjectCaching #Performance #Fragmentation
##### Transparent Huge Pages (THP) #Performance #LargePages #Management
##### Memory Cgroups #ResourceControl #Isolation
#### Page Cache & Buffer Cache #DiskCaching #IOPerformance #Filesystems
#### Swapping / Paging Out #MemoryPressure #DiskUsage
#### Out-Of-Memory (OOM) Killer #ResourcePressure #LastResort #Mechanism
### Process Management & Scheduling #CoreSubsystem #ExecutionControl #Concurrency
#### Process Representation (`struct task_struct`) #KernelDataStructure #ProcessState
#### Process Lifecycle (Creation, Termination) #fork() #execve() #exit() #Reaping
#### Threads (Kernel Threads, User Threads) #ExecutionUnits #SharedResources
#### Scheduling Algorithms #CPUAllocation #Policy
##### Completely Fair Scheduler (CFS) #Default #Desktop #Server
##### Real-Time Schedulers (FIFO, RR) #Priorities #RTTasks
##### Deadline Scheduler #RealTime #Guarantees
##### Scheduler Domains #NUMA #LoadBalancing #Topology
##### CPU Affinity & Isolation #PerformanceTuning #Control
#### Context Switching #Mechanism #Overhead #Performance
#### Signals #AsynchronousNotifications #IPC #ProcessControl
#### Inter-Process Communication (IPC) #DataExchange #Synchronization
##### Pipes & FIFOs #Simple #StreamBased
##### System V IPC (Semaphores, Shared Memory, Message Queues) #Legacy #Features
##### POSIX IPC #Standardized #Alternatives
##### Sockets (Unix Domain) #LocalIPC #NetworkingAPI
### Virtual File System (VFS) & Filesystems #DataStorage #AbstractionLayer #IO
#### VFS Abstraction Layer #UnifiedInterface #FilesystemIndependence
##### Superblock Object #FilesystemInstance #Metadata
##### Inode Object #FileMetadata #DataMapping
##### Dentry Object #DirectoryCache #PathLookup #Caching
##### File Object #OpenFileInstance #State
#### Filesystem Implementation #SpecificFS #OnDiskFormats
##### Ext4 #Default #Journaling #Mature
##### Btrfs #CoW #Snapshots #RAID #Modern
##### XFS #Scalability #Performance #Journaling
##### Network Filesystems (NFS, CIFS) #RemoteStorage #Protocols
##### Pseudo Filesystems (procfs, sysfs, tmpfs, devtmpfs, debugfs) #KernelInterface #InMemory
##### FUSE (Filesystem in Userspace) #Flexibility #NonKernelFS
#### Path Resolution #Lookup #Performance #Caching
#### Mounting & Namespaces #FilesystemHierarchy #Isolation
#### Journaling (Metadata, Data) #Consistency #Recovery
#### Extended Attributes (xattrs) #MetadataExtension
### Networking Subsystem #Connectivity #Protocols #Communication
#### Socket Layer Abstraction #API #UserKernelInterface
##### `struct socket`, `struct sock` #DataStructures #State
#### TCP/IP Stack Implementation #CoreProtocols #Internet
##### IP Layer (IPv4, IPv6) #Routing #Addressing #PacketHandling #Fragmentation
##### TCP Layer #ReliableTransport #CongestionControl #FlowControl #StateMachine
##### UDP Layer #UnreliableTransport #Datagrams
##### ICMP #ControlMessages #ErrorReporting #Ping
##### Raw Sockets #DirectIPAccess
#### Network Device Interface (`struct net_device`) #DriverInterface #Abstraction
#### SKB (Socket Buffer - `struct sk_buff`) #PacketRepresentation #CoreDataStructure
#### Packet Processing Path (RX/TX) #NAPI #Performance #InterruptHandling #GRO #GSO
#### Netfilter & Firewalling #PacketFiltering #Mangling #NAT #Hooks #nftables #iptables
#### Routing & Forwarding #PacketDelivery #Tables #Algorithms #PolicyRouting
#### Bridging & VLANs #Layer2 #NetworkSegmentation
#### Wireless Networking Stack (mac80211, cfg80211) #WiFi #Specifics
#### Network Namespaces #Isolation #VirtualNetworking
#### XDP (eXpress Data Path) & AF_XDP #HighPerformancePacketProcessing #BypassKernelStack
### Device Drivers & Hardware Interaction #HardwareEnablement #Extensibility #Specialization
#### Driver Model & Abstraction #BusDeviceDriver #Sysfs #DeviceHierarchy
#### Character Drivers #StreamingDevices #Terminals #SerialPorts #MiscDevice
##### File Operations (`struct file_operations`) #Interface #Callbacks
##### Major/Minor Numbers #DeviceIdentification #dev_t
#### Block Drivers #StorageDevices #RandomAccess #BIO #RequestQueue
##### Block Layer #IOStack #Scheduling #Merging #MultiQueue (blk-mq)
##### I/O Schedulers (BFQ, Kyber, mq-deadline, none) #Performance #Fairness
#### Network Drivers #NICs #DataTransmission #NAPI #ethtool
#### Platform Drivers & Device Tree #Embedded #HardwareDescription #Probing #OFAPI
##### Device Tree Blob (DTB) #Syntax #Bindings #Parsing
##### ACPI Integration (vs Device Tree) #PCPlatforms #FirmwareTables
#### Bus Systems (PCI/PCIe, USB, I2C, SPI, SDIO, MIPI) #Protocols #Enumeration #Communication
##### Bus-Specific APIs & Frameworks #Standardization #DriverDevelopment
#### Input Drivers (Keyboard, Mouse, Touchscreen) #InputSubsystem #EventReporting
#### GPU Drivers (DRM/KMS) #Graphics #Display #Modesetting
#### Sound Drivers (ALSA) #Audio #Playback #Capture
#### Hardware Access Methods #LowLevelInteraction
##### Memory-Mapped I/O (MMIO) #ioremap() #readX/writeX
##### Port I/O (x86 specific) #inX/outX
##### Direct Memory Access (DMA) #CPUOffload #Performance #API #IOMMU
#### Interrupt Handling in Drivers #Registration #IRQSharing #ThreadingIRQs #request_irq
## Kernel Modules #Modularity #DynamicLoading #Extensibility
### Module Structure & Lifecycle #BasicForm #EntryExit
#### `module_init()` & `module_exit()` macros #Registration #Cleanup
#### Module Licensing (GPL) #LicenseCompatibility #SymbolExport #Tainting
#### Module Parameters (`module_param()`) #Configuration #RuntimeTuning #sysfs
#### Module Aliases #AutomaticLoading #HardwareMatching
### Symbol Exporting & Usage #InterModuleCommunication #API
#### `EXPORT_SYMBOL` / `EXPORT_SYMBOL_GPL` #Visibility #Linking
#### Resolving Dependencies #SymbolTables #LoadingOrder #modprobe
### Building & Loading Modules #Workflow #OutOfTreeModules
#### Makefile for External Modules #KbuildIntegration #Syntax
#### `insmod`, `rmmod`, `modprobe`, `lsmod`, `modinfo` #Commands #Management
#### Module Signing #Security #Verification #Keys
## Debugging, Tracing & Profiling #Troubleshooting #PerformanceAnalysis #UnderstandingBehavior
### Basic Debugging #SimpleTechniques #InitialAnalysis
#### `printk` statements #Logging #KernelOutput #RateLimiting #LogLevels #dmesg
#### Kernel Oops Messages #CrashAnalysis #Decoding #Registers #StackTrace
#### `/proc` & `/sys` Interfaces #InformationSource #RuntimeState #Tuning
#### Magic SysRq Key #EmergencyActions #DebuggingCommands
### Kernel Debuggers #InteractiveDebugging #Stepping
#### KGDB / KDB #SourceLevelDebugging #Breakpoints #Inspection #SerialConsole #Network
#### Using GDB with QEMU #EmulationDebugging #Setup #HardwareSimulation
### Tracing Frameworks #DynamicAnalysis #Observability #Performance
#### Ftrace #FunctionTracing #EventTracing #LowOverhead #trace-cmd #TraceFS
##### Tracepoints #StaticProbes #StableAPI #KernelEvents
##### Kprobes / Kretprobes #DynamicProbes #FunctionEntryExit #Instrumentation
##### Uprobes / Uretprobes #UserSpaceProbing #FromKernel
#### Perf #PerformanceCounters #Profiling #Sampling #Events #HardwareEvents #SoftwareEvents
##### `perf record`, `perf report`, `perf top`, `perf stat` #CoreCommands
#### SystemTap #Scripting #LiveAnalysis #Powerful (requires debuginfo) #StapScripts
#### eBPF (extended Berkeley Packet Filter) #InKernelVM #ProgrammableTracing #Networking #Security #Modern #BCC #bpftrace #libbpf
### Memory Debugging #MemoryErrors #CorruptionDetection
#### KASAN (Kernel Address Sanitizer) #UseAfterFree #OutOfBounds #Detection #CompileTimeOption
#### KMSAN (Kernel Memory Sanitizer) #UninitializedReads #CompileTimeOption
#### KFENCE #LowOverheadSamplingMemorySafetyDetector #ProductionUse #CompileTimeOption
#### Slab Debugging Options #CorruptionDetection #RedZones #Poisoning #CONFIG_SLUB_DEBUG
#### Debug Objects #TrackingObjectLifecycle #UseAfterFreeDetection
### Crash Analysis #PostMortem #SystemFailure
#### Kdump & Crash Utility #CaptureDump #AnalyzeCore #RootCause #vmcore
#### Analyzing Stack Traces #DecodingSymbols #IdentifyingFault #addr2line #gdb
#### Analyzing Log Files (`dmesg`, `/var/log/kern.log`) #PreCrashEvents
## Concurrency & Synchronization #Parallelism #RaceConditions #DataIntegrity
### Concurrency Challenges #ProblemSpace #Complexity
#### Race Conditions #DataCorruption #Unpredictability
#### Deadlocks #ResourceContention #CircularWait #Debugging
#### Livelock #BusyWaiting #NoProgress
#### Memory Ordering Issues #CPUArchitecture #CompilerOptimizations #Barriers
### Locking Primitives #MutualExclusion #Protection
#### Spinlocks #BusyWaiting #ShortCriticalSections #SMP #InterruptContextSafe
##### Reader/Writer Spinlocks (`rwlock_t`) #ReadOptimization
##### Disabling Interrupts (`local_irq_save`/`restore`) #UniprocessorSafety #ShortSections
#### Mutexes (Mutual Exclusion - `struct mutex`) #SleepingLocks #LongerCriticalSections #ProcessContextOnly
#### Semaphores (`struct semaphore`) #Counting #Signaling #SleepingLocks
#### Reader/Writer Semaphores (`struct rw_semaphore`) #ReadOptimization #SleepingLocks
### Atomic Operations #Lockless #HardwareSupport #Primitives
#### Atomic Integer Operations (`atomic_t`, `atomic64_t`) #Counters #Flags #ReferenceCounting
#### Atomic Bitwise Operations #BitManipulation #set_bit #clear_bit #test_and_set_bit
#### Compare-and-Swap (CAS) / Compare-and-Exchange (cmpxchg) #LockFreeAlgorithms #Foundation
#### Memory Barriers (`mb()`, `rmb()`, `wmb()`, etc.) #OrderingGuarantees #Compiler #CPU
### Read-Copy-Update (RCU) #AdvancedSynchronization #ReadOptimization #Scalability
#### Core Concepts #GracePeriods #QuiescentStates #UpdateMechanism #DeferredDestruction
#### RCU APIs (`rcu_read_lock`, `rcu_read_unlock`, `rcu_dereference`, `rcu_assign_pointer`, `synchronize_rcu`, `call_rcu`) #Usage
#### RCU Flavors (Tree RCU, Sleepable RCU - SRCU) #Variations #UseCases #PerformanceTradeoffs
### Lock Dependency Validator (Lockdep) #DebuggingTool #DeadlockDetection #Validation #RuntimeChecking #CONFIG_LOCKDEP
### Per-CPU Variables #Scalability #LockReduction #DataLocality
## Kernel Security #Protection #Mitigation #Hardening
### Access Control & Permissions #UserKernelBoundary #ResourceProtection
#### Capabilities #FineGrainedPrivileges #RootSplitting #AmbientCapabilities
#### Namespaces #Isolation #Virtualization (PID, Network, Mount, User, UTS, IPC, Cgroup)
#### Control Groups (cgroups) #ResourceLimiting #Accounting #Control #Freezer #DeviceAllowlist
#### Seccomp (Secure Computing Mode) #SystemCallFiltering #ProcessHardening
### Memory Protection #ExploitMitigation #AddressSpaceSecurity
#### Kernel Address Space Layout Randomization (KASLR) #AddressObfuscation #PhysicalVirtual
#### Stack Protector (Canaries - `-fstack-protector`) #BufferOverflowDetection
#### Control Flow Integrity (CFI) #ROP/JOPMitigation #Emerging #CompilerSupport (Clang)
#### Execute Disable (NX/XD Bit) #DataExecutionPrevention #HardwareSupport
#### Kernel Page Table Isolation (KPTI / Meltdown Mitigation) #AddressSpaceSeparation #PerformanceImpact
#### Usercopy Whitelisting #HardeningDataCopies #slab_common.usercopy_fallback
### Security Modules (LSM) #MandatoryAccessControl #PolicyEnforcement
#### SELinux #LabelBased #FineGrained #PolicyHeavy #NSAOrigin
#### AppArmor #PathBased #SimplerPolicy #ProfileBased
#### Smack #LabelBased #Simpler #EmbeddedFocus
#### TOMOYO #PathBased #LearningMode
#### LSM Hook Infrastructure #IntegrationPoints #Framework #StackingLSMs
### Secure Coding Practices #DevelopmentTime #VulnerabilityPrevention
#### Input Validation #BoundaryChecks #TrustBoundaries #DataOrigin
#### Integer Overflow Prevention #SafeMath #CheckedArithmetic
#### Avoiding Information Leaks #KernelAddresses #TimingAttacks #SpectreMitigation
#### Secure Use of Cryptographic APIs #KernelCryptoAPI #CorrectAlgorithmUsage
#### Time-of-Check to Time-of-Use (TOCTOU) Avoidance #RaceConditions #Validation
### Hardware Security Features #LeveragingCPU #PlatformSecurity
#### Trusted Platform Module (TPM) #Keys #Measurements #Attestation #Integrity
#### Secure Boot #BootloaderVerification #Integrity #UEFI
#### Memory Encryption (AMD SEV, Intel TDX/MKTME) #ConfidentialComputing #VMIsolation
#### Hardware Random Number Generators (HRNG) #EntropySource #dev/hwrng
### Kernel Self-Protection Project #HardeningEfforts #OngoingDevelopment
## Contribution Process & Community Interaction #Collaboration #GettingCodeMerged #Etiquette
### Communication Channels #Engagement #InformationSources
#### Linux Kernel Mailing List (LKML) #PrimaryChannel #Discussions #Patches #HighVolume
#### Subsystem Specific Mailing Lists #FocusedDiscussions #Maintainers #TargetedSubmission
#### IRC Channels (OFTC network, e.g., #kernelnewbies) #Informal #QuickQuestions #RealTime
#### Kernel Bugzilla #BugTracking #ReportingIssues
#### Conferences (Linux Plumbers, Kernel Summit, LPC) #InPerson #Networking #Presentations
### Finding Work & Getting Started #ContributionPath #BeginnerTasks
#### Fixing Checkpatch Errors/Warnings #EasyStart #StyleCleanup #LowHangingFruit
#### Addressing Compiler Warnings (`W=1` builds) #CodeQuality #BugPrevention
#### Working on Staging Drivers (`drivers/staging/`) #Cleanup #Improvement #TestingGround #GraduationPath
#### Bug Triage & Reporting #Bugzilla #Analysis #Debugging #ReproducingIssues
#### Documentation Improvements #Writing #Clarification #Examples
#### Testing Patches #ReportingResults #BisectingRegressions
### Patch Creation & Submission #CoreWorkflow #FormattingStandard
#### `git format-patch` #PatchGeneration #Series #CoverLetter
#### Patch Formatting Rules #SubjectLine (`[PATCH <vN> <M/N>] subsystem: summary`) #CommitMessage (Why, What, How) #SignedOffBy #CCList
#### `scripts/checkpatch.pl --strict` #StyleValidation #PreSubmissionCheck
#### `scripts/get_maintainer.pl` #FindingReviewers #SubmittingToRightList #IdentifyingMaintainers
#### Using `git send-email` #SubmissionTool #Configuration #Threading
#### Addressing Review Feedback (`git commit --amend`, `git rebase -i`) #Iteration
### Code Review Process #QualityControl #Collaboration #Iteration
#### Responding to Feedback #ConstructiveDiscussion #AddressingComments #TechnicalArguments
#### Revising & Resubmitting Patches (v2, v3...) #Iteration #Improvement #ChangelogInCoverLetterOrBelow---
#### Reviewing Others' Patches #CommunityContribution #Learning #ProvidingFeedback #Acked-by #Reviewed-by #Tested-by
#### Understanding Tags (Acked-by, Reviewed-by, Tested-by, Reported-by, Suggested-by) #ReviewSemantics
### Maintainer Hierarchy & Roles #Organization #DecisionMaking
#### Subsystem Maintainers #Gatekeepers #MergingCode #MAINTAINERSFile
#### Linus Torvalds (Top Level) #FinalIntegration #ReleaseManagement #BenevolentDictator
#### Lieutenants (Andrew Morton, Greg KH, etc.) #AssistingLinus #KeyAreas #DriverCore #StableTree
#### Stable Kernel Maintainers #BackportingFixes #LongtermSupport
### Development Cycle & Releases #Timeline #Process
#### Merge Window (~2 weeks) #NewFeatures #IntegrationPhase #LinusTree
#### Release Candidates (-rcX, ~6-10 weeks) #Stabilization #Testing #BugFixing #LinuxNext
#### Stable & Longterm Releases (LTS) #Maintenance #BackportingFixes #EOLDates
## Additional Core Subsystems #Specialization #HardwareSupport
### Power Management (PM) #EnergyEfficiency #BatteryLife #SystemStates
#### System Suspend States (Suspend-to-RAM, Suspend-to-Disk) #LowPowerModes #ACPIStates
#### Runtime Power Management #DeviceLevel #IdleStates #UsageCounters
#### CPUFreq (CPU Frequency Scaling) #PerformanceVsPower #Governors (ondemand, performance, powersave)
#### CPUIdle #CPUIdleStates #CStates #DeepSleep
#### PM QoS (Quality of Service) #LatencyConstraints #PerformanceRequirements
#### Wakeup Sources #EventTriggeredResume #Interrupts #Timers
### Input Subsystem #UserInteraction #HID #EventHandling
#### Event Interface (`/dev/input/eventX`) #StandardizedReporting #InputEvents (Key, Relative, Absolute)
#### Input Core #DeviceRegistration #EventDispatching
#### Handlers (evdev, mousedev, joydev, kbd) #UserSpaceInterfaces
#### Device Types (Keyboard, Mouse, Touchpad, Touchscreen, Joystick, Tablet) #SpecificDrivers
#### Multitouch Protocol #AdvancedTouchHandling
### Graphics Stack (DRM/KMS) #Display #Rendering #GPUManagement
#### Direct Rendering Manager (DRM) #GPUAccess #MemoryManagement #Modesetting
#### Kernel Mode Setting (KMS) #Resolution #RefreshRate #DisplayControl #AtomicModesetting
#### Frame Buffer Layer (`/dev/fbX`) #LegacyInterface #SimpleDisplay
#### GEM (Graphics Execution Manager) / TTM (Translation Table Maps) #GPUMemoryManagement
#### GPU Drivers (i915, amdgpu, nouveau) #HardwareSpecific #Acceleration
### Sound Subsystem (ALSA) #Audio #Playback #Capture #Mixing
#### Advanced Linux Sound Architecture (ALSA) #CoreFramework #API
#### PCM Interface #DigitalAudioData #PlaybackCaptureStreams
#### Control Interface #MixerControls #Volume #Mute
#### MIDI Interface #MusicalInstrumentDigitalInterface
#### Hardware Drivers (HDA Intel, USB Audio, SoC Audio) #CodecHandling #PlatformSpecific
#### User Space Libraries (alsa-lib) #ApplicationInterface
### Firmware Interaction #SystemInitialization #HardwareConfiguration
#### ACPI (Advanced Configuration and Power Interface) #PCPlatforms #Tables #AML #Events #PowerManagement
#### UEFI (Unified Extensible Firmware Interface) #ModernBoot #RuntimeServices #Variables #SecureBoot
#### Device Tree (DT) #EmbeddedPlatforms #HardwareDescription #vsACPI
#### System Management BIOS (SMBIOS) / DMI #SystemInformation #HardwareInventory
## Advanced Topics & Specializations #DeepDive #CuttingEdge #Performance
### Real-Time Linux (PREEMPT_RT) #LowLatency #Determinism #IndustrialControl #AudioProcessing
#### PREEMPT_RT Patchset #CoreChanges #InterruptThreading #PriorityInheritance
#### High-Resolution Timers (HRTs) #PreciseTiming
#### Latency Reduction Techniques #MeasuringLatency (cyclictest) #Tuning
#### Real-Time Scheduling Policies #FIFO #RR #Deadline
### Kernel Performance Optimization #Tuning #Analysis #BottleneckIdentification
#### Profiling Tools (perf, ftrace, eBPF) #IdentifyingHotspots #ResourceUsage
#### System Call Optimization #ReducingOverhead #Batching
#### Cache Optimization #Locality #CacheLines #FalseSharing
#### Lock Contention Analysis #ScalabilityBottlenecks #LockingStrategy
#### NUMA Tuning #MemoryPlacement #CPUAffinity #NodeBalancing
#### I/O Path Optimization #BlockLayerTuning #NetworkStackTuning #ZeroCopy
### Kernel Testing Frameworks #QualityAssurance #RegressionTesting #Automation
#### KUnit #UnitTestFramework #InKernelTesting #DriverTesting
#### Kernel Self-Tests (`tools/testing/selftests/`) #SubsystemSpecificTests #BuildIntegration
#### KASAN/KMSAN/KFENCE #MemorySafetyTesting (see Debugging)
#### Lockdep #ConcurrencyTesting (see Concurrency)
#### Linux Test Project (LTP) #SystemCallCoverage #ConformanceTesting #UserSpace
#### Continuous Integration (CI) Systems (KernelCI, 0-Day) #AutomatedBuilds #TestingPatches
### eBPF Development #ProgrammableKernel #Tracing #Networking #Security #Observability
#### eBPF Virtual Machine & Instruction Set #Safety #Verification
#### Map Types (Hash, Array, LRU, Ringbuf) #DataStorage #KernelUserCommunication
#### Helper Functions #KernelAPIAccess #StableInterface
#### Program Types (Tracing, Networking, Security, Cgroup) #AttachmentPoints #UseCases
#### Loading & Attaching Programs (libbpf, BCC, bpftrace) #Toolchains #UserSpaceInteraction
#### Writing eBPF Programs (Restricted C, LLVM backend) #DevelopmentWorkflow
### Writing Architecture-Specific Code (`arch/`) #Porting #HardwareEnablement #LowLevel
#### Understanding CPU Architecture (x86, ARM, RISC-V, PowerPC, s390) #InstructionSets #MMU #Interrupts
#### Boot Process Implementation #EarlyStartup #HardwareInit
#### Interrupt Handling Implementation #ControllerInteraction #VectorTables
#### Context Switching Implementation #RegisterSavingRestoring
#### System Call Entry/Exit Paths #ABICompliance
#### Memory Management Low-Level (PTE formats, TLB handling) #MMUDetails

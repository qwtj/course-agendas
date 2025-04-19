# POSIX #OperatingSystems #Standards #API
Portable Operating System Interface (POSIX) is a family of standards specified by the IEEE Computer Society for maintaining compatibility between operating systems. It defines the application programming interface (API), along with command line shells and utility interfaces.

## Introduction and Overview #Definition #Scope #Goals
Defines what POSIX is, its primary objectives, and the problems it aims to solve.
### What is POSIX? #Definition #InterfaceStandard
An API standard designed to ensure source-level portability of applications across different UNIX-like operating systems.
### Primary Goals #Objectives #Portability #Compatibility
- Source code portability: Write programs once, compile and run on multiple compliant systems.
- Reduce vendor lock-in.
- Standardize OS interfaces.
### Key Concepts #API #Environment #Utilities
- Application Programming Interface (API): C language interfaces.
- Shell: Standard command interpreter interface.
- Utilities: Standard command-line tools (e.g., `ls`, `grep`).
- Conformance: Levels of adherence to the standards.

## History and Standardization #Evolution #IEEE #OpenGroup
Traces the development of the POSIX standards.
### Origins #EarlyUnix #NeedForStandards
Developed from the need to standardize the diverse Unix variants emerging in the 1980s.
Influenced by existing Unix specifications (e.g., SVID, BSD).
### IEEE Std 1003 #StandardBody #WorkingGroup
The formal name for the POSIX standard, developed by the IEEE Portable Applications Standards Committee (PASC).
### The Open Group & Single UNIX Specification (SUS) #Collaboration #SUS
Collaboration between IEEE and The Open Group led to POSIX forming the core of the Single UNIX Specification (SUS).
Current POSIX standards are developed and maintained by the Austin Group, a joint working group of IEEE and The Open Group.
The Base Specifications of SUS are simultaneously IEEE Std 1003.1 and ISO/IEC 9945.

## Core Concepts #Portability #API #Compliance
Fundamental ideas underlying the POSIX standard.
### Source-Level Portability #CodeCompatibility #CompileAnywhere
Enabling applications written using the POSIX API to be compiled and run on any POSIX-compliant system with minimal changes.
### Standardized API #ConsistentInterface #CLibrary
Providing a consistent set of C function calls for system services (e.g., file I/O, process creation).
### Operating System Environment #Shell #Utilities
Defining a standard environment, including command-line shells and common utilities.
### Compliance and Conformance #Levels #Certification
Systems can claim different levels of POSIX compliance, sometimes verified through certification testing.

## POSIX Standards Documents #IEEE1003 #Versions #SUS
Overview of the different parts and versions of the standard.
### POSIX.1: Core Services (IEEE Std 1003.1) #BaseStandard #API
The foundational standard defining the C API for system services.
Includes interfaces for processes, files, signals, etc.
### POSIX.1b: Real-time Extensions (IEEE Std 1003.1b) #RealTime #Scheduling
Adds interfaces for real-time capabilities like priority scheduling, timers, semaphores, shared memory.
### POSIX.1c: Threads Extensions (IEEE Std 1003.1c) #Threads #Pthreads
Defines the standard threading API (pthreads).
### POSIX.2: Shell and Utilities (IEEE Std 1003.2) #Commands #Scripting
Standardizes the command interpreter (shell) and common command-line utilities.
### Revisions and Editions #POSIX2001 #POSIX2008 #POSIX2017
Periodic updates integrating previous standards and adding new features.
- POSIX.1-2001 (SUSv3): Merged Base, Realtime, Threads, and other extensions.
- POSIX.1-2008 (SUSv4): Introduced significant updates and additions.
- POSIX.1-2017: Current major version, incorporating technical corrigenda.
### Structure of the Standard #BaseDefinitions #SystemInterfaces #ShellUtilities #Rationale
Organized into volumes covering definitions, system interfaces, shell/utilities, and rationale.

## Key API Areas #Functionality #Interface #Modules
Major functional groups within the POSIX API. Note: These are often integrated within POSIX.1.

### Process Management #Processes #Lifecycle #Execution
APIs for creating, managing, and terminating processes.
#### Process Creation and Termination #fork #exec #exit #wait
- `fork()`: Create a new process (child).
- `exec()` family: Replace the current process image.
- `_exit()`, `exit()`: Terminate the calling process.
- `wait()`, `waitpid()`: Wait for child process state changes.
#### Process Attributes #PID #GID #UID #Environment
- Process ID (PID), Parent Process ID (PPID).
- User ID (UID), Group ID (GID).
- Process groups and sessions.
- Environment variables (`getenv`, `setenv`).
#### Scheduling Control #nice #sched_setscheduler
Basic priority control (`nice`).
Real-time scheduling policies (from POSIX.1b).

### Filesystem Interface #Files #Directories #IO
APIs for interacting with the file system.
#### File Operations #open #read #write #close #lseek
Core functions for file input/output.
#### Directory Operations #opendir #readdir #closedir #mkdir #rmdir
Functions for managing directories and their contents.
#### File Metadata #stat #fstat #chmod #chown
Accessing and modifying file attributes (permissions, owner, size, timestamps).
#### Symbolic Links #symlink #readlink
Creating and reading symbolic links.
#### File Control #fcntl #ioctl
Manipulating file descriptors and device parameters.

### Signals and Inter-Process Communication (IPC) #Events #Communication #Synchronization
Mechanisms for process signaling and communication.
#### Signals #signal #kill #sigaction
Asynchronous notification mechanism for processes.
Handling signals (`sigaction`).
Sending signals (`kill`).
#### Pipes and FIFOs #pipe #mkfifo
Simple unidirectional communication channels.
Named pipes (FIFOs) for communication between unrelated processes.
#### Message Queues (POSIX.1b) #mq_open #mq_send #mq_receive
Allowing processes to exchange messages via system-managed queues.
#### Semaphores (POSIX.1b) #sem_open #sem_wait #sem_post
Synchronization primitives for controlling access to shared resources.
Named and unnamed (memory-based) semaphores.
#### Shared Memory (POSIX.1b) #shm_open #mmap #shm_unlink
Allowing multiple processes to share regions of memory for fast data exchange.

### Networking Interface #Sockets #Protocols #NetworkAPI
Standardized way to perform network communication, often based on Berkeley Sockets API but integrated/referenced by POSIX.
#### Socket API Basics #socket #bind #listen #accept #connect
Core functions for creating and managing network connections (TCP, UDP).
#### Data Transfer #send #recv #read #write
Functions for sending and receiving data over sockets.
#### Address Resolution #getaddrinfo #getnameinfo
Modern functions for converting hostnames/services to addresses and vice versa.

### POSIX Threads (pthreads) #Concurrency #Multithreading #Synchronization
Standard API for creating and managing threads within a process.
#### Thread Creation and Management #pthread_create #pthread_join #pthread_exit #pthread_detach
Functions to start, synchronize, and terminate threads.
#### Mutexes #pthread_mutex_init #pthread_mutex_lock #pthread_mutex_unlock
Mutual exclusion locks for protecting shared data from race conditions.
#### Condition Variables #pthread_cond_init #pthread_cond_wait #pthread_cond_signal
Mechanisms for threads to wait for specific conditions to become true.
#### Reader-Writer Locks #pthread_rwlock_init #pthread_rwlock_rdlock #pthread_rwlock_wrlock
Locks allowing multiple readers or one writer, improving concurrency for read-heavy scenarios.
#### Barriers #pthread_barrier_init #pthread_barrier_wait
Synchronization points where a group of threads must wait until all threads arrive.

## Shell and Utilities #POSIX.2 #Commands #Scripting
Standards for the command-line environment.
### POSIX Shell #sh #CommandLanguage
Standard syntax and features for the command interpreter.
Built-in commands.
Job control.
### Standard Utilities #ls #grep #awk #sed #find
Definition of common command-line tools and their expected behavior/options.
Text processing (grep, sed, awk).
File manipulation (cp, mv, rm).
Process utilities (ps, kill).
### Scripting Environment #ShellScripting #Portability
Ensuring shell scripts written using standard features are portable across compliant systems.

## Real-time Extensions #POSIX.1b #Timing #Scheduling
Enhancements for systems requiring predictable timing behavior.
### High-Resolution Timers #clock_nanosleep #timer_create
Timers with finer granularity than traditional `sleep()`.
### Priority Scheduling #FIFO #RoundRobin #sched_setscheduler
Real-time scheduling policies (SCHED_FIFO, SCHED_RR).
Setting process/thread priorities.
### Memory Locking #mlock #munlock
Preventing memory pages from being swapped out to ensure timely access.
### Synchronized I/O #aio_read #aio_write
Asynchronous I/O operations that don't block the calling thread.

## Security Considerations #Permissions #AccessControl #Capabilities
Aspects of POSIX related to system security.
### File Permissions #UserGroupOther #RWX
Standard Unix permission model (read, write, execute for owner, group, others).
### Access Control Lists (ACLs) #FineGrainedAccess #POSIXACLs
Optional extension for more granular file permissions beyond the basic model.
### Privileged Operations #RootUser #Capabilities
Traditionally relies on the superuser (root) model.
Capabilities (optional POSIX draft) offer finer control over privileges.

## POSIX Compliance and Certification #Testing #Branding #Conformance
How systems demonstrate adherence to the standard.
### Conformance Levels #POSIXCertified #ComplianceClaims
Systems can be formally certified or claim compliance based on testing.
### Test Suites #VSX-PCTS #POSIXTestSuites
Validation suites used to test an operating system's conformance to the POSIX standard.
### The UNIX® Certification Program #OpenGroup #Branding
Managed by The Open Group, certifying systems conformant to specific versions of the Single UNIX Specification (which incorporates POSIX).

## Operating System Implementations #Unix #Linux #macOS #Windows
Examples of operating systems implementing POSIX standards.
### UNIX Systems #Solaris #AIX #HP-UX
Many traditional commercial UNIX systems are certified POSIX compliant.
### Linux Distributions #LinuxKernel #glibc
Linux aims for POSIX compliance, primarily through the kernel API and the GNU C Library (glibc). Not typically certified as UNIX®.
### BSD Systems #FreeBSD #OpenBSD #NetBSD
Descendants of Berkeley Software Distribution, generally highly POSIX compliant.
### macOS #Darwin #CertifiedUNIX
Based on the Darwin kernel (derived from BSD and Mach), macOS is certified UNIX (and thus POSIX compliant).
### Windows #WSL #Cygwin #SFU
Windows offers POSIX compatibility layers:
- Windows Subsystem for Linux (WSL): Runs a Linux environment.
- Cygwin: A compatibility layer providing POSIX APIs.
- Services for UNIX (SFU - older).

## Relationship with Other Standards #SUS #LSB #CStandard
How POSIX interacts with or relates to other relevant standards.
### Single UNIX Specification (SUS) #Superset #Core
POSIX forms the core API specification within the broader SUS. SUS adds further requirements for UNIX branding.
### C Standard (ISO/IEC 9899) #CLibrary #Dependencies
POSIX relies heavily on the C standard library but also extends it significantly with OS-specific functions.
### Linux Standard Base (LSB) #LinuxSpecific #Compatibility
LSB aims for binary compatibility across Linux distributions, referencing and building upon POSIX and other standards.

## Benefits and Limitations #Advantages #Disadvantages #Tradeoffs
Pros and cons of using and adhering to the POSIX standard.
### Benefits #Portability #VendorNeutrality #ProgrammerFamiliarity
Easier porting of applications.
Reduced training costs for developers familiar with the API.
Promotes competition among OS vendors.
### Limitations #LowestCommonDenominator #OptionalFeatures #Complexity
Standard can lag behind OS innovations.
Many useful features are optional or extensions, reducing guaranteed portability.
Can be complex and sometimes ambiguous.
Doesn't cover everything (e.g., GUIs, specific hardware).

## Future and Evolution #Trends #NextGen #Updates
Potential developments and the ongoing relevance of POSIX.
### Ongoing Maintenance #AustinGroup #Corrigenda
Continuous updates and corrections via Technical Corrigenda by the Austin Group.
### Relevance in Modern Computing #Cloud #Containers #IoT
POSIX remains fundamental for server OSs, cloud environments, and container technology. Its role in IoT varies.
### Potential Future Directions #NewAPIs #Challenges
Adapting to new hardware paradigms (e.g., persistent memory).
Addressing modern security challenges.
Integration with newer programming languages and paradigms.

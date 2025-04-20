# ARM Reference Manual #ARM #Architecture #Specification
This document outlines the architecture specification for ARM processors, defining the programmer's model, instruction sets, and system features. It is the definitive guide for software developers and system designers working with ARM cores.

## Introduction and Conventions #Overview #Documentation #Basics
Provides context, scope, terminology, and how to read the manual.
### Purpose and Scope #Goals #Coverage
Defines which ARM architectures and features are covered by this specific manual version.
### Typographical Conventions #Formatting #Notation
Explains the use of fonts, pseudocode, and diagrams.
### Terminology and Glossary #Definitions #Acronyms
Defines key terms used throughout the manual.
### Related Documents #References #Standards
Lists other relevant ARM specifications and standards.
### Architecture Versions and Profiles #ARMv8 #ARMv9 #ProfileA #ProfileR #ProfileM
Discusses different versions (e.g., ARMv7, ARMv8, ARMv9) and profiles (A-Profile, R-Profile, M-Profile) and their relevance.

## Application Level Programmer's Model #Programming #CPUState #UserMode
Describes the architecture features visible to application programmers.
### Execution States and Security States #AArch64 #AArch32 #Secure #NonSecure #EL0 #EL1 #EL2 #EL3
Details the different execution states (AArch64, AArch32) and security states (Secure, Non-secure).
### Privilege Levels (Exception Levels) #EL0 #EL1 #EL2 #EL3 #Privilege
Explains the different Exception Levels (EL0 to EL3) and their associated privileges.
### Core Registers #Registers #CPUState #Context
Describes the general-purpose registers (GPRs), special-purpose registers (SP, PC, PSTATE/CPSR), and system registers accessible at the application level.
#### General Purpose Registers (GPRs) #x0-x30 #r0-r14
#### Special Purpose Registers #PC #SP #LR #PSTATE #CPSR #SPSR
#### Floating-Point and Advanced SIMD Registers #NEON #SVE #VRegisters #ZRegisters #FP #SIMD
### Data Types and Alignment #DataRepresentation #Endianness #Alignment
Defines supported data types (bytes, halfwords, words, doublewords) and memory alignment rules.
### Instruction Set Overview #ISA #Instructions
Brief introduction to the available instruction sets (A64, A32, T32).

## Instruction Set Architecture (ISA) #Instructions #Assembly #Encoding
Detailed description of the instructions supported by the processor.
### A64 Instruction Set #ARMv8 #64bit #ISA
Instructions available in the AArch64 execution state.
#### A64 Instruction Encodings #Encoding #Opcodes
#### A64 Addressing Modes #MemoryAccess #Addressing
#### A64 Data Processing Instructions #Arithmetic #Logic #Move
#### A64 Load/Store Instructions #MemoryAccess #DataTransfer
#### A64 Branch Instructions #ControlFlow #Branching
#### A64 System Instructions #SystemControl #Exceptions #Barriers
#### A64 Floating-Point/SIMD Instructions #NEON #SVE #FP #VectorProcessing
### A32/T32 Instruction Sets #ARMv7 #32bit #ISA
Instructions available in the AArch32 execution state (ARM and Thumb instructions).
#### A32/T32 Instruction Encodings #Encoding #Opcodes
#### A32/T32 Addressing Modes #MemoryAccess #Addressing
#### A32/T32 Data Processing Instructions #Arithmetic #Logic #Move
#### A32/T32 Load/Store Instructions #MemoryAccess #DataTransfer
#### A32/T32 Branch Instructions #ControlFlow #Branching
#### A32/T32 System Instructions #SystemControl #Exceptions #Coprocessor
#### A32/T32 Floating-Point/SIMD Instructions #VFP #NEON #FP #VectorProcessing
### Pseudocode Instruction Definitions #Semantics #Behavior
Provides precise operational semantics for each instruction using pseudocode.

## Memory System Architecture #Memory #MMU #Cache
Describes how the processor interacts with memory.
### Memory Model Overview #MemoryTypes #Ordering
Introduction to the ARM memory model.
### Memory Types and Attributes #Device #Normal #Cacheable #Shareable
Defines different memory types (Normal, Device) and attributes (cacheability, shareability).
### Caches #L1Cache #L2Cache #Performance #Coherency
Describes cache architecture, operation (write-through, write-back), maintenance operations, and coherency.
### Memory Management Unit (MMU) #VirtualMemory #Paging #Translation
Details the virtual memory system, including address translation (page tables), permissions, and TLBs.
#### Address Translation #VAtoPA #PageTables #TLB
#### Memory Access Permissions #Permissions #Protection
#### MMU Control and Configuration #SystemRegisters #SCTLR
### Memory Ordering #Concurrency #Barriers #Synchronization
Defines the memory ordering rules and the use of memory barrier instructions (DMB, DSB, ISB).
### TrustZone Memory Protection #Security #MPU #TrustZone
Memory system aspects related to security, including Memory Protection Units (MPUs) in simpler cores or TrustZone extensions.

## System Level Architecture #SystemControl #Exceptions #Privilege
Defines features managed by privileged software (OS kernel, hypervisor, firmware).
### Exception Model #Interrupts #Faults #Traps #Vectors
Detailed description of exception types, priorities, vector table, routing, and handling mechanisms.
#### Exception Types #Sync #IRQ #FIQ #SError #Reset
#### Exception Handling #Vectors #Priorities #Stacking #Return
#### Interrupt Handling (GIC) #InterruptController #GIC #PPI #SPI #SGI
Overview or detailed description of the Generic Interrupt Controller (GIC).
### System Control #SystemRegisters #CP15
Describes system registers used for configuration and control of processor features (MMU, caches, exceptions, etc.). Often relates to the historical CP15 coprocessor interface in AArch32.
### Security Extensions (TrustZone) #Security #SecureWorld #NormalWorld #TEE
Architecture support for creating Secure and Non-secure execution environments.
#### Secure vs Non-secure States #Isolation #Protection
#### Exception Handling in TrustZone #MonitorMode #SCR
#### Memory System in TrustZone #NSAttribute #Permissions
### Virtualization Extensions #Hypervisor #Virtualization #VMM #Stage2Translation
Architecture support for running virtual machines.
#### Virtual Machine Management #HCR_EL2 #GuestOS
#### Stage 2 MMU / Address Translation #IPAtoPA #NestedPaging
#### Virtual Interrupt Handling #vGIC #ListRegisters
### Power Management #WFI #WFE #LowPower #CPUIdle
Features for reducing power consumption, including Wait For Interrupt (WFI) and Wait For Event (WFE).
### Timer Architecture #SystemTimer #Counter #Clock
Describes system timers available for OS scheduling and other time-based tasks.

## Debug Architecture #Debugging #Trace #JTAG
Defines the features supporting software debug and hardware trace.
### Debug Model Overview #DebugState #Halting #NonInvasive
Introduction to ARM debug capabilities.
### Debug Events and Exceptions #Breakpoints #Watchpoints #Halting
Describes events that can trigger debug state entry.
### Debug State #Halted #Execution #Registers
Processor state and register access when in debug mode.
### Debug Communications Channel (DCC) #Communication #DebugHost
Mechanism for communication between the target and a debugger.
### Breakpoint and Watchpoint Units #HardwareDebug #BKPT #WP
Hardware units for setting breakpoints on instruction execution or watchpoints on data access.
### Trace Architecture #ETM #PTM #CoreSight #InstructionTrace #DataTrace
Describes mechanisms for tracing instruction execution and data accesses (e.g., Embedded Trace Macrocell - ETM).

## Appendices #Reference #Supplementary
Additional information, glossaries, and detailed listings.
### Instruction Set Encodings #Opcodes #Binary #Reference
Detailed binary encodings for instructions.
### System Register Reference #Registers #SystemControl #Reference
Comprehensive list and description of system registers.
### Pseudocode Function and Helper Definitions #Semantics #Pseudocode #Reference
Definitions of helper functions used in instruction pseudocode.
### Revision History #Changes #Updates #Versions
Tracks changes made between different versions of the ARM ARM.
### Glossary #Definitions #Terminology
Consolidated list of terms and acronyms.

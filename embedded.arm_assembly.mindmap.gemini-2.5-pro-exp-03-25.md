# ARM Assembly #Overview #Introduction
Introduction to ARM processors and the role of assembly language programming.

## Fundamentals of ARM Architecture #Basics #Architecture #CoreConcepts
Core concepts underlying ARM processors.

### RISC Principles #RISC #DesignPhilosophy
Reduced Instruction Set Computing principles applied in ARM.

### Register Set #Registers #CPUState
General-purpose registers (R0-R15), Special-purpose registers (PC, LR, SP, CPSR, SPSR).

#### General Purpose Registers (GPRs) #GPR #DataStorage
R0-R12/R13 - Usage conventions vary.

#### Special Purpose Registers #SPR #ControlRegisters
PC (Program Counter, R15), LR (Link Register, R14), SP (Stack Pointer, R13), CPSR (Current Program Status Register), SPSR (Saved Program Status Register - for exceptions).

### Memory Model #Memory #Addressing
How ARM processors view and access memory (byte-addressable, word alignment).

### Processor Modes #OperatingModes #PrivilegeLevels
User, FIQ, IRQ, Supervisor, Abort, Undefined, System modes. Privilege levels.

### Pipelining #Performance #CPUInternals
Instruction pipelining concepts in ARM processors.

## ARM Instruction Sets (ISAs) #ISA #Instructions #Encoding
Different instruction sets supported by ARM processors.

### ARM State (32-bit) #ARM32 #LegacyISA
Original 32-bit fixed-length instruction set.

### Thumb State (16-bit) #Thumb #CodeDensity
16-bit variable-length instruction set for better code density.

### Thumb-2 Technology #Thumb2 #MixedISA
Mix of 16-bit and 32-bit instructions, combining density and performance.

### AArch64 (64-bit) #AArch64 #ARMv8 #ModernISA
64-bit instruction set introduced with ARMv8. Separate register set (X0-X30, W0-W30, SP, PC, PSTATE).

## Data Processing Instructions #Arithmetic #Logic #DataManipulation
Instructions for performing calculations and logical operations.

### Arithmetic Operations #Addition #Subtraction #Multiplication
ADD, ADC, SUB, SBC, RSB, RSC, MUL, MLA.

### Logical Operations #Bitwise #Boolean
AND, ORR, EOR, BIC.

### Comparison Operations #Compare #Flags
CMP, CMN, TST, TEQ. Setting flags in CPSR/PSTATE.

### Shift and Rotate Operations #BitShift #Rotate
LSL, LSR, ASR, ROR, RRX. Barrel Shifter capabilities.

### Data Movement #Move #LoadConstant
MOV, MVN. Loading constants into registers (LDR pseudo-instruction, MOVW/MOVT).

## Memory Access Instructions #LoadStore #MemoryOperations #AddressingModes
Instructions for reading from and writing to memory.

### Load/Store Basics #LDR #STR
LDR (Load Register), STR (Store Register). Loading/storing bytes (LDRB/STRB), half-words (LDRH/STRH), words (LDR/STR), double-words (LDRD/STRD).

### Addressing Modes #MemoryAddressing #Offsets
Different ways to specify memory addresses.
#### Offset Addressing #BaseRegister #Offset
Immediate offset, register offset, scaled register offset.
#### Pre-indexed Addressing #UpdateBase #PreIncrement
Address calculated and used, base register updated *before* access. `[Rn, #offset]!`, `[Rn, Rm]!`
#### Post-indexed Addressing #UpdateBase #PostIncrement
Address from base register used, base register updated *after* access. `[Rn], #offset`, `[Rn], Rm`
#### PC-Relative Addressing #PositionIndependent #Literals
Loading data relative to the Program Counter (PC). Often used for literal pool loads.

### Load/Store Multiple #LDM #STM #BlockTransfer
LDM (Load Multiple), STM (Store Multiple). Efficiently transfer blocks of data/registers. Stack operations (Push/Pop).

## Control Flow Instructions #Branching #Conditional #Loops
Instructions that alter the sequence of execution.

### Unconditional Branch #Jump #Goto
B (Branch), BL (Branch with Link - for subroutine calls).

### Conditional Branch #ConditionalExecution #Flags
Branching based on the condition flags in CPSR/PSTATE (e.g., BEQ, BNE, BGT, BLT).

### Conditional Execution #Predication #ARMFeature
Executing most ARM instructions conditionally based on flags (e.g., ADDEQ, MOVNE). Less common in AArch64.

### Comparison and Branch Combined #CBZ #CBNZ
CBZ (Compare and Branch if Zero), CBNZ (Compare and Branch if Not Zero). Useful for loop termination.

## Subroutines and Stack #Functions #Procedures #StackManagement
Implementing functions/procedures and managing the stack.

### Branch with Link (BL) #FunctionCall #LinkRegister
Using BL to call subroutines, storing return address in LR.

### Returning from Subroutines #Return #FunctionExit
Using `BX LR` or `MOV PC, LR` (ARM state) or equivalent methods to return.

### Stack Pointer (SP) #Stack #MemoryRegion
The SP register (R13) and its role in stack management. Stack growth direction (FD, FA, ED, EA).

### Push and Pop Operations #StackOperations #RegisterSaving
Using LDM/STM or PUSH/POP pseudo-instructions to save/restore registers on the stack.

### ARM Procedure Call Standard (AAPCS) #CallingConvention #ABI
Standard rules for passing arguments, returning values, and preserving registers across function calls.
#### Argument Passing #Parameters #Registers #Stack
Using R0-R3 (ARM/Thumb) or X0-X7 (AArch64) and the stack.
#### Return Values #ReturnValue #Registers
Using R0 (ARM/Thumb) or X0 (AArch64).
#### Register Preservation #CalleeSaved #CallerSaved
Rules for which registers must be preserved by the called function (callee-saved) vs. those the caller must save if needed (caller-saved).

## Assembler Directives and Tools #AssemblyProcess #SoftwareTools #Syntax
Instructions for the assembler, not the processor, and related tools.

### Assembler Syntax #CodeFormat #Labels #Operands
Common syntax elements: labels, instructions, operands, comments. Differences between assemblers (e.g., GNU AS vs armasm).

### Assembler Directives #PseudoOps #DataDefinition
Directives for defining data (.byte, .word, .asciz), allocating space (.space), defining symbols (.equ), controlling sections (.text, .data, .bss), alignment (.align), defining scope (.global).

### The Assembly Process #Compilation #Linking
Source Code -> Assembler -> Object File -> Linker -> Executable File -> Loader.

### Assemblers #Software #Tools
GNU Assembler (gas), ARM Assembler (armasm/armclang), Keil Assembler.

### Linkers #Linking #ObjectFiles
Combining object files and resolving symbols (ld, armlink). Linker scripts.

### Debuggers #Debugging #Troubleshooting
Tools like GDB (GNU Debugger), Lauterbach TRACE32, Segger J-Link Debugger. Debugging techniques (breakpoints, stepping, register inspection).

### Simulators and Emulators #Simulation #Testing
QEMU, ARM Fast Models, Keil uVision Simulator. Testing ARM code without hardware.

## Data Types and Alignment #DataRepresentation #MemoryAlignment #Size
Handling different sizes of data and memory alignment rules.

### Data Sizes #Byte #HalfWord #Word #DoubleWord
Defining and accessing 8-bit, 16-bit, 32-bit, and 64-bit data.

### Endianness #ByteOrder #BigEndian #LittleEndian
How multi-byte data is stored in memory (ARM can often be configured for either Little Endian or Big Endian).

### Alignment Requirements #MemoryAccess #Performance #Restrictions
Processor requirements or performance implications for accessing data at natural boundaries (e.g., 4-byte alignment for words). Unaligned access support and penalties.

## Floating-Point and SIMD #FPU #VectorProcessing #NEON #VFP
Hardware support for floating-point math and Single Instruction, Multiple Data operations.

### VFP (Vector Floating-Point) #FloatingPoint #HardwareUnit
ARM's Floating-Point Unit architecture (VFPv2, VFPv3, VFPv4). FP registers (S0-S31, D0-D15/D31). FP instructions (VADD, VSUB, VMUL, VDIV, VLDR, VSTR).

### NEON (Advanced SIMD) #SIMD #Parallelism #Multimedia
ARM's Single Instruction, Multiple Data extension for accelerating multimedia and signal processing tasks. NEON registers (overlapping VFP). Data types (vectors of integers or floats). NEON instructions (vector arithmetic, logic, load/store).

## Exception and Interrupt Handling #Exceptions #Interrupts #SystemEvents
How the processor handles unexpected events or external signals.

### Exception Types #Abort #IRQ #FIQ #Reset #SVC
Data Abort, Prefetch Abort, Undefined Instruction, Interrupt Request (IRQ), Fast Interrupt Request (FIQ), Software Interrupt (SVC/SWI), Reset.

### Vector Table #ExceptionVectors #JumpTable
Memory location containing addresses of exception handlers. Location can be configured (low address 0x0 or high address 0xFFFF0000). VBAR in later architectures.

### Interrupt Handling Process #IRQHandling #ISR
Saving processor state (PC, CPSR to SPSR), switching mode, identifying interrupt source, executing Interrupt Service Routine (ISR), restoring state, returning.

### FIQ (Fast Interrupt Request) #LowLatency #HighPriority
Higher priority interrupt with more banked registers for lower latency response.

### Supervisor Call (SVC/SWI) #SystemCall #OSInterface
Mechanism for user mode code to request services from the operating system or privileged code.

## Interfacing with High-Level Languages #MixedLanguage #Integration #ABI
Calling assembly routines from C/C++ and vice-versa.

### Calling Assembly from C/C++ #Extern #FunctionPrototype
Declaring assembly functions (`extern`) and calling them according to the AAPCS.

### Calling C/C++ from Assembly #Import #SymbolResolution
Calling external C functions, respecting the AAPCS for arguments and register preservation.

### Inline Assembly #ASMKeyword #CompilerIntegration
Embedding assembly code directly within C/C++ source using `asm` volatile keywords (syntax varies by compiler - GCC, armcc). Constraints for interacting with C variables.

## Memory Management #MMU #Cache #VirtualMemory
Managing memory access, protection, and performance.

### Memory Management Unit (MMU) #VirtualAddressing #Protection
Hardware that translates virtual addresses to physical addresses and enforces memory protection. Page tables.

### Caches (L1, L2, L3) #Performance #MemoryHierarchy
Instruction and Data caches. Cache coherency. Cache management instructions (cleaning, invalidating).

### Translation Lookaside Buffer (TLB) #MMU #Performance
Cache for page table entries to speed up address translation.

### Memory Protection #AccessPermissions #Security
Using the MMU to define read/write/execute permissions for memory regions.

## Security Features #TrustZone #SecurityExtensions #Protection
Hardware features enhancing system security.

### TrustZone #SecureWorld #NormalWorld #Isolation
Hardware security extension creating isolated Secure and Normal execution worlds. Secure Monitor Call (SMC).

### Memory Protection Unit (MPU) #Embedded #RTOS #Protection
Simpler hardware (than MMU) for defining memory regions and access permissions, common in microcontrollers (Cortex-M).

### Privileged Execution Levels (EL0-EL3 in AArch64) #Privilege #Hypervisor #OS
Different privilege levels for controlling access to system resources in ARMv8/AArch64 (EL0: User, EL1: OS Kernel, EL2: Hypervisor, EL3: Secure Monitor).

## Optimization Techniques #PerformanceTuning #CodeEfficiency #Speed
Writing faster and more efficient assembly code.

### Instruction Scheduling #PipelineOptimization #CPUArchitecture
Arranging instructions to minimize pipeline stalls and maximize throughput. Understanding processor-specific timings.

### Loop Unrolling #LoopOptimization #CodeSize
Reducing loop overhead by duplicating the loop body. Trade-off between speed and code size.

### Reducing Memory Access #RegisterUsage #CacheOptimization
Maximizing register usage, minimizing load/store operations. Cache-aware data layout and access patterns.

### Using SIMD (NEON) #ParallelProcessing #DataLevelParallelism
Leveraging NEON for parallel operations on data.

### Code Size Optimization #Thumb #CodeDensity
Using Thumb/Thumb-2 for smaller code size where appropriate.

## ARM Architecture Versions #Evolution #ARMv7 #ARMv8 #ARMv9
Key differences between major ARM architecture versions.

### ARMv7 (A/R/M Profiles) #CortexA #CortexR #CortexM
Architecture used in Cortex-A (applications), Cortex-R (real-time), Cortex-M (microcontroller) series. Thumb-2 support widespread.

### ARMv8 (AArch32/AArch64) #64bit #MajorRevision
Introduction of the 64-bit AArch64 execution state alongside the AArch32 state (compatible with ARMv7). New register set, instructions, privilege model (EL0-EL3).

### ARMv9 #Security #AI #FutureArchitecture
Focus on enhanced security (Memory Tagging Extensions - MTE, Confidential Compute Architecture - CCA) and AI/ML acceleration (SVE2 - Scalable Vector Extension v2).

## Embedded Systems and Bare-Metal Programming #Microcontrollers #RTOS #HardwareControl
Using ARM assembly in resource-constrained environments without a traditional OS.

### Startup Code #Initialization #BootProcess
Assembly code executed on reset to initialize the stack, clocks, memory controllers, copy data, clear BSS, and jump to the main application (often `main()` in C).

### Hardware Register Access #Peripherals #MMIO
Directly reading from and writing to memory-mapped hardware peripheral registers to control GPIO, UART, timers, etc.

### Real-Time Operating Systems (RTOS) #Concurrency #Scheduling
How assembly might be used within or alongside an RTOS for context switching, interrupt handling, or critical sections.

### Low-Level Device Drivers #DriverDevelopment #HardwareInterface
Writing device drivers partially or fully in assembly for performance or direct hardware control.

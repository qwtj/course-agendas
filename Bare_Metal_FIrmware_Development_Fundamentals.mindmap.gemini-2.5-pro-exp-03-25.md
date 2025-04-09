# Bare Metal Firmware Development #Main #EmbeddedSystems #LowLevelProgramming #Hardware
Bare Metal firmware development involves writing software that runs directly on hardware without an underlying operating system, providing maximum control and efficiency for resource-constrained devices.

## Introduction to Bare Metal #Level1 #Fundamentals #Concepts
Understanding the core principles, advantages, disadvantages, and typical applications of bare-metal programming compared to OS-based approaches.

### What is Bare Metal? #Level2 #Definition #CoreConcept
Programming directly on the hardware, where the firmware is the first and only software to run after the system reset. It involves direct manipulation of hardware registers and resources.

### Why Bare Metal? #Level2 #ProsCons #UseCases #Rationale
Discusses the benefits (performance, predictability, low resource usage, full control) and drawbacks (complexity, lack of abstraction, portability challenges) and identifies suitable applications (deeply embedded systems, real-time control, bootloaders).

### Comparison with OS-based Development #Level2 #RTOS #Linux #Comparison
Contrasts bare-metal development with using Real-Time Operating Systems (RTOS) or general-purpose OS like Linux, highlighting differences in abstraction, scheduling, resource management, and complexity.

## Microcontroller/Processor Fundamentals #Level1 #Hardware #CPU #Architecture
Covers the essential hardware knowledge required, including CPU architecture, memory systems, clocking, and reset mechanisms pertinent to microcontroller operation.

### Architecture Basics #Level2 #VonNeumann #Harvard #ISA
Explores fundamental CPU architectures like Von Neumann and Harvard, focusing on how instructions and data are fetched and processed, and introduces the concept of Instruction Set Architectures (ISAs).

### CPU Core #Level2 #InstructionSet #Registers #Execution
Details the central processing unit's core components, including registers for data storage and control, and how instructions are executed.

#### General Purpose Registers (GPRs) #Level3 #DataStorage #Computation
Registers used by the programmer or compiler for general data manipulation, arithmetic operations, and temporary storage.

#### Special Function Registers (SFRs) #Level3 #Control #Status #Peripherals
Registers dedicated to controlling and monitoring the status of the microcontroller's core functions and its integrated peripherals (like timers, UARTs, ADCs). Direct manipulation of SFRs is key in bare-metal development.

#### Program Counter (PC) #Level3 #ExecutionFlow #InstructionPointer
A register that holds the memory address of the next instruction to be executed, controlling the flow of program execution.

#### Stack Pointer (SP) #Level3 #MemoryManagement #FunctionCalls #Interrupts
A register pointing to the current top of the stack in memory, used for function calls (storing return addresses and local variables) and handling interrupts (context saving).

### Memory Systems #Level2 #RAM #ROM #Flash #Cache #Storage
Describes the different types of memory found in microcontrollers and how they are organized and accessed.

#### Memory Mapping #Level3 #AddressSpace #MMIO #Organization
Explains how different memory types (Flash, RAM, peripheral registers) are assigned specific address ranges within the microcontroller's overall address space, including Memory-Mapped I/O (MMIO).

#### Memory Types (SRAM, DRAM, NOR/NAND Flash) #Level3 #Characteristics #Volatile #NonVolatile
Details the properties, use cases, and trade-offs of different physical memory technologies commonly used in embedded systems (e.g., SRAM for fast RAM, Flash for non-volatile code storage).

#### Endianness #Level3 #ByteOrder #BigEndian #LittleEndian #Portability
Explains the concept of byte ordering (Big Endian vs. Little Endian) within multi-byte data types and its importance for data storage, communication protocols, and portability.

### Clocking Systems #Level2 #Timing #Oscillators #Frequency
Covers how microcontrollers generate and distribute clock signals, which are essential for synchronizing operations and determining execution speed.

#### Internal Oscillators #Level3 #RC #PLL #OnChip
Describes on-chip clock sources like RC oscillators (lower accuracy, quick startup) and Phase-Locked Loops (PLLs) used for multiplying clock frequencies.

#### External Crystals/Oscillators #Level3 #Accuracy #Stability #OffChip
Discusses the use of external crystals or oscillator modules for higher accuracy and stability compared to internal sources, often required for precise timing or communication protocols.

#### Clock Trees and Distribution #Level3 #Synchronization #Gating
Explains how the main clock signal is distributed throughout the microcontroller to various peripherals and the core, including techniques like clock gating to save power.

### Reset Mechanisms #Level2 #Initialization #Recovery #Startup
Details the different ways a microcontroller can be reset to a known initial state, essential for startup and recovering from faults.

#### Power-on Reset (POR) #Level3 #Startup #VoltageDetection
An automatic reset triggered when power is initially supplied to the device, ensuring a clean start.

#### Brown-out Reset (BOR) #Level3 #VoltageDrop #Stability
A reset triggered if the operating voltage drops below a safe threshold, preventing unpredictable behavior due to insufficient power.

#### Watchdog Timer Reset (WDT) #Level3 #HangRecovery #SystemMonitor
A reset triggered by a hardware timer (Watchdog) if the firmware fails to periodically signal ("pet") it, used to recover from software hangs or infinite loops.

#### External Reset Pin #Level3 #ManualReset #HardwareTrigger
A dedicated pin that allows an external signal to trigger a hardware reset of the microcontroller.

## Programming Languages #Level1 #Software #Coding #Implementation
Discusses the primary programming languages used in bare-metal firmware development and specific considerations for each.

### C Language #Level2 #PrimaryLanguage #StandardLib #LowLevelAccess
The most common language for bare-metal development due to its efficiency, low-level access capabilities, and relatively good portability.

#### Data Types & Sizes (Integer Promotion) #Level3 #Portability #BitFields #Representation
Understanding fundamental data types, their sizes (which can vary by architecture), potential integer promotion issues, and the use of bit-fields for register manipulation.

#### Pointers and Memory Manipulation #Level3 #DirectAccess #Dereferencing #AddressArithmetic
Crucial C concepts for directly accessing memory-mapped peripherals, managing data buffers, and performing address calculations.

#### Volatile Keyword #Level3 #Optimization #HardwareAccess #Concurrency
Explains the use of the `volatile` keyword to prevent the compiler from optimizing away reads/writes to memory locations (like SFRs) that can change unexpectedly.

#### Inline Assembly #Level3 #Performance #DirectControl #ArchitectureSpecific
Techniques for embedding assembly language instructions directly within C code for performance-critical sections or operations not directly expressible in C.

#### Standard Libraries (Limits) #Level3 #NoOS #libc #ResourceConstraints
Discusses the limitations or absence of standard C libraries (like stdio, malloc) in a bare-metal environment and the use of specialized or minimal C libraries (e.g., newlib-nano).

### Assembly Language #Level2 #LowLevelControl #ArchitectureSpecific #Performance
Programming directly using the processor's native instruction set for maximum control and potential performance optimization, often used for specific routines like startup code or ISRs.

#### Instruction Set Architecture (ISA) #Level3 #Opcodes #Mnemonics #Registers
Understanding the specific instructions (mnemonics, opcodes) available on the target processor and how they manipulate registers and memory.

#### Register Usage Conventions #Level3 #ABI #CallingConvention
Defines how registers are used for passing arguments, returning values, and storing local variables, often specified by an Application Binary Interface (ABI).

#### Interfacing Assembly with C #Level3 #MixedLanguage #FunctionCalls
Techniques for calling assembly functions from C and vice-versa, respecting calling conventions for parameter passing and return values.

### C++ (Considerations for Bare Metal) #Level2 #OOP #ResourceConstraints #Advanced
Using C++ for bare-metal development, considering its features and potential overhead in resource-constrained environments.

#### RAII (Resource Acquisition Is Initialization) #Level3 #ResourceManagement #ConstructorsDestructors
Leveraging C++ constructors and destructors for managing hardware resources (e.g., initializing/de-initializing peripherals) in a structured way.

#### Templates (Code Bloat) #Level3 #Generics #SizeImpact #Metaprogramming
Using C++ templates for generic programming, while being mindful of potential code size increases (code bloat).

#### Exceptions and RTTI (Often Disabled) #Level3 #Overhead #Determinism #Exceptions #RTTI
Discusses why C++ features like exceptions and Run-Time Type Information (RTTI) are often disabled in bare-metal due to their code size and runtime overhead, impacting predictability.

#### Standard Template Library (STL) Limitations #Level3 #MemoryAllocation #Porting #Containers
Discusses the challenges of using the standard C++ library (STL) due to its reliance on dynamic memory allocation and potential lack of OS abstractions. Alternatives or careful subset usage are common.

## Development Toolchain #Level1 #Tools #Workflow #BuildProcess
The set of software tools used to compile, link, debug, and manage the firmware development process.

### Compiler #Level2 #CodeGeneration #Optimization #Translation
Translates high-level source code (C, C++) into assembly or machine code for the target processor, performing various optimizations.

#### GCC (GNU Compiler Collection) #Level3 #CrossCompiler #ARM #RISCV #OpenSource
A widely used, open-source compiler suite supporting cross-compilation for various architectures like ARM and RISC-V. Often used in the form of `arm-none-eabi-gcc`.

#### Clang/LLVM #Level3 #Alternative #Modern #CompilerFrontendBackend
An alternative compiler infrastructure (LLVM backend, Clang frontend) gaining popularity, known for its modular design and potentially better diagnostics.

#### Vendor-Specific Compilers (IAR, Keil) #Level3 #Proprietary #IDEIntegration #Support
Commercial compilers often provided by silicon vendors or third parties, sometimes tightly integrated with specific IDEs and offering vendor-specific optimizations or libraries.

#### Compiler Flags #Level3 #OptimizationLevels #DebugInfo #Warnings #Configuration
Command-line options passed to the compiler to control optimization levels (e.g., `-O0`, `-Os`, `-O3`), generate debug information (`-g`), enable warnings (`-Wall`), define macros (`-D`), etc.

### Linker #Level2 #ObjectFiles #Executable #MemoryLayout
Combines compiled object files and libraries into a single executable file, resolving symbol references and placing code/data into specific memory regions according to linker instructions.

#### Linker Scripts/Scatter Files #Level3 #MemoryLayout #Sections #Configuration
Control files (syntax varies by toolchain) that instruct the linker how to map input sections (like `.text`, `.data`, `.bss`) from object files into the target microcontroller's memory map (Flash, RAM).

#### Symbol Resolution #Level3 #LinkingProcess #Functions #Variables
The process by which the linker matches references to functions and variables (symbols) across different object files and libraries.

#### Libraries (Static) #Level3 #CodeReuse #Archiving
Collections of pre-compiled object code (e.g., math functions, peripheral drivers) that can be linked into the final executable. In bare-metal, these are typically static libraries (`.a` files).

### Assembler #Level2 #AssemblyToMachineCode #Translation
Translates assembly language code (either hand-written or compiler-generated) into binary machine code instructions.

### Build Systems #Level2 #Automation #Compilation #Management
Tools that automate the process of compiling, linking, and managing dependencies for a firmware project.

#### Makefiles #Level3 #DependencyTracking #Classic #Automation
A traditional build system using `make` utility and Makefile rules to define dependencies and build commands.

#### CMake #Level3 #CrossPlatform #Generator #MetaBuildSystem
A cross-platform build system generator that produces native build files (e.g., Makefiles, Ninja files) based on a higher-level configuration language.

#### Ninja #Level3 #BuildSpeed #Parallelism
A small build system focused on speed, often used as a backend generated by CMake.

### Debugger (Host Software) #Level2 #Troubleshooting #Analysis #Control
Software running on the development computer that interfaces with hardware debug probes to control processor execution, inspect memory/registers, and set breakpoints.

#### GDB (GNU Debugger) #Level3 #CommandLine #Standard #OpenSource
A powerful, standard command-line debugger often used in conjunction with GCC (`arm-none-eabi-gdb`).

#### IDE-Integrated Debuggers #Level3 #Graphical #UserFriendly #Visualization
Debuggers integrated into Integrated Development Environments (IDEs) like VS Code, Eclipse, Keil MDK, IAR EWARM, providing graphical interfaces over GDB or proprietary debug protocols.

### Version Control Systems #Level2 #Collaboration #History #Tracking
Tools for managing changes to source code over time, essential for tracking history, collaboration, and branching.

#### Git #Level3 #Distributed #Standard #BranchingMerging
The de facto standard distributed version control system, widely used for its flexibility and powerful branching/merging capabilities.

#### SVN (Subversion) #Level3 #Centralized #Legacy #SimplerModel
An older, centralized version control system still found in some environments.

## Hardware Interaction & Peripherals #Level1 #IO #Control #Communication #Sensors
Focuses on programming the various hardware modules (peripherals) integrated into microcontrollers to interact with the external world.

### General Purpose Input/Output (GPIO) #Level2 #DigitalIO #Pins #ControlSignals
The most basic peripheral for controlling digital signals on the microcontroller pins, used for driving LEDs, reading buttons, or interfacing with simple digital devices.

#### Pin Configuration (Input/Output/Analog/Alternate Function) #Level3 #Registers #Modes #Multiplexing
Setting up GPIO pins using SFRs to operate as digital inputs, outputs, analog inputs (for ADC), or connecting them internally to other peripherals (Alternate Function).

#### Pull-up/Pull-down Resistors #Level3 #FloatingInput #DefaultState #Configuration
Configuring internal resistors on input pins to ensure a defined logic level when the input is not actively driven (preventing floating inputs).

#### Output Types (Push-Pull, Open-Drain) #Level3 #DrivingStrength #BusSharing #LogicLevels
Configuring GPIO output drivers, e.g., Push-Pull (actively drives high and low) or Open-Drain (actively drives low, requires external pull-up for high), important for bus protocols like I2C.

#### Reading and Writing Pin States #Level3 #BitManipulation #InputSampling #OutputDriving
Techniques for reading the logic level of input pins and setting the logic level of output pins, often involving bitwise operations on GPIO registers.

### Interrupts #Level2 #AsynchronousEvents #Efficiency #Responsiveness
Mechanisms allowing peripherals or external events to temporarily halt the main program execution and run a specific function (Interrupt Service Routine, ISR) to handle the event quickly.

#### Interrupt Vector Table (IVT) #Level3 #HandlerAddresses #Mapping #Lookup
A table (usually in memory, location defined by hardware) containing the starting addresses of the ISRs for various interrupt sources. The CPU uses this table to find the correct handler when an interrupt occurs.

#### Interrupt Service Routines (ISRs) #Level3 #HandlerCode #ContextSwitching #Atomicity
The specific functions written by the developer to handle particular interrupt events. ISRs should typically be short, fast, and handle context switching carefully.

#### Nested Vectored Interrupt Controller (NVIC - ARM Specific) #Level3 #Prioritization #Management #ARM_Cortex
A standard hardware component in ARM Cortex-M processors that manages interrupt sources, prioritization, nesting, and enabling/disabling.

#### Interrupt Latency and Jitter #Level3 #Timing #RealTime #Predictability
Understanding the time delay between an interrupt event occurring and the start of its ISR execution (latency), and the variation in this delay (jitter), critical for real-time systems.

#### Enabling/Disabling Interrupts #Level3 #CriticalSections #Masking #AtomicOperations
Techniques for temporarily preventing interrupts globally or selectively (masking specific sources) to protect critical sections of code that must run atomically.

### Timers and Counters #Level2 #Timing #Events #PWM #Measurement
Hardware peripherals designed for precise time measurement, event counting, generating periodic interrupts, and creating timed waveforms like PWM.

#### Timer Modes (One-shot, Periodic, Input Capture, Output Compare) #Level3 #Functionality #Configuration
Different operational modes of timers: running once (one-shot), generating regular interrupts (periodic), timestamping external events (input capture), or triggering an output event at a specific time (output compare).

#### Prescalers and Clock Sources #Level3 #Resolution #Range #FrequencyControl
Configuring timers to use specific clock sources and dividing the clock frequency (prescaling) to adjust the timer's resolution and maximum count range.

#### Pulse Width Modulation (PWM) Generation #Level3 #MotorControl #Dimming #SignalGeneration
Using timers in output compare mode to generate square waves with variable duty cycles (PWM), commonly used for controlling motor speed, LED brightness, or generating analog-like signals via filtering.

#### Input Capture for Frequency/Period Measurement #Level3 #Sensors #SpeedMeasurement
Using timers in input capture mode to record the timer value when an edge occurs on an input pin, allowing measurement of pulse widths, periods, or frequencies of external signals.

### Communication Peripherals #Level2 #Connectivity #DataTransfer #Protocols
Hardware modules dedicated to implementing standard serial and parallel communication protocols for interfacing with other chips, sensors, or systems.

#### UART (Universal Asynchronous Receiver/Transmitter) #Level3 #Serial #RS232 #Debugging #SimpleComm
A common asynchronous serial communication interface used for point-to-point communication, often used for debugging output (printf) or interfacing with modules like GPS or Bluetooth.

##### Baud Rate Generation #Level4 #Timing #Configuration #Synchronization
Setting the UART peripheral to transmit and receive data at a specific speed (bits per second), which must match the device it's communicating with.

##### Framing (Start/Stop Bits, Parity) #Level4 #DataFormat #ErrorDetection
Configuring the structure of each transmitted byte, including start bits, data bits (usually 8), optional parity bits for error checking, and stop bits.

##### FIFO Buffers #Level4 #Buffering #InterruptHandling #Efficiency
Internal hardware buffers (First-In, First-Out) within the UART peripheral to hold incoming or outgoing data, reducing the need for immediate CPU intervention for every byte and often used with interrupts or DMA.

#### SPI (Serial Peripheral Interface) #Level3 #Synchronous #FullDuplex #Master
Slave #SensorInterface
A synchronous serial protocol commonly used for communicating with peripherals like Flash memory, SD cards, ADCs, DACs, and sensors. Features separate data lines (MOSI/MISO) allowing full-duplex communication.

##### Clock Polarity (CPOL) and Phase (CPHA) #Level4 #Modes #Timing #Configuration
Configuring the SPI clock signal's idle state (polarity) and the data capture edge (phase) to match the requirements of the connected slave device. There are four standard SPI modes.

##### Chip Select (CS) / Slave Select (SS) #Level4 #DeviceAddressing #BusManagement
An active-low signal controlled by the master to select which slave device on the SPI bus is currently active. Each slave typically requires a dedicated CS line.

##### Data Frame Size #Level4 #Configuration #BitLength
Configuring the number of bits per SPI transfer (often 8 bits, but can vary depending on the peripheral and device).

#### I2C (Inter-Integrated Circuit) #Level3 #Synchronous #HalfDuplex #MultiMaster #SensorBus
A synchronous, multi-master, multi-slave serial bus protocol using only two wires (SDA - data, SCL - clock). Common for on-board communication with sensors, EEPROMs, and other peripherals. Uses open-drain lines requiring pull-up resistors.

##### Addressing (7-bit, 10-bit) #Level4 #DeviceIdentification #BusScan
Each device on the I2C bus has a unique address (typically 7-bit, sometimes 10-bit) used by the master to select the target slave for communication.

##### Start/Stop Conditions #Level4 #BusControl #Signaling
Specific transitions on SDA and SCL lines generated by the master to signal the beginning and end of an I2C transaction.

##### ACK/NACK Protocol #Level4 #Handshaking #ErrorDetection #FlowControl
Acknowledgement (ACK) / Not-Acknowledgement (NACK) bits sent by the receiver after each byte transfer to indicate successful reception or request the sender to stop.

##### Clock Stretching #Level4 #Synchronization #SlavePacing
A mechanism where a slave device can temporarily hold the SCL line low to pause the communication, typically used if the slave needs more time to process data.

#### CAN (Controller Area Network) #Level3 #Automotive #Industrial #Robust #DifferentialSignaling
A robust, message-based protocol designed for reliable communication in electrically noisy environments, widely used in automotive and industrial applications. Uses differential signaling for noise immunity.

##### Message Identifiers and Arbitration #Level4 #BusAccess #Priority #MessageBased
Messages are broadcast on the bus with unique identifiers (IDs). IDs determine message priority; lower IDs win arbitration if multiple nodes transmit simultaneously (non-destructive arbitration).

##### Bit Timing and Synchronization #Level4 #BusSpeed #Configuration #ErrorTolerance
Careful configuration of bit timing parameters (sync, propagation, phase segments) is required to ensure reliable communication and synchronization between nodes on the bus.

##### Error Handling Frames #Level4 #Reliability #FaultConfinement
Built-in error detection mechanisms (CRC, stuffing, frame checks) and automatic error signaling (error frames) allow nodes to detect faults and maintain bus integrity.

#### USB (Universal Serial Bus) #Level3 #Complex #HostDevice #HighSpeed
A complex, high-speed serial bus standard used for connecting peripherals to hosts (like PCs) but also increasingly for device-to-device communication in embedded systems (USB On-The-Go). Requires significant software stack support.

##### Device Descriptors #Level4 #Enumeration #Identification #Configuration
Data structures provided by a USB device during enumeration that describe its identity, capabilities, configurations, and interfaces to the host.

##### Endpoints and Transfers (Control, Bulk, Interrupt, Isochronous) #Level4 #DataFlow #CommunicationTypes
Logical communication channels (endpoints) within a USB device, supporting different transfer types optimized for control messages, large data transfers, low-latency data, or real-time streaming data.

##### USB Stacks (Complexity) #Level4 #SoftwareLayer #Abstraction #Drivers
Requires a substantial software stack (often complex even for bare metal) to handle enumeration, control transfers, class drivers (like CDC-ACM for virtual COM ports, MSC for mass storage), and endpoint management.

#### Ethernet #Level3 #Networking #MAC #PHY #WiredComm
Hardware support for implementing wired Ethernet networking, involving a MAC (Media Access Control) peripheral in the microcontroller and an external PHY (Physical Layer) chip.

##### MAC (Media Access Control) Layer #Level4 #Addressing #Framing #HardwarePeripheral
The microcontroller's integrated Ethernet MAC handles layer 2 functions like framing (adding headers/trailers), MAC addressing, and collision detection/avoidance (for half-duplex).

##### PHY (Physical) Layer Interface (MII/RMII/GMII) #Level4 #HardwareConnection #Signaling
Standard interfaces (MII, RMII, GMII) connecting the microcontroller's MAC to the external PHY chip, which handles the physical signaling on the Ethernet cable.

##### TCP/IP Stacks (Bare Metal Considerations) #Level4 #Protocols #ResourceUsage #NetworkingSoftware
Implementing higher-level networking protocols (IP, TCP, UDP, DHCP, DNS, HTTP, etc.) requires a dedicated TCP/IP stack (e.g., lwIP, uIP), which can consume significant code size and RAM, especially on bare metal.

### Analog Peripherals #Level2 #Sensors #RealWorld #Measurement #Actuation
Hardware modules designed to interface with continuous, real-world analog signals, converting them to digital or vice-versa.

#### Analog-to-Digital Converter (ADC) #Level3 #Measurement #Sampling #Quantization
Converts an analog voltage input (e.g., from a sensor) into a digital value that the microcontroller can process.

##### Resolution and Sampling Rate #Level4 #Accuracy #Speed #Tradeoffs
Key ADC parameters: Resolution (number of bits, e.g., 10-bit, 12-bit) determines the precision of the conversion. Sampling Rate (samples per second) determines how quickly the analog signal can be measured.

##### Input Channels and Multiplexing #Level4 #SignalSelection #MultiSensor
ADCs often have multiple input channels connected to different pins, allowing measurement from various sensors using an internal multiplexer to select the active channel.

##### Conversion Modes (Single, Continuous, Triggered) #Level4 #Operation #Efficiency
Different ways the ADC can perform conversions: one at a time on demand (single), constantly converting (continuous), or starting a conversion based on a timer or external event (triggered).

##### Reference Voltage #Level4 #Calibration #Accuracy #Range
The voltage used by the ADC as a reference for the conversion process. The accuracy and stability of the reference voltage (Vref) directly impact the accuracy of the ADC readings.

#### Digital-to-Analog Converter (DAC) #Level3 #Actuation #SignalGeneration #Output
Converts a digital value from the microcontroller into an analog voltage or current output, used for generating analog waveforms or controlling analog actuators.

##### Resolution and Output Range #Level4 #Precision #VoltageLevel
Key DAC parameters: Resolution (number of bits) determines the number of distinct output levels. Output Range defines the minimum and maximum analog output voltage.

##### Output Buffering #Level4 #DrivingCapability #Impedance
DAC outputs may have internal buffers to provide sufficient current drive capability for connected loads.

#### Comparators #Level3 #ThresholdDetection #SimpleLogic #FastResponse
Hardware modules that compare two analog input voltages and output a digital signal indicating which voltage is higher. Useful for simple threshold detection without needing a full ADC conversion.

### Direct Memory Access (DMA) #Level2 #Efficiency #DataMovement #CPU_Offload
A hardware peripheral that can transfer data between memory locations or between peripherals and memory without direct CPU intervention, freeing up the CPU for other tasks.

#### DMA Channels and Requests #Level3 #Concurrency #PeripheralTriggering #Configuration
DMA controllers typically have multiple channels, each configurable to handle a specific data transfer task triggered by a peripheral request (e.g., ADC conversion complete, UART receive buffer full).

#### Transfer Modes (Memory-to-Memory, Peripheral-to-Memory, Memory-to-Peripheral) #Level3 #UseCases #DataFlow
Different types of transfers supported by DMA: copying data within memory, reading data from a peripheral into memory (e.g., ADC to RAM), or writing data from memory to a peripheral (e.g., RAM to UART TX).

#### Configuring Source/Destination Addresses and Transfer Size #Level3 #Setup #Pointers #Counters
Setting up DMA requires specifying the source memory/peripheral address, destination memory/peripheral address, the amount of data to transfer, and data unit size (byte, half-word, word).

#### Interrupts on Transfer Completion/Error #Level3 #Signaling #Coordination
DMA controllers can generate interrupts upon successful completion of a transfer, halfway through a transfer, or if an error occurs, allowing the CPU to manage the data flow or handle issues.

## Boot Process and Bootloaders #Level1 #Startup #Initialization #FirmwareUpdate
Covers the sequence of events from power-on or reset until the main application firmware begins execution, including the role of bootloaders.

### Power-On Sequence #Level2 #HardwareStartup #Clocks #ResetRelease
The initial hardware events after power is applied, including stabilization of power rails, startup of clock sources, and the release of the reset signal to the CPU.

### Reset Vector and Initial Execution #Level2 #CPUStart #FirstInstructions #VectorTable
Upon reset release, the CPU fetches the starting address of the initial code (reset vector) from a predefined memory location (usually part of the vector table) and begins executing instructions from there.

### System Initialization #Level2 #Configuration #Setup #CRuntime
The initial code executed after reset, responsible for setting up the essential microcontroller systems before jumping to the main application code or C runtime startup.

#### Clock System Configuration #Level3 #FrequencySetup #PLL #PeripheralClocks
Configuring the main system clock frequency (often involving PLL setup) and enabling clocks for necessary peripherals.

#### Memory Initialization (.bss clearing, .data copying) #Level3 #C_Runtime #Variables #Initialization
Setting up the C runtime environment: initializing global and static variables in RAM (`.data` section copied from Flash) and zeroing out uninitialized global/static variables (`.bss` section).

#### Peripheral Initialization (Minimal) #Level3 #EarlySetup #EssentialPeripherals
Basic initialization of essential peripherals required early in the boot process, potentially including GPIOs for status indicators or a UART for early debug messages.

### Bootloader Concepts #Level2 #FirmwareUpdate #Recovery #ApplicationLoading
Software residing in protected memory that runs before the main application, primarily responsible for loading the main application and often providing mechanisms for firmware updates.

#### Bootloader Stages (Primary, Secondary) #Level3 #MultiStageLoading #Flexibility
Some systems use multiple bootloader stages: a small, immutable primary bootloader (possibly in ROM) might load a more feature-rich secondary bootloader from Flash, which then handles application loading and updates.

#### Memory Layout for Bootloader & Application #Level3 #Partitioning #Protection #Mapping
Defining distinct memory regions (usually in Flash) for the bootloader code, application code, and potentially stored configuration or update images. Memory protection (MPU) might be used to protect the bootloader region.

#### Firmware Update Mechanisms #Level3 #OTA #Serial #USB #UpdatingCode
Methods used by the bootloader to receive and install new application firmware, such as Over-the-Air (OTA) updates, updates via serial ports (UART, USB), or from storage media (SD card).

##### In-Application Programming (IAP) #Level4 #SelfUpdate #BootloaderAPI
Techniques where the running application itself can trigger and manage the firmware update process, often by calling functions provided by the underlying bootloader.

##### Dual-Banking #Level4 #Redundancy #FailSafe #AtomicUpdate
Using two separate memory banks for the application firmware. The bootloader writes the new firmware to the inactive bank and only switches to it after successful verification, providing a fail-safe update mechanism.

#### Communication Protocols for Update #Level3 #XMODEM #YMODEM #Custom #DataTransfer
Standard (like XMODEM, YMODEM) or custom communication protocols used between the update tool (on a host PC) and the bootloader to reliably transfer the firmware image.

#### Security Considerations (Secure Boot) #Level3 #Authentication #Encryption #Trust
Implementing security measures in the bootloader (Secure Boot) to verify the authenticity and integrity (e.g., using digital signatures) of the application firmware before loading it, preventing unauthorized code execution.

## Debugging and Testing #Level1 #Troubleshooting #Validation #QualityAssurance
Techniques and tools used to find and fix errors (debugging) and verify the correctness and robustness of the firmware (testing).

### Debugging Techniques #Level2 #FindingBugs #Analysis #Observation
Methods used to understand program execution flow, inspect state, and identify the root cause of failures.

#### printf-style Debugging (via UART) #Level3 #Simple #Intrusive #Tracing
Inserting print statements in the code to output status messages or variable values over a UART connection. Simple but can affect timing and requires a UART connection.

#### Blinking LEDs #Level3 #BasicStatus #Minimalist #HardwareIndicator
Using GPIO-controlled LEDs to indicate program state, progress through different code sections, or signal error conditions. Very basic but requires minimal resources.

#### Logic Analyzers #Level3 #HardwareSignals #TimingAnalysis #ProtocolDecoding
Hardware instruments that capture and display multiple digital signals over time, essential for debugging hardware interfaces, verifying timing, and decoding communication protocols (SPI, I2C, UART).

#### Oscilloscopes #Level3 #AnalogSignals #SignalIntegrity #Timing #VoltageLevels
Instruments used to visualize voltage signals over time, crucial for analyzing analog signals, checking signal integrity (rise/fall times, noise), verifying clock signals, and precise timing measurements.

#### In-Circuit Debuggers/Programmers #Level3 #HardwareDebug #Breakpoints #StepExecution
The primary method for bare-metal debugging, using a hardware probe connected to the target's debug interface (JTAG/SWD) and controlled by host software (GDB, IDE). Allows setting breakpoints, stepping through code, inspecting memory and registers without significantly altering program behavior.

##### JTAG (Joint Test Action Group) #Level4 #Standard #BoundaryScan #Debugging #Testing
An IEEE standard interface primarily designed for testing printed circuit board connections (boundary scan) but widely adopted for processor debugging. Typically uses 4-5 dedicated pins.

##### SWD (Serial Wire Debug - ARM Specific) #Level4 #FewerPins #Debugging #ARM_Cortex
An alternative debug interface developed by ARM, using only two pins (SWDIO for data, SWCLK for clock). Common on Cortex-M microcontrollers, offering similar debug capabilities to JTAG but with fewer pins.

##### Debug Probes (J-Link, ST-Link, CMSIS-DAP) #Level4 #HardwareInterface #DebuggerConnection
Hardware adapters that translate between the host computer's interface (usually USB) and the target microcontroller's debug interface (JTAG or SWD). Examples include Segger J-Link, STMicroelectronics ST-Link, and open-standard CMSIS-DAP probes.

#### Core Dumps / Fault Analysis #Level3 #CrashAnalysis #PostMortem #ExceptionHandlers
Configuring the system to save the processor state (registers, stack) upon encountering a hard fault or critical error, allowing for post-mortem analysis to determine the cause of the crash. ARM Cortex-M fault handlers are key here.

#### Memory Inspection #Level3 #DataVerification #StateAnalysis #DebuggingTool
Using the debugger or other tools to read and examine the contents of RAM, Flash memory, and peripheral registers to verify data structures, check variable values, and understand the system state.

### Testing Strategies #Level2 #QualityAssurance #Reliability #Verification
Methodologies applied during development to ensure the firmware meets requirements and is free from defects.

#### Unit Testing #Level3 #CodeModules #Isolation #TestFrameworks
Testing individual functions or software modules in isolation from the rest of the system, often requiring mocking or stubbing of hardware dependencies. Frameworks like Ceedling (Unity/CMock) can be used.

##### Mocking Hardware #Level4 #Simulation #TestFrameworks #DependencyInjection
Creating software replacements (mocks or stubs) for hardware peripherals or low-level drivers, allowing unit tests to run on a host computer or simulator without needing the actual target hardware.

#### Integration Testing #Level3 #ModuleInteraction #SystemView #SubsystemTest
Testing the interaction between different software modules or subsystems, often involving partial hardware interaction or testing on the actual target hardware.

#### Hardware-in-the-Loop (HIL) Testing #Level3 #RealHardware #SimulationIO #SystemTest
Testing the actual firmware running on the target hardware, where external inputs/outputs are simulated by a test system that mimics the real-world environment the device will operate in.

#### Static Analysis #Level3 #CodeQuality #PotentialBugs #Linters #CodeRules
Using automated tools (linters like cppcheck, PVS-Studio, or compiler warnings) to analyze the source code without executing it, identifying potential bugs, style violations, questionable constructs, and adherence to coding standards (like MISRA C).

#### Code Reviews #Level3 #Collaboration #BugPrevention #KnowledgeSharing
Manually inspecting source code by other developers to identify potential bugs, suggest improvements, ensure adherence to coding standards, and share knowledge.

## Real-Time Concepts (Without RTOS) #Level1 #Timing #Determinism #Scheduling
Techniques for managing tasks and responding to events in a timely manner without using a formal Real-Time Operating System (RTOS).

### Cooperative Multitasking #Level2 #NonPreemptive #StateMachines #TaskSwitching
Simulating multitasking by designing tasks to voluntarily yield control back to a central scheduler or main loop, often implemented using state machines.

#### Super Loop Architecture #Level3 #Simple #BlockingIssues #Polling
A common bare-metal structure consisting of an infinite loop that sequentially checks for events or flags and calls corresponding task functions. Prone to blocking if one task takes too long.

#### State Machines #Level3 #EventDriven #Modularity #NonBlocking
Designing tasks or the entire application as a set of states and transitions triggered by events (interrupts, timer expirations, flags set by other tasks). Promotes non-blocking behavior and modularity.

### Handling Time-Critical Tasks #Level2 #Interrupts #Prioritization #Latency
Strategies for ensuring that urgent operations are performed within their required deadlines, primarily relying on interrupts.

#### Interrupt Priorities #Level3 #NVIC #Urgency #Preemption
Assigning priorities to different interrupt sources (e.g., using the ARM NVIC) so that more critical interrupts can preempt less critical ones, ensuring timely handling of important events.

#### Minimizing ISR Latency #Level3 #Efficiency #ISRDesign #ShortHandlers
Keeping Interrupt Service Routines (ISRs) as short and efficient as possible to reduce the time the system spends handling interrupts and minimize the delay (latency) for other pending interrupts or the main loop.

#### Deferred Processing (Main Loop Communication from ISR) #Level3 #NonBlockingISR #Flags #Queues
Performing only the time-critical actions within the ISR and deferring longer processing to the main loop. This is typically done by setting flags or adding data to a queue within the ISR, which the main loop then processes.

### Timer-Based Scheduling #Level2 #PeriodicTasks #Polling #TimeSlicing
Using hardware timers to create periodic events (ticks) that can trigger task execution or serve as a time base for polling schedules.

#### Using Hardware Timers for Task Ticks #Level3 #TimeSlicing #Scheduling #PeriodicInterrupt
Configuring a hardware timer to generate interrupts at regular intervals (e.g., every 1ms or 10ms). The timer ISR can then manage task scheduling, update software timers, or signal periodic tasks in the main loop.

## Architecture Specifics #Level1 #Platforms #Details #Processors
Focuses on the details, features, and toolchains specific to particular microcontroller/processor architectures commonly used in bare-metal development.

### ARM Cortex-M #Level2 #Popular #Microcontrollers #StandardizedCore
A family of ARM processor cores specifically designed for microcontroller applications, known for energy efficiency, performance range, and standardized features like the NVIC and debug interfaces.

#### Core Variants (M0, M0+, M3, M4, M7, M33...) #Level3 #Features #Performance #Cost
Different cores within the Cortex-M family offer varying levels of performance, features (like FPU, DSP extensions, MPU, TrustZone), and power consumption, targeting different application segments.

#### Thumb/Thumb-2 Instruction Set #Level3 #CodeDensity #Performance #MixedISA
Cortex-M processors primarily execute the Thumb-2 instruction set, a mix of 16-bit and 32-bit instructions optimized for code density and performance in embedded systems. Older Thumb (16-bit only) is also supported.

#### Memory Protection Unit (MPU) #Level3 #Security #Isolation #MemoryRegions
An optional hardware unit available on some Cortex-M cores (M3, M4, M7, M33+) that allows defining memory regions with specific access permissions (read/write/execute, privileged/unprivileged), enhancing reliability and security by isolating software components.

#### Floating Point Unit (FPU - M4/M7) #Level3 #Performance #Math #HardwareAcceleration
Hardware unit available on Cortex-M4 and M7 cores for accelerating single-precision (and sometimes double-precision on M7) floating-point arithmetic operations.

#### CMSIS (Cortex Microcontroller Software Interface Standard) #Level3 #Abstraction #Portability #ARM_Standard
A vendor-independent hardware abstraction layer provided by ARM for the Cortex-M processor series, aiming to simplify software reuse and portability across different Cortex-M based devices.

##### CMSIS-Core #Level4 #CPUAccess #NVIC #SysTick #CorePeripherals
Provides APIs to access core processor registers, NVIC (interrupt controller), SysTick timer, and core-specific functions like fault handling. Essential for basic Cortex-M bare-metal programming.

##### CMSIS-Driver #Level4 #PeripheralDrivers #API_Standard
Defines standardized API interfaces for common microcontroller peripherals (UART, SPI, I2C, etc.), allowing for easier integration of middleware and portability of drivers (requires vendor implementation).

##### CMSIS-DSP #Level4 #DigitalSignalProcessing #OptimizedLibraries #MathFunctions
A library of optimized signal processing functions (filters, transforms like FFT) for Cortex-M cores, especially those with DSP extensions or an FPU (M4, M7, M33).

##### CMSIS-RTOS #Level4 #OS_API #StandardInterface (Though not bare metal)
Provides a standardized API for Real-Time Operating Systems, allowing easier switching between different RTOS implementations. While useful, using an RTOS moves away from pure bare-metal.

### RISC-V #Level2 #OpenStandard #Emerging #CustomizableISA
An open-standard Instruction Set Architecture (ISA) gaining traction, offering flexibility and customizability, suitable for a wide range of applications from microcontrollers to high-performance computing.

#### Base Integer ISA (RV32I, RV64I) #Level3 #CoreInstructions #MinimalSet
The fundamental set of integer instructions (32-bit or 64-bit variants) that all RISC-V implementations must support.

#### Standard Extensions (M, A, F, D, C) #Level3 #Features #Multiply #Atomic #Float #Double #Compressed
Optional standard extensions that add functionality: M (Integer Multiplication/Division), A (Atomic Instructions), F (Single-Precision Floating-Point), D (Double-Precision Floating-Point), C (Compressed Instructions for code density).

#### Privilege Levels (Machine, Supervisor, User) #Level3 #Security #OSSupport #ExecutionModes
Defines different execution modes (privilege levels) to enable secure system operation and support for operating systems. Bare-metal code typically runs in Machine mode (highest privilege).

#### Platform-Level Interrupt Controller (PLIC) #Level3 #InterruptHandling #StandardizationEffort
A standardized interrupt controller architecture for handling external interrupts in RISC-V systems, analogous to the NVIC in ARM Cortex-M but with different features. Core Local Interruptor (CLINT) handles timer/software interrupts.

### Other Architectures (AVR, PIC, MSP430, etc.) #Level2 #Legacy #SpecificUseCases #8bit #16bit
Architectures historically popular in 8-bit and 16-bit microcontroller markets, still used in specific applications, often characterized by simpler designs and unique peripheral implementations.

#### Architecture Nuances #Level3 #Registers #Memory #Peripherals #Differences
Each architecture has its own unique register set, memory organization (e.g., Harvard vs Von Neumann variations, banked memory), instruction set quirks, and peripheral control methods.

#### Toolchain Differences #Level3 #Compilers #Debuggers #VendorTools
Often require specific compilers (e.g., SDCC for some 8-bit MCUs, vendor-specific compilers) and debugging tools/protocols distinct from ARM or RISC-V ecosystems.

## Optimization #Level1 #Performance #Resources #Efficiency
Techniques to improve the firmware's performance (speed), reduce its size (memory footprint), or minimize its power consumption.

### Code Size Optimization #Level2 #FlashUsage #MemoryConstraint #Footprint
Techniques aimed at reducing the amount of Flash memory occupied by the firmware code and constant data.

#### Compiler Optimization Flags (-Os) #Level3 #ToolchainFeatures #SizeVsSpeed
Using compiler flags specifically designed to prioritize code size reduction (e.g., `-Os` in GCC/Clang) over execution speed.

#### Removing Unused Code/Data #Level3 #LinkerGC #ManualPruning #DeadCodeElimination
Utilizing linker features (`--gc-sections` in GCC/Clang) to remove functions and data that are never referenced, and manually removing unnecessary code or features.

#### Using Libraries Wisely (Newlib-nano) #Level3 #LibcVariants #MinimalLibs
Choosing minimal versions of standard C libraries (like `newlib-nano`) designed for embedded systems, or avoiding standard library functions with large dependencies altogether.

#### Code Factoring #Level3 #Reuse #Functions #Modularity
Identifying and consolidating repeated code blocks into functions to reduce overall code size.

### Execution Speed Optimization #Level2 #CPU_Cycles #Latency #Throughput
Techniques aimed at making the firmware run faster, reducing execution time for critical tasks or increasing overall throughput.

#### Compiler Optimization Flags (-O1, -O2, -O3, -Ofast) #Level3 #Tradeoffs #DebuggingImpact #AggressiveOptimization
Using compiler flags to enable various levels of optimization focused on speed (e.g., `-O1`, `-O2`, `-O3`, `-Ofast` in GCC/Clang), involving trade-offs with compile time, code size, and sometimes debugging difficulty.

#### Algorithmic Optimization #Level3 #Efficiency #BigO #DataStructures
Choosing more efficient algorithms and data structures (e.g., reducing algorithmic complexity from O(n^2) to O(n log n)) to solve problems faster.

#### Loop Unrolling #Level3 #InstructionLevelParallelism #CacheEffects #ManualOptimization
Manually or instructing the compiler to replicate the body of a loop multiple times to reduce loop overhead and potentially improve instruction pipeline usage, trading code size for speed.

#### Using Inline Functions/Assembly #Level3 #FunctionCallOverhead #DirectControl #CriticalSections
Using the `inline` keyword or writing specific parts in assembly language to avoid function call overhead or achieve maximum performance for critical code sections.

#### Optimizing Memory Access Patterns #Level3 #CacheAwareness #Alignment #DataLayout
Arranging data structures and access patterns to take advantage of CPU caches (if present) and ensure data alignment for faster memory accesses.

### Power Optimization #Level2 #BatteryLife #LowPowerModes #EnergyEfficiency
Techniques aimed at reducing the energy consumed by the microcontroller and associated system, crucial for battery-powered devices.

#### Clock Gating #Level3 #PeripheralPower #DynamicControl #RegisterSetting
Disabling the clock signal to peripherals that are not currently in use, significantly reducing their power consumption. Typically controlled via specific SFRs.

#### Reducing Clock Speed #Level3 #DynamicScaling #Tradeoff #PerformanceVsPower
Lowering the main CPU clock frequency when high performance is not required, as power consumption is often proportional to clock speed.

#### Sleep Modes (Stop, Standby, Shutdown) #Level3 #CPU_States #WakeupSources #DeepSleep
Utilizing low-power modes provided by the microcontroller where the CPU core and various peripherals are halted or powered down. The system can wake up from these modes based on specific events (interrupts, timer wakeup).

#### Optimizing Peripheral Usage #Level3 #ActiveTime #PowerDown #EfficientUse
Minimizing the time peripherals need to be active, using efficient communication methods (e.g., DMA instead of CPU polling), and powering down external components when not needed.

## Security Considerations #Level1 #Protection #Safety #Integrity #Confidentiality
Implementing measures to protect the firmware and the system it controls from unauthorized access, modification, or interference.

### Secure Boot #Level2 #Authenticity #Integrity #ChainOfTrust
Ensuring that the device only boots and executes authenticated and unmodified firmware, typically starting with an immutable hardware root of trust or a verified first-stage bootloader.

#### Chain of Trust #Level3 #BootloaderVerification #SignatureChecking #Cryptography
A sequence where each stage of the boot process verifies the integrity and authenticity (e.g., using cryptographic signatures) of the next stage before executing it, starting from a trusted root.

#### Hardware Security Modules (HSM) / TrustZone (ARMv8-M) #Level3 #HardwareSecurity #Isolation #KeyStorage
Utilizing dedicated hardware components (HSM) or architecture features (like ARM TrustZone for Cortex-M) to create secure execution environments, protect cryptographic keys, and isolate critical code and data.

### Memory Protection #Level2 #Isolation #Safety #AccessControl
Using hardware features to prevent different software components from interfering with each other's memory or accessing restricted hardware resources.

#### Using the Memory Protection Unit (MPU) #Level3 #RegionPermissions #AccessControl #FaultPrevention
Configuring the MPU (if available) to define memory regions with specific access permissions (read/write/execute, privilege levels) to prevent bugs in one module from corrupting others or accessing peripherals incorrectly.

#### Stack Overflow Protection #Level3 #Canaries #GuardPages #MemoryCorruption
Implementing mechanisms like stack canaries (checking for corruption near function return addresses) or using the MPU to define stack guard pages to detect and prevent stack buffer overflows.

### Secure Communication #Level2 #Encryption #Authentication #DataProtection
Protecting data transmitted or received by the device using cryptographic methods.

#### Implementing Cryptographic Algorithms (Carefully) #Level3 #Hashing #Encryption #Libraries #PerformanceImpact
Integrating standard cryptographic algorithms (e.g., AES for encryption, SHA-256 for hashing, ECDSA for signatures) often using optimized libraries, while being mindful of performance and code size constraints on microcontrollers. Requires careful implementation to avoid vulnerabilities.

#### Random Number Generation (Hardware vs Software) #Level3 #Entropy #Predictability #CryptographyRequirements
Generating high-quality random numbers is crucial for cryptography. Hardware True Random Number Generators (TRNGs) are preferred over software Pseudo-Random Number Generators (PRNGs) for security-sensitive applications.

### Physical Security / Tamper Detection #Level2 #HardwareProtection #AntiTamper
Measures to protect the device from physical attacks, reverse engineering, or modification.

## Advanced Topics #Level1 #FurtherLearning #Specialization #ComplexSystems
Areas requiring deeper knowledge or specialized skills beyond the fundamentals of bare-metal development.

### Writing Device Drivers #Level2 #HardwareAbstraction #Modularity #APIDesign
Developing reusable software modules (drivers) to interface with specific hardware peripherals, providing a clean API for the application layer and hiding low-level register details.

#### Driver Models #Level3 #LayeredArchitecture #APIs #Reusability
Designing drivers using established patterns or layers (e.g., separating logical device functions from physical hardware access) to improve structure, portability, and maintainability.

#### Register-Level Programming vs HALs (Hardware Abstraction Layers) #Level3 #Tradeoffs #Portability #Performance
Understanding the differences and trade-offs between directly manipulating peripheral registers versus using vendor-provided Hardware Abstraction Layers (HALs), considering portability, performance, code size, and control.

### Custom C Runtime Initialization #Level2 #StartupCode #crt0 #LinkerIntegration
Modifying or replacing the standard C runtime startup code (`crt0.o`) to implement custom initialization sequences, memory setups, or pre-main() operations.

#### Modifying Linker Scripts Deeply #Level3 #MemorySegmentation #CustomSections #AdvancedLayout
Advanced customization of linker scripts to control memory placement with fine granularity, define custom memory sections, overlay code, or manage complex memory layouts.

#### Implementing `malloc`/`free` (If Needed) #Level3 #DynamicMemory #HeapManagement #Fragmentation
Implementing custom dynamic memory allocation routines if standard library `malloc`/`free` are unsuitable or unavailable. Requires careful consideration of heap management strategies, fragmentation, and determinism in real-time systems. (Often avoided in bare-metal).

### Interfacing with FPGAs #Level2 #HardwareAcceleration #CustomLogic #HighSpeedIO
Communicating between a microcontroller and a Field-Programmable Gate Array (FPGA), often using high-speed parallel or serial interfaces (like SPI, FSMC/SMC, or custom protocols) to offload tasks or implement custom hardware logic.

### Safety Critical Firmware Development (MISRA C) #Level2 #Standards #Reliability #Automotive #Medical #Avionics
Developing firmware for applications where failures could endanger human life or cause significant damage (e.g., automotive, medical, avionics). Requires adherence to strict coding standards (like MISRA C/C++), rigorous testing, and formal development processes.

### Digital Signal Processing (DSP) on Microcontrollers #Level2 #SignalAnalysis #Filtering #FFT #RealTimeAudioVideo
Implementing algorithms for processing digitized signals (audio, sensor data, simple video) directly on the microcontroller, often leveraging DSP instruction extensions (ARM Cortex-M4/M7/M33) or dedicated DSP libraries (CMSIS-DSP).

# I. Genesis Hardware Architecture

## Understanding the Motorola 68000 CPU

### 68000 Registers

*   Data Registers: `D0`-`D7` (32-bit)
*   Address Registers: `A0`-`A6` (32-bit), `A7` (Stack Pointer)
*   Status Register: Includes condition codes (carry, zero, negative, overflow, extend) and interrupt mask.
*   Example: Moving the value 10 into register D0: `MOVE.L #10, D0`

### 68000 Addressing Modes

*   Register Direct: `D0`, `A0`
*   Immediate: `#10`
*   Address Register Indirect: `(A0)`
*   Address Register Indirect with Post-Increment: `(A0)+`
*   Address Register Indirect with Pre-Decrement: `-(A0)`
*   Address Register Indirect with Displacement: `(d, A0)`
*   Absolute Short: `$1234`
*   Absolute Long: `$12345678`
*   Example: Moving the value at memory location pointed to by A0 into D1: `MOVE.L (A0), D1`

### 68000 Instruction Set

*   Data Transfer: `MOVE`, `LEA` (Load Effective Address)
*   Arithmetic: `ADD`, `SUB`, `MULU`, `DIVU`
*   Logical: `AND`, `OR`, `EOR`, `NOT`
*   Bit Manipulation: `BSET`, `BCLR`, `BTST`
*   Control Flow: `JMP`, `BSR` (Branch to Subroutine), `RTS` (Return from Subroutine), `BEQ`, `BNE`
*   Example: Adding the values in D0 and D1, storing the result in D2: `ADD.L D0, D1, D2`

## Understanding the Zilog Z80 CPU

### Z80 Registers

*   General Purpose Registers: `A`, `B`, `C`, `D`, `E`, `H`, `L`, and their shadow registers `A'`, `B'`, `C'`, `D'`, `E'`, `H'`, `L'`
*   Index Registers: `IX`, `IY`
*   Stack Pointer: `SP`
*   Program Counter: `PC`
*   Interrupt Vector: `I`
*   Memory Refresh: `R`
*   Flag Register: Contains flags such as Carry, Zero, Sign, Parity/Overflow, Add/Subtract
*   Example: Loading the value 20 into register A: `LD A, 20`

### Z80 Addressing Modes

*   Immediate: `LD A, 20` (20 is the immediate value)
*   Register Direct: `LD A, B` (copies value from B to A)
*   Register Indirect: `LD A, (HL)` (loads value from memory address pointed by HL into A)
*   Indexed: `LD A, (IX+d)` (loads value from memory address IX+d into A, where d is a displacement)
*   Extended Addressing: `LD A, (address)` (loads value from specific memory address into A)
*   Example: Load A with the value from the memory address stored in HL. `LD A, (HL)`

### Z80 Instruction Set

*   Load: `LD` (loads data between registers and memory)
*   Arithmetic: `ADD`, `SUB`, `INC`, `DEC`
*   Logical: `AND`, `OR`, `XOR`, `CP` (compare)
*   Bit Manipulation: `BIT`, `SET`, `RES` (test, set, and reset bits)
*   Jump and Call: `JP`, `CALL`, `RET`
*   Input/Output: `IN`, `OUT` (used for communicating with peripherals, but less relevant for typical Genesis games)
*   Example: Add the values in registers A and B, storing the result in A: `ADD A, B`

## Memory Map

### ROM (Game Cartridge)

*   Contains the game's program code and data.
*   Address range usually starts at `$000000`.

### RAM (Work Memory)

*   Used for temporary storage and variables.
*   Address range: `$C00000` to `$C0FFFF` (128 KB).

### VRAM (Video RAM)

*   Stores the graphics data (tilemaps, sprites, palettes).
*   Address range: `$E00000` to `$E0FFFF` (64 KB).

### VSRAM (Vertical Scroll RAM)

*   Stores vertical scrolling data for parallax effects.
*   Address range: `$D00000` to `$D0003F` (64 bytes).

### CRAM (Color RAM)

*   Stores the color palettes for the display.
*   Address range: `$FF0000` to `$FF003F` (64 bytes).

### Registers (I/O Ports)

*   Control various hardware functions (VDP, sound chip).
*   Address range: `$A00000` - `$A1FFFF`
*   Example: Writing to the VDP control port: `MOVE.W #$8000, $A00004`

## Video Display Processor (VDP)

### VDP Registers

*   Control the display mode, scrolling, and sprite attributes.
*   Accessed via I/O ports.

### VDP Control and Data Ports

*   Control Port: `$A00004` (writes control commands)
*   Data Port: `$A00006` (writes data to VRAM, CRAM, VSRAM)

### Display Modes

*   Mode 4 (320x224 resolution)
*   Mode 5 (256x224 resolution)

### Tilemaps

*   Background layers composed of tiles.
*   Stored in VRAM.

### Sprites

*   Moving objects.
*   Attributes (position, size, tile index) stored in Sprite Attribute Table (SAT).

## Sound Hardware

### Yamaha YM2612 FM Synthesizer

*   Generates FM synthesis audio.
*   Accessed via I/O ports.

### Texas Instruments SN76489 PSG (Programmable Sound Generator)

*   Generates simpler square wave audio.
*   Accessed via I/O ports.

### Sound Driver

*   Software that controls the YM2612 and SN76489 to play music and sound effects.

## Input Devices

### Controller

*   Reads controller input (buttons, directional pad).
*   Accessed via I/O ports.
*   Reading Controller data: Read port `$A10009`

### Controller Ports

*   Port 1: First controller
*   Port 2: Second controller

## Glossary

* **ROM:** Read-Only Memory, used to store the game's code and data.
* **RAM:** Random Access Memory, used for storing variables and temporary data during gameplay.
* **VRAM:** Video RAM, a special type of RAM dedicated to storing graphics data.
* **CRAM:** Color RAM, a small area of memory that stores the color palettes used by the VDP.
* **VSRAM:** Vertical Scroll RAM, used for storing vertical scrolling data.
* **VDP:** Video Display Processor, the chip responsible for generating the video signal.
* **PSG:** Programmable Sound Generator, a simple sound chip that generates square waves.

## Summary
* Covered Genesis hardware fundamentals including the 68000 and Z80 CPUs, memory map, VDP, sound hardware, and input devices. Understanding these components is essential for developing games on the Genesis.

# II. Genesis Software Development

## Development Tools

### Assemblers

*   Convert assembly code into machine code.
*   Examples: AS, A68K

### Linkers

*   Combine multiple object files into a single executable file.

### Emulators

*   Simulate the Genesis hardware on a computer.
*   Examples: BlastEm, Gens/GS, Fusion

### Debuggers

*   Help identify and fix bugs in the code.
*   Often integrated into emulators.

### Tile Editors

*   Create and edit tiles for the game graphics.
*   Examples: Tile Molester, YY-CHR

### Map Editors

*   Create and edit tilemaps for the game levels.

### Music Trackers

*   Compose music for the YM2612 and SN76489.
*   Examples: DefleMask, VGMTool

## Setting up a Development Environment

### Installing an Assembler

*   Download and install an assembler (e.g., AS).
*   Configure the assembler's path in the system environment variables.

### Installing an Emulator

*   Download and install a Genesis emulator (e.g., BlastEm).

### Text Editor Configuration

*   Configure the text editor for assembly syntax highlighting and code completion.

## Assembly Language Programming

### Basic Assembly Program Structure

```assembly
ORG $000000 ; Start address
    MOVE.W #$2700, SR ; Disable interrupts

start:
    ; Game code goes here
    BRA start ; Infinite loop

    END start
```

### Hardware Initialization

*   Initializing the VDP, sound chip, and other hardware components.
*   Example: Setting the background color:
    ```assembly
    MOVE.W #$E700, $A00004 ; Write to VDP control port
    MOVE.W #$00E0, $A00006 ; Write color data to VDP data port
    ```

### Drawing Graphics

*   Writing tile data to VRAM.
*   Manipulating sprite attributes in the SAT.

### Handling Input

*   Reading controller input from I/O ports.
*   Responding to button presses.

### Playing Sound

*   Sending commands to the YM2612 and SN76489.
*   Using a sound driver to play music and sound effects.

## Game Loop

### Game Loop Structure

```assembly
gameLoop:
    ; Handle input
    ; Update game logic
    ; Draw graphics
    ; Play sound

    BRA gameLoop ; Repeat
```

### Timing and Frame Rate

*   Maintaining a consistent frame rate (e.g., 60 FPS for NTSC).
*   Using the VBlank interrupt to synchronize game updates.

## Example Projects

### Displaying a Static Image

*   Loading tile data into VRAM and displaying it on the screen.

### Moving a Sprite

*   Updating the sprite's position based on controller input.

### Playing a Simple Sound Effect

*   Triggering a sound effect when a button is pressed.

## Glossary

*   **Assembler:** A program that translates assembly language code into machine code.
*   **Linker:** A program that combines multiple object files into a single executable file.
*   **Emulator:** A program that simulates the behavior of a hardware system, like the Genesis.
*   **Debugger:** A tool used to step through code execution and inspect variables, aiding in finding and fixing bugs.
*   **VBlank:** Vertical Blanking Interval, the time period when the electron beam in a CRT monitor returns from the bottom to the top of the screen.

## Summary

* Covered the software side of Genesis game development, including setting up a development environment, writing assembly language programs, managing the game loop, and building simple projects to reinforce skills. This helps bridge the gap between understanding the hardware and creating actual games.

# III. Advanced Genesis Development Techniques

## Optimizing Code for Performance

### Code Profiling

*   Identifying performance bottlenecks in the code.
*   Using debugging tools to measure execution time.

### Loop Unrolling

*   Reducing loop overhead by duplicating code within the loop.
*   Example:
    ```assembly
    ; Original loop
    MOVE.L #10, D0
loop:
    ; Do something
    DBRA D0, loop

    ; Unrolled loop (partially)
    MOVE.L #10, D0
    ; Do something
    ; Do something
    ; Do something
    ADD.L #-3, D0
    BGE loopUnrolled ; branch if D0 >= 0
    ```

### Look-Up Tables

*   Pre-calculating and storing values in a table for faster access.
*   Example: Sine wave lookup table.

### DMA (Direct Memory Access)

*   Transferring data between memory locations without CPU intervention.
*   Used for fast data transfers to VRAM.

## Advanced Graphics Techniques

### Parallax Scrolling

*   Creating a sense of depth by moving background layers at different speeds.
*   Using VSRAM to control vertical scrolling.

### Palette Swapping

*   Changing the color palette to create special effects.

### Double Buffering

*   Drawing to a hidden buffer and then swapping it to the visible screen to eliminate flickering.

### Raster Effects

*   Manipulating the display on a scanline basis to create effects like water ripples or stretching.

### Using Display Lists

* A display list contains commands that the graphics hardware executes in sequence to render a frame.

## Sound Driver Development

### Creating a Custom Sound Driver

*   Interfacing directly with the YM2612 and SN76489.

### Music and Sound Effect Integration

*   Integrating music and sound effects into the game.

### Optimizing Sound Playback

* Reducing CPU usage of the sound driver.

## Memory Management

### Dynamic Memory Allocation

*   Allocating and freeing memory during runtime.
*   Implementing a simple memory allocator.

### Memory Pools

*   Pre-allocating a fixed-size block of memory and dividing it into smaller chunks.

## Debugging Techniques

### Using Breakpoints

*   Pausing the execution of the code at specific points.

### Inspecting Memory

*   Examining the contents of memory locations.

### Using a Disassembler

*   Converting machine code back into assembly code for analysis.

## Glossary

*   **DMA:** Direct Memory Access, a method of transferring data directly between memory locations without involving the CPU.
*   **VBlank:** Vertical Blanking Interval, the time when the electron beam in a CRT monitor returns from the bottom to the top, providing a safe time for updating graphics.
*   **Double Buffering:** A technique of using two frame buffers to eliminate flickering by rendering to one off-screen and then quickly swapping it to the display.
*   **Raster Effects:** Visual effects achieved by manipulating the display on a per-scanline basis.
*   **Palette Swapping:** Changing the color palette to create animation or other visual effects.
*   **Display List:** A sequence of commands sent to the graphics hardware to render a frame.

## Summary

* Deeper look at optimizing Genesis games, advanced graphics techniques, working with sound drivers, managing memory, and debugging effectively.

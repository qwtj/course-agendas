# I. NES Architecture Overview

## Understanding the NES Hardware

### CPU: Ricoh 2A03

*   Based on the MOS 6502.
*   Clock speed: 1.79 MHz (NTSC), 1.66 MHz (PAL).
*   Includes custom audio processing unit (APU).
*   Understanding registers (A, X, Y, PC, SP, P).

### PPU: Ricoh 2C02 (NTSC) / 2C07 (PAL)

*   Handles graphics rendering.
*   Resolution: 256x240 pixels.
*   Color palette: 54 colors (but limited concurrent display).
*   Understanding the role of nametables, palettes, and sprites.

### Memory Map

*   $0000-$07FF: 2KB internal RAM (mirrored).
*   $2000-$2007: PPU registers (mirrored).
*   $4000-$401F: APU and I/O registers.
*   $6000-$7FFF: SRAM (optional, cartridge-based).
*   $8000-$FFFF: PRG-ROM (cartridge-based program code).

## Cartridge Structure

### PRG-ROM

*   Program ROM; contains the game's code.
*   Typically 8KB, 16KB, 32KB, or larger.

### CHR-ROM/CHR-RAM

*   Character ROM/RAM; contains the game's graphics (tiles/sprites).
*   CHR-ROM is read-only; CHR-RAM can be modified during runtime for dynamic graphics.

### Mappers (Memory Bank Controllers)

*   Essential for expanding NES capabilities beyond its original memory limitations.
*   Different mappers allow for larger ROM sizes, different mirroring modes, and other advanced features.
*   Examples: NROM (Mapper 0), MMC1 (Mapper 1), UNROM (Mapper 2).

*Summary: The NES architecture revolves around the 2A03 CPU and 2C02/2C07 PPU, with memory accessed through a specific map. Cartridges contain program code and graphics data, often employing mappers to overcome hardware limitations.*

# II. NES Programming Fundamentals

## 6502 Assembly Language

### Instruction Set

*   Load/Store instructions (LDA, LDX, LDY, STA, STX, STY).
*   Arithmetic instructions (ADC, SBC, INC, DEC).
*   Logical instructions (AND, ORA, EOR, ASL, LSR).
*   Branching instructions (BEQ, BNE, BCS, BCC).
*   Stack operations (PHA, PLA, PHP, PLP).
*   System calls (BRK, RTI, JSR, RTS, JMP).

### Addressing Modes

*   Immediate addressing (LDA #$05).
*   Zero Page addressing (LDA $00).
*   Zero Page, X addressing (LDA $00,X).
*   Absolute addressing (LDA $1234).
*   Absolute, X addressing (LDA $1234,X).
*   Absolute, Y addressing (LDA $1234,Y).
*   Indirect addressing (JMP ($1234)).
*   (Indirect,X) and (Indirect),Y addressing for advanced indexing.

### Assembler Directives

*   `.org` (set origin for code/data).
*   `.byte`, `.word` (define data).
*   `.include` (include other files).
*   Labels and equates for managing memory addresses and constants.

## Basic Programming Techniques

### Initialization

*   Setting up the stack pointer (`LDX #$FF`, `TXS`).
*   Disabling interrupts (`SEI`).
*   Setting PPU registers for screen display and scrolling.
*   Clearing RAM.

### Main Loop

*   `vblankwait`:  Waiting for vertical blanking period to avoid screen tearing.  (polling `$2002` bit 7).
*   Input handling.
*   Game logic updates.
*   Drawing/rendering.

### Input Handling

*   Reading controller input from `$4016` and `$4017`.
*   Debouncing input to prevent rapid toggling.

### Graphics Programming

*   Understanding tiles and sprites.
*   Writing to the nametable to define the background.
*   Setting up sprite attributes (X/Y position, tile index, attributes).
*   Using Direct Memory Access (DMA) to transfer sprite data quickly.

*Summary: NES programming uses 6502 assembly. Key skills involve mastering instructions, addressing modes, and assembler directives. Essential techniques include initialization, the main loop, input handling, and graphics programming.*

# III. Advanced NES Programming

## Memory Management

### Bank Switching

*   Using mappers to switch between different banks of PRG-ROM and CHR-ROM.
*   Writing to mapper registers to select the active bank.
*   Understanding different mapper types and their bank switching mechanisms.

### Zero Page Usage

*   Optimizing code by storing frequently used variables in Zero Page for faster access.
*   Careful allocation of Zero Page to avoid conflicts.

## Advanced Graphics Techniques

### Scrolling

*   Implementing smooth scrolling by manipulating PPU registers.
*   Horizontal and vertical scrolling.
*   Split-screen scrolling.

### Sprite Multiplexing (NMIs)

*   Displaying more than 64 sprites per scanline by quickly updating sprite data during the horizontal blanking period or by splitting the screen and re-writing sprite data during NMI
*   Using the NMI (Non-Maskable Interrupt) to handle multiplexing.

### Palettes

*   Understanding color limitations and palette cycling.
*   Creating visually appealing graphics with a limited color palette.

## Sound Programming

### APU Registers

*   Programming the NES APU to generate sound effects and music.
*   Understanding the different APU channels: pulse, triangle, noise, and DMC.
*   Writing to APU registers to control the frequency, volume, and waveform of each channel.

### Music and Sound Effects

*   Creating music using a tracker program (e.g., FamiTracker).
*   Integrating music and sound effects into your game.

## Interrupts

### NMI (Non-Maskable Interrupt)

*   Using the NMI to handle vertical blanking interrupts for smooth animation and scrolling.
*   Implementing interrupt handlers to perform time-critical tasks.

### IRQ (Interrupt Request)

*   Using IRQs for more advanced timing and event handling (if supported by the mapper).

*Summary: Advanced NES programming involves sophisticated memory management, advanced graphics techniques like scrolling and sprite multiplexing, sound programming with the APU, and interrupt handling. Mastering these allows for creating complex and engaging games.*

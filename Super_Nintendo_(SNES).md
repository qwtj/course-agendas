# I. SNES Architecture

## Understanding the SNES CPU: Ricoh 5A22

### Clock Speed and Performance

*   Clock speed variations: 3.58 MHz, 2.68 MHz, and 1.79 MHz.
*   Pipelined architecture and its impact on instruction execution.
*   Factors affecting actual game performance (e.g., memory access, DMA).

### Registers and Memory Addressing

*   Understanding the 65C816 processor's registers: Accumulator (A), Index Registers (X, Y), Stack Pointer (S), Direct Page Register (D), Program Counter (PC), Processor Status Register (P).
*   Memory map: ROM, RAM, VRAM, I/O registers.
*   Addressing modes: direct, absolute, indexed, indirect, etc.

### Instruction Set

*   Overview of commonly used instructions: `LDA`, `STA`, `JMP`, `JSR`, `RTS`, arithmetic and logical operations.
*   Example: Loading a value into the accumulator (`LDA #$05`).
*   Branching and looping instructions (`BNE`, `BEQ`, `BRA`).

## Understanding the SNES Picture Processing Unit (PPU)

### Video Modes and Resolutions

*   Understanding modes 0-7 and their respective limitations and capabilities.
*   Resolution differences: 256x224, 512x448, etc.
*   Color depth: 256 colors from a palette of 32768.

### Background Layers

*   Working with up to 4 background layers.
*   Scrolling: Horizontal and vertical scrolling effects.
*   Tilemaps and tilesets.
*   Priority: Assigning priority to layers for depth effects.

### Sprites (Objects)

*   Sprite attributes: size, position, color, priority.
*   Sprite limitations: maximum number of sprites on screen.
*   Sprite DMA for updating sprite data.

### PPU Registers

*   Understanding key PPU registers for controlling display settings.
*   Example: Setting background color (`INIDV`).

## Audio: Sony SPC700 Sound Processor

### Sound Channels and Capabilities

*   8 channels of 8-bit PCM audio.
*   ADPCM compression.
*   Effects: echo, reverb, pitch modulation.

### SPC700 Memory Map

*   Understanding the location of sample data and sound program code.

### Sound Driver Implementation

*   Basic principles of sound driver programming.
*   Sending commands to the SPC700.
*   Example: Playing a simple sound effect.

*Summary: This section covers the core hardware components of the SNES, including the CPU, PPU, and sound processor, detailing their functionalities and key features.*

# II. SNES Programming Fundamentals

## Setting up a Development Environment

### Choosing an Assembler

*   Available assemblers: Asar, WLA-DX.
*   Assembler syntax and directives.

### Emulator Selection

*   Common emulators: Snes9x, ZSNES, bsnes/higan.
*   Debugging features in emulators.

### Basic ROM Structure

*   Header information: game title, ROM size, checksum.
*   Interrupt vectors.
*   Program code and data sections.

## Basic Assembly Programming

### Writing Simple Programs

*   "Hello, World!" equivalent for SNES.
*   Clearing the screen.
*   Drawing pixels and lines.
    ```assembly
    ; Example: Setting a pixel
    LDA #$FF  ; Color value (white)
    STA $2100 ; PPU data port (write to VRAM)
    ```

### Input Handling

*   Reading controller input via I/O ports.
*   Detecting button presses.
*   Example: Moving a sprite based on D-pad input.

### Interrupts

*   V-blank interrupt (NMI): used for updating the display.
*   IRQ interrupts: used for timed events and effects.
*   Writing interrupt handlers.

*Summary: This section details how to set up a development environment and introduces the basics of assembly programming on the SNES, including writing simple programs, handling input, and working with interrupts.*

# III. Advanced SNES Programming Techniques

## Working with Backgrounds

### Tilemap Editors

*   Using tilemap editors like Tiled to create backgrounds.
*   Converting tilemaps to SNES format.

### Advanced Scrolling Techniques

*   Parallax scrolling.
*   Mode 7 transformations.

## Sprite Manipulation

### Sprite Animation

*   Creating sprite sheets.
*   Implementing animation routines.
*   Example: Animating a character walking.

### Sprite Collision Detection

*   Simple bounding box collision detection.
*   Pixel-perfect collision detection (advanced).

## Direct Memory Access (DMA)

### Using DMA for Data Transfer

*   Transferring data to VRAM and OAM.
*   Reducing CPU load using DMA.

### HDMA (Horizontal DMA)

*   Using HDMA for advanced graphical effects.
*   Example: Creating a split-screen effect.

## Sound Programming

### Implementing Music and Sound Effects

*   Using sound trackers like OpenMPT.
*   Converting sound samples to SNES format.
*   Playing music and sound effects in-game.

*Summary: This section explores advanced techniques for the SNES, including working with backgrounds, manipulating sprites, using DMA, and implementing sound.*

# IV. SNES Hardware Limitations and Optimization

## Understanding SNES Limitations

### Palette Limitations

*   Managing the 256-color palette effectively.
*   Color cycling and palette swaps.

### Sprite Limits

*   Optimizing sprite usage to avoid flicker.
*   Sprite multiplexing techniques.

## Optimization Techniques

### Code Optimization

*   Using optimized assembly code.
*   Loop unrolling.
*   Precalculation.

### Memory Management

*   Efficient use of RAM and VRAM.
*   Data compression techniques.

## Hardware Registers and Tricks

### Utilizing Specific Hardware Registers

*   Fine-tuning the PPU registers for advanced effects.
*   Using the Direct Page register for faster memory access.

### Exploiting Hardware Bugs and Undocumented Features

*   Example: Using certain register combinations for unique graphical effects (use with caution).

*Summary: This section details the hardware limitations of the SNES and introduces various optimization techniques to overcome these limitations, including code optimization, memory management, and utilizing hardware registers effectively.*

# V. SNES Game Development Workflow

## Game Design Considerations

### Planning Your Game

*   Choosing a genre and scope.
*   Designing gameplay mechanics.
*   Creating level designs.

### Storytelling and Narrative

*   Writing a compelling story.
*   Implementing cutscenes.
*   Using text and dialogue.

## Teamwork and Collaboration

### Working with Other Developers

*   Dividing tasks among team members.
*   Using version control systems.
*   Communicating effectively.

## Testing and Debugging

### Thorough Testing

*   Testing on different emulators and hardware.
*   Finding and fixing bugs.

### Debugging Tools and Techniques

*   Using emulator debuggers.
*   Adding debug output to your code.

*Summary: This section provides an overview of the SNES game development workflow, covering game design considerations, teamwork and collaboration, and testing and debugging.*

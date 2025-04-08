# I. Circuit Analysis Fundamentals

## Understanding Basic Circuit Elements

### Resistors: Ohm's Law

*   Definition of resistance.
*   Ohm's Law: `V = IR` (Voltage = Current * Resistance).
*   Power dissipation in a resistor: `P = I^2R = V^2/R`.
*   Resistor color codes and tolerances.

### Capacitors: Charge Storage

*   Definition of capacitance.
*   Capacitor behavior: `Q = CV` (Charge = Capacitance * Voltage).
*   Current-voltage relationship: `I = C(dV/dt)`.
*   Energy stored in a capacitor: `E = 1/2 CV^2`.
*   Capacitor types and applications.

### Inductors: Magnetic Field

*   Definition of inductance.
*   Inductor behavior: `V = L(dI/dt)`.
*   Energy stored in an inductor: `E = 1/2 LI^2`.
*   Inductor types and applications.

## Circuit Laws and Theorems

### Kirchhoff's Current Law (KCL)

*   Statement of KCL: Sum of currents entering a node equals the sum of currents leaving.
*   Application of KCL to solve circuit problems.

### Kirchhoff's Voltage Law (KVL)

*   Statement of KVL: Sum of voltage drops around a closed loop equals zero.
*   Application of KVL to solve circuit problems.

### Series and Parallel Combinations

*   Resistors in series: `R_eq = R1 + R2 + ... + Rn`.
*   Resistors in parallel: `1/R_eq = 1/R1 + 1/R2 + ... + 1/Rn`.
*   Capacitors in series: `1/C_eq = 1/C1 + 1/C2 + ... + 1/Cn`.
*   Capacitors in parallel: `C_eq = C1 + C2 + ... + Cn`.
*   Inductors in series: `L_eq = L1 + L2 + ... + Ln`.
*   Inductors in parallel: `1/L_eq = 1/L1 + 1/L2 + ... + 1/Ln`.

### Voltage Divider Rule

*   Formula for voltage division in a series circuit: `V_x = V_total * (R_x / R_total)`.

### Current Divider Rule

*   Formula for current division in a parallel circuit: `I_x = I_total * (R_total / R_x)` where `R_total` is the equivalent resistance of the parallel branch excluding `R_x`.

### Source Transformations

*   Converting voltage source with series resistor to current source with parallel resistor, and vice versa.
*   `V = IR` application for source transformations.

### Superposition Theorem

*   Procedure for applying the superposition theorem.
*   Solving linear circuits with multiple independent sources.

### Thevenin's and Norton's Theorems

*   Finding Thevenin equivalent voltage (Vth) and resistance (Rth).
*   Finding Norton equivalent current (In) and resistance (Rn).
*   Applying Thevenin/Norton for simplifying complex circuits.

# II. AC Circuit Analysis

## Sinusoidal Signals

### Understanding Sinusoids

*   Amplitude, frequency, phase, and period.
*   Representation of sinusoids: `v(t) = Vm * cos(ωt + φ)`.
*   Angular frequency: `ω = 2πf`.

### Phasors

*   Converting sinusoidal signals to phasors.
*   Phasor representation of voltage and current.
*   Impedance: `Z = R + jX` (Resistance + j * Reactance).

## AC Circuit Elements

### Resistors in AC Circuits

*   Voltage and current are in phase.
*   Impedance: `Z = R`.

### Capacitors in AC Circuits

*   Current leads voltage by 90 degrees.
*   Impedance: `Z = 1/(jωC) = -j/(ωC)`.

### Inductors in AC Circuits

*   Voltage leads current by 90 degrees.
*   Impedance: `Z = jωL`.

## AC Circuit Analysis Techniques

### Applying KCL and KVL to AC Circuits

*   Using phasors for circuit analysis.

### AC Power Analysis

*   Instantaneous power: `p(t) = v(t) * i(t)`.
*   Average (Real) power: `P = Vrms * Irms * cos(θ)`.
*   Reactive power: `Q = Vrms * Irms * sin(θ)`.
*   Complex power: `S = P + jQ = Vrms * Irms*`.
*   Power factor: `PF = cos(θ)`.
*   Power factor correction.

# III. Semiconductor Devices

## Diodes

### Diode Characteristics

*   Forward bias and reverse bias.
*   Ideal diode model.
*   Practical diode model (voltage drop).
*   Diode equation: `I = Is * (exp(V/(nVt)) - 1)`.

### Diode Circuits

*   Rectifiers (half-wave, full-wave, bridge).
*   Clippers and clampers.
*   Zener diodes and voltage regulators.

## Bipolar Junction Transistors (BJTs)

### BJT Structure and Operation

*   NPN and PNP transistors.
*   Common-emitter, common-collector, and common-base configurations.
*   Active, saturation, and cutoff regions.

### BJT Biasing

*   DC biasing techniques.
*   Q-point stability.

### BJT Amplifiers

*   Small-signal analysis.
*   Voltage gain, current gain, input impedance, and output impedance.

## Field-Effect Transistors (FETs)

### JFET Structure and Operation

*   N-channel and P-channel JFETs.
*   Depletion mode.

### MOSFET Structure and Operation

*   Enhancement and depletion mode MOSFETs.
*   NMOS and PMOS.

### FET Biasing

*   DC biasing techniques.

### FET Amplifiers

*   Common-source, common-drain, and common-gate configurations.
*   Small-signal analysis.

# IV. Operational Amplifiers (Op-Amps)

## Ideal Op-Amp Characteristics

*   Infinite input impedance.
*   Zero output impedance.
*   Infinite open-loop gain.
*   Infinite bandwidth.

## Op-Amp Circuits

### Inverting Amplifier

*   Gain: `Av = -Rf/Rin`.

### Non-Inverting Amplifier

*   Gain: `Av = 1 + Rf/Rin`.

### Voltage Follower

*   Gain: `Av = 1`.

### Summing Amplifier

*   Output voltage as a weighted sum of input voltages.

### Difference Amplifier

*   Amplifying the difference between two input voltages.

### Integrators and Differentiators

*   Using op-amps for integration and differentiation.

# V. Digital Logic

## Number Systems and Codes

### Binary, Decimal, Octal, and Hexadecimal Number Systems

*   Conversion between number systems.

### Binary Arithmetic

*   Addition, subtraction, multiplication, and division.

### Boolean Algebra

*   Boolean operators (AND, OR, NOT, XOR, NAND, NOR).
*   Boolean algebra laws and theorems.
*   Simplification of Boolean expressions.
*   DeMorgan's Theorem.

## Logic Gates

### Basic Logic Gates

*   AND, OR, NOT, XOR, NAND, NOR gates.
*   Truth tables.

### Combinational Logic Circuits

*   Adders, subtractors, multiplexers, demultiplexers, encoders, and decoders.

### Sequential Logic Circuits

*   Flip-flops (SR, D, JK, T).
*   Registers and counters.
*   State machines.

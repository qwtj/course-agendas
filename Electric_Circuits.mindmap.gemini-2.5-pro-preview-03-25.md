# Electric Circuits #ElectricalEngineering #Electronics #Overview
The study of the flow of electric charge and its behavior in various configurations and components.

## Fundamental Concepts #Basics #Definitions #Physics
Core ideas and definitions underpinning circuit theory.

### Electric Charge #Physics #Quantity #Coulomb
The fundamental property of matter responsible for electric phenomena.
Types: Positive and Negative. Unit: Coulomb (C).

### Electric Current #Flow #Ampere #Definition
The rate of flow of electric charge.
Unit: Ampere (A). Types: Direct Current (DC), Alternating Current (AC).

### Voltage (Potential Difference) #Potential #Volt #Energy
The difference in electric potential energy per unit charge between two points.
Unit: Volt (V). Analogy: Electrical 'pressure'.

### Electric Power #Energy #Watt #Rate
The rate at which electrical energy is transferred or dissipated.
Unit: Watt (W). P = VI.

### Electrical Energy #Work #Joule #Consumption
The total work done or energy transferred by electric charge.
Unit: Joule (J) or kilowatt-hour (kWh). E = Pt.

### Circuit Ground and Reference Points #Reference #ZeroVolt #Safety
A common reference point in a circuit from which voltages are measured. Often tied to earth potential for safety.

### Ideal vs. Non-Ideal Components #Modeling #RealWorld #Limitations
Distinction between theoretical models (ideal) and actual physical components (non-ideal) with parasitic properties.

## Circuit Elements #Components #Passive #Active
The building blocks of electric circuits.

### Passive Elements #EnergyStorage #Dissipation #Linear
Elements that cannot generate net energy; they dissipate or store it.

#### Resistors #Resistance #Ohm #Dissipation
Elements that impede the flow of current, dissipating energy as heat.
Symbol: R. Unit: Ohm (Ω). Ohm's Law: V = IR. Power: P = I²R = V²/R.
Types: Fixed, Variable (Potentiometers, Rheostats). Color Code. Series/Parallel combinations.

#### Capacitors #Capacitance #Farad #EnergyStorage
Elements that store energy in an electric field. Composed of conductive plates separated by a dielectric.
Symbol: C. Unit: Farad (F). i = C(dv/dt). Energy: E = ½CV².
Behavior: Blocks DC in steady state, passes AC. Series/Parallel combinations. Dielectric materials.

#### Inductors #Inductance #Henry #EnergyStorage
Elements that store energy in a magnetic field, typically coils of wire.
Symbol: L. Unit: Henry (H). v = L(di/dt). Energy: E = ½LI².
Behavior: Acts as short for DC in steady state, impedes changes in current. Series/Parallel combinations. Magnetic core materials.

### Active Elements #EnergySource #Amplification #Control
Elements capable of delivering net energy to a circuit or providing amplification/control.

#### Independent Sources #VoltageSource #CurrentSource #Ideal
Sources whose output (voltage or current) is independent of the circuit connected to them.
Ideal Voltage Source: Maintains constant voltage. Ideal Current Source: Maintains constant current.

#### Dependent Sources #ControlledSource #Modeling #Amplification
Sources whose output depends on a voltage or current elsewhere in the circuit.
Types: VCVS, VCCS, CCVS, CCCS. Used for modeling transistors, op-amps.

#### Semiconductor Devices (Introduction) #Diodes #Transistors #NonLinear
Basic introduction to non-linear active components often covered in introductory circuits.
Diode: Allows current flow primarily in one direction.
Transistor (BJT/FET): Used for switching and amplification.

## Basic Circuit Laws #Analysis #Fundamentals #Kirchhoff
Fundamental laws governing the behavior of voltage and current in circuits.

### Ohm's Law #Resistance #Linearity #V=IR
Relationship between voltage, current, and resistance for a resistor. V = IR.

### Kirchhoff's Laws #Conservation #NetworkAnalysis #Fundamental

#### Kirchhoff's Current Law (KCL) #Nodes #ConservationOfCharge #Summation
The algebraic sum of currents entering a node (or closed boundary) is zero. Based on conservation of charge.

#### Kirchhoff's Voltage Law (KVL) #Loops #ConservationOfEnergy #Summation
The algebraic sum of voltages around any closed loop in a circuit is zero. Based on conservation of energy.

### Series and Parallel Connections #Combinations #EquivalentCircuits #Simplification
Rules for combining resistors, capacitors, and inductors connected in series or parallel to find equivalent values.

### Voltage Divider Rule #SeriesCircuits #Analysis #Shortcut
Formula to find the voltage across one resistor in a series combination.

### Current Divider Rule #ParallelCircuits #Analysis #Shortcut
Formula to find the current through one resistor in a parallel combination.

## DC Circuit Analysis Techniques #SteadyState #Methods #LinearAlgebra
Systematic methods for analyzing circuits with DC sources in steady state.

### Nodal Analysis #Nodes #KCL #Systematic
A method based on applying KCL at the circuit's nodes to find node voltages. Often involves solving systems of linear equations.
Supernode technique for voltage sources between non-reference nodes.

### Mesh (Loop) Analysis #Loops #KVL #Systematic
A method based on applying KVL around the circuit's meshes (independent loops) to find mesh currents. Often involves solving systems of linear equations.
Supermesh technique for current sources shared between meshes.

### Source Transformations #Equivalence #Simplification #TheveninNorton
Technique to convert between equivalent voltage sources with series resistance and current sources with parallel resistance.

### Superposition Theorem #LinearCircuits #MultipleSources #Decomposition
For linear circuits with multiple independent sources, the total response (voltage or current) is the sum of responses caused by each source acting alone (other sources turned off).

### Thévenin's Theorem #EquivalentCircuit #Simplification #BlackBox
Any linear two-terminal network can be replaced by an equivalent circuit consisting of a single voltage source (Vth) in series with a single resistor (Rth).

### Norton's Theorem #EquivalentCircuit #Simplification #Duality
Any linear two-terminal network can be replaced by an equivalent circuit consisting of a single current source (In) in parallel with a single resistor (Rn). Rn = Rth.

### Maximum Power Transfer Theorem #Matching #Efficiency #Load
Condition for delivering maximum power from a source (modeled by Thévenin/Norton) to a load. Occurs when load resistance equals source resistance (RL = Rth).

## AC Circuit Analysis Fundamentals #AlternatingCurrent #Sinusoids #Phasors
Concepts required for analyzing circuits driven by sinusoidal AC sources.

### Sinusoidal Waveforms #AC #Periodic #Parameters
Characteristics of AC signals: Amplitude, Frequency (Hz), Angular Frequency (rad/s), Period (s), Phase Angle (degrees/radians), RMS Value.

### Phasors #ComplexNumbers #FrequencyDomain #Transformation
A complex number representation of a sinusoidal signal's amplitude and phase, simplifying AC analysis by transforming differential equations into algebraic equations.

### Complex Impedance (Z) #Resistance #Reactance #Ohm
The AC equivalent of resistance, represented as a complex number (Z = R + jX). Includes resistance (R) and reactance (X). Unit: Ohm (Ω).
Resistor: Z = R. Inductor: Z = jωL. Capacitor: Z = 1/(jωC) = -j/(ωC).

### Complex Admittance (Y) #Conductance #Susceptance #Siemens
The reciprocal of impedance (Y = 1/Z), represented as a complex number (Y = G + jB). Includes conductance (G) and susceptance (B). Unit: Siemens (S).

### AC Versions of Circuit Laws #Ohm'sLaw #KCL #KVL
Applying Ohm's Law (V = IZ), KCL, and KVL using phasors and complex impedances in the frequency domain.

## Sinusoidal Steady-State Analysis #ACAnalysis #FrequencyDomain #Methods
Applying analysis techniques (Nodal, Mesh, Superposition, Thévenin/Norton) to AC circuits using phasors and impedance.

### AC Nodal Analysis #Phasors #Impedance #Systematic
Using KCL with phasors and impedances to find complex node voltages.

### AC Mesh Analysis #Phasors #Impedance #Systematic
Using KVL with phasors and impedances to find complex mesh currents.

### AC Superposition, Thévenin, Norton #Equivalence #ACMethods #Linearity
Applying these theorems to AC circuits, using complex impedances and phasors.

## AC Power Analysis #Power #ACCircuits #Efficiency
Calculating power in AC circuits, considering phase differences.

### Instantaneous Power #TimeDomain #Fluctuating #p(t)
The power at any instant in time: p(t) = v(t) * i(t).

### Average Power (Real Power, P) #Watt #Dissipation #UsefulWork
The average power dissipated, typically in resistors. Unit: Watt (W). P = Vrms * Irms * cos(θ), where θ is the phase difference between V and I.

### Reactive Power (Q) #VAR #EnergyStorage #ImaginaryPower
Power associated with energy storage elements (inductors, capacitors), oscillating between source and load. Unit: Volt-Ampere Reactive (VAR). Q = Vrms * Irms * sin(θ).

### Complex Power (S) #VoltAmpere #VectorSum #S=P+jQ
A complex quantity combining average power (P) and reactive power (Q). S = P + jQ. Also S = Vrms * Irms* (conjugate). Magnitude |S| is Apparent Power.

### Apparent Power (|S|) #VoltAmpere #TotalPower #Magnitude
The magnitude of the complex power, |S| = Vrms * Irms. Unit: Volt-Ampere (VA). Represents the total power "apparent" in the circuit.

### Power Factor (PF) #Efficiency #PhaseAngle #cos(θ)
The ratio of real power (P) to apparent power (|S|). PF = P/|S| = cos(θ). Leading (capacitive) vs. Lagging (inductive). Power Factor Correction aims to make PF closer to 1.

## Transient Analysis (First and Second Order Circuits) #TimeDomain #Switches #DifferentialEquations
Analysis of circuit behavior during transitions, typically after a switch opens or closes, before reaching steady state.

### Introduction to Transients #Switching #InitialConditions #ResponseTypes
Understanding natural and forced responses, initial and final conditions.

### First-Order Circuits #RL #RC #TimeConstant
Circuits containing one energy storage element (L or C) and resistors. Characterized by a time constant (τ = L/R or τ = RC).

#### Source-Free RL and RC Circuits #NaturalResponse #Decay #Exponential
Analysis of RL/RC circuits with stored energy but no active sources. Response decays exponentially.

#### Step Response of RL and RC Circuits #ForcedResponse #Charging #Discharging
Analysis of RL/RC circuits when a DC source is suddenly applied or removed. Involves solving first-order differential equations.

### Second-Order Circuits #RLC #DifferentialEquations #Damping
Circuits containing two energy storage elements (e.g., RLC series or parallel). Involves solving second-order differential equations.

#### Source-Free Series and Parallel RLC #NaturalResponse #Oscillation #Damping
Analysis of RLC circuits with initial energy. Response depends on damping.

#### Step Response of Series and Parallel RLC #ForcedResponse #Transient #SteadyState
Analysis of RLC circuits with a DC source applied.

#### Overdamped, Critically Damped, Underdamped Responses #Roots #Behavior #CharacteristicEquation
Classifying the transient response based on the roots of the characteristic equation, determined by R, L, and C values.

## Frequency Response and Resonance #Filters #ACsweep #BodePlots
Analyzing how circuit behavior (gain, phase shift) changes with the frequency of the input signal.

### Transfer Functions #InputOutput #FrequencyDomain #H(s) H(jω)
Mathematical representation (often in Laplace or frequency domain) of the ratio of a circuit's output to its input. H(s) or H(jω).

### Bode Plots #LogarithmicScale #Magnitude #Phase
Graphical representation of a circuit's frequency response, plotting magnitude (in dB) and phase (in degrees) versus frequency (on a log scale).

### Resonance #PeakResponse #RLC #QualityFactor
The condition in RLC circuits where inductive and capacitive reactances cancel, leading to maximum (or minimum) impedance/admittance and current/voltage peaking.

#### Series Resonance #MinimumImpedance #MaximumCurrent #Bandwidth
Characteristics of resonance in a series RLC circuit.

#### Parallel Resonance #MaximumImpedance #MinimumCurrent #Bandwidth
Characteristics of resonance in a parallel RLC circuit (tank circuit).

### Filters #FrequencySelective #Passive #Active
Circuits designed to pass certain frequencies while blocking others.

#### Low-Pass Filters #PassLow #BlockHigh #RC RL
Allow low frequencies, attenuate high frequencies.

#### High-Pass Filters #PassHigh #BlockLow #RC RL
Allow high frequencies, attenuate low frequencies.

#### Band-Pass Filters #PassBand #BlockOthers #RLC
Allow a specific range (band) of frequencies, attenuate others.

#### Band-Stop (Notch) Filters #BlockBand #PassOthers #RLC
Attenuate a specific band of frequencies, allow others.

#### Active Filters #OpAmps #Gain #Tunability
Filters using active components like op-amps, allowing for gain and easier tuning.

## Operational Amplifiers (Op-Amps) #ActiveComponent #Amplifier #IntegratedCircuit
High-gain differential voltage amplifiers, fundamental building blocks in analog electronics.

### Ideal Op-Amp Model #Assumptions #VirtualShort #InfiniteGain
Simplified model: Infinite input impedance, zero output impedance, infinite open-loop gain. Input terminals draw no current, voltage difference between inputs is zero (with negative feedback).

### Basic Op-Amp Configurations #Inverting #NonInverting #Follower
Standard circuit arrangements using op-amps.

#### Inverting Amplifier #NegativeGain #Feedback #Summing
Output is inverted, gain determined by feedback and input resistors. Can be adapted for summing multiple inputs.

#### Non-Inverting Amplifier #PositiveGain #Feedback #HighInputZ
Output is in phase, gain determined by feedback resistors. High input impedance.

#### Voltage Follower (Buffer) #UnityGain #ImpedanceMatching #Isolation
Gain of +1. Provides high input impedance and low output impedance, used for buffering signals.

### Other Op-Amp Circuits #Differential #Integrator #Differentiator
More complex applications.
Differential Amplifier: Amplifies the difference between two inputs.
Integrator/Differentiator: Perform mathematical integration/differentiation on input signals (limited practical use for differentiators due to noise).

### Real Op-Amp Limitations #FiniteGain #Bandwidth #SlewRate #Offsets
Deviations from the ideal model: Finite gain-bandwidth product, slew rate limitations, input offset voltage/current, finite impedances.

## Semiconductor Devices in Circuits #NonLinear #Diodes #Transistors #Basics
Introduction to the circuit behavior of basic semiconductor devices.

### Diodes #Rectifier #OneWay #PNJunction
Basic operation, IV characteristics, ideal vs. practical models. Applications: Rectification, clipping, clamping. Zener diodes for voltage regulation.

### Bipolar Junction Transistors (BJTs) #Amplification #Switching #CurrentControlled
Basic structure (NPN, PNP), operating regions (cutoff, active, saturation), basic amplifier configurations (common-emitter).

### Field-Effect Transistors (FETs) #Amplification #Switching #VoltageControlled
Basic structure (MOSFET, JFET), operating modes, use as switches and amplifiers. CMOS logic basics.

## Magnetically Coupled Circuits and Transformers #Induction #MutualInductance #Isolation
Circuits involving magnetic fields linking different coils.

### Mutual Inductance (M) #Coupling #MagneticFlux #Henry
Phenomenon where a changing current in one coil induces a voltage in another nearby coil. Unit: Henry (H). Dot convention for polarity.

### Energy in Coupled Circuits #MagneticStorage #CouplingCoefficient
Calculating stored energy considering mutual inductance. Coupling coefficient (k).

### Transformers #VoltageStepUpDown #Isolation #AC
Devices using mutual inductance to change AC voltage/current levels or provide electrical isolation.

#### Ideal Transformer #TurnsRatio #PowerConservation #NoLosses
Model assumptions: Perfect coupling (k=1), infinite permeance, no losses. Voltage/current relationship based on turns ratio (N1/N2).

#### Real Transformer Models #Losses #LeakageFlux #FrequencyResponse
Including winding resistance, core losses (hysteresis, eddy currents), leakage inductance, and winding capacitance.

## Two-Port Networks #InputOutput #Modeling #Parameters
Characterizing linear circuits or components based on their terminal behavior (input/output ports).

### Impedance Parameters (Z-parameters) #OpenCircuit #V=ZI
Relating port voltages to port currents (assuming open-circuit conditions for measurements).

### Admittance Parameters (Y-parameters) #ShortCircuit #I=YV
Relating port currents to port voltages (assuming short-circuit conditions for measurements).

### Hybrid Parameters (h-parameters) #Mixed #TransistorModeling #V1I2=f(I1V2)
Mixed parameters, often used for transistor modeling.

### Transmission Parameters (ABCD-parameters) #Cascading #Input=f(Output)
Relating input variables (V1, I1) to output variables (V2, I2), useful for cascaded networks.

### Parameter Conversions and Network Interconnections #Relationships #Series #Parallel #Cascade
Converting between different parameter sets and analyzing interconnected two-port networks.

## Circuit Simulation and Tools #Software #Analysis #Verification
Using software tools to design, analyze, and simulate electric circuits.

### SPICE (Simulation Program with Integrated Circuit Emphasis) #IndustryStandard #AnalysisTypes #Netlist
Widely used simulation engine. Types of analysis: DC operating point, AC sweep, transient analysis, parameter sweeps. Netlist syntax.

### Schematic Capture Software #GUI #DesignEntry #Visualization
Graphical tools for drawing circuit diagrams (schematics). Examples: LTspice, Multisim, OrCAD PSpice Designer, KiCad Eeschema.

### Waveform Viewers #Visualization #Analysis #PostProcessing
Tools for plotting and analyzing simulation results (voltages, currents over time or frequency).

### Numerical Methods in Simulation #Algorithms #MatrixSolving #Convergence
Brief overview of underlying numerical techniques used by simulators (e.g., modified nodal analysis, numerical integration).

## Electrical Safety and Measurement #LabSkills #Hazards #Instrumentation
Practical aspects of working with electric circuits safely and using measurement tools.

### Electrical Hazards #Shock #Burns #Fire #Prevention
Understanding dangers: Electric shock thresholds, arc flash, overheating. Safety measures: Grounding, insulation, fuses, circuit breakers, GFCIs, proper procedures (LOTO).

### Basic Measurement Tools #Multimeter #Oscilloscope #FunctionGenerator

#### Digital Multimeter (DMM) #Voltage #Current #Resistance #Continuity
Measuring basic electrical quantities. Proper usage and limitations (e.g., burden voltage, input impedance).

#### Oscilloscope #WaveformVisualization #TimeDomain #Measurements
Visualizing voltage signals versus time. Measuring amplitude, period, frequency, phase difference. Probe usage and compensation.

#### Function Generator #SignalSource #Waveforms #Testing
Generating standard waveforms (sine, square, triangle) for testing circuits.

### Measurement Techniques #Probing #LoadingEffects #Accuracy
Proper connection of instruments, understanding how instruments can affect the circuit being measured (loading), ensuring accurate readings.

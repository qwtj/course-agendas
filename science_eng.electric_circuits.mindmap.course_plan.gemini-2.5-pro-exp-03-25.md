# Electrical Circuits #Fundamentals #Electronics #Engineering
An overview of the principles, components, analysis, and applications of electrical circuits.

## Fundamental Concepts #Basics #Theory #Physics
Core ideas underpinning circuit theory.

### Electric Charge #Physics #Property #Coulomb
The fundamental property of matter responsible for electric phenomena.
* Positive and Negative Charge
* Conservation of Charge
* Quantization of Charge (electron charge `e`)

### Electric Current #Flow #Amperes #Movement
The rate of flow of electric charge.
* Definition (I = dQ/dt)
* Conventional Current vs. Electron Flow
* Units: Ampere (A)
* Direct Current (DC) vs. Alternating Current (AC)

### Voltage (Potential Difference) #Potential #Volts #Energy
The electric potential energy difference per unit charge between two points.
* Definition (V = dW/dQ)
* Electromotive Force (EMF)
* Units: Volt (V)
* Ground Reference (0V)

### Power and Energy #Watts #Joules #Work
The rate at which energy is transferred or work is done in a circuit.
* Power Definition (P = dW/dt = V * I)
* Energy Definition (W = ∫P dt)
* Units: Watt (W) for Power, Joule (J) for Energy
* Passive Sign Convention (Power absorbed vs. supplied)

### Ohm's Law #Law #Relationship #Resistance
Relates voltage, current, and resistance for resistive elements.
* V = I * R
* Linearity and limitations

### Kirchhoff's Laws #Laws #Conservation #Analysis
Fundamental laws governing current and voltage in circuits.
* Kirchhoff's Current Law (KCL) #Nodes #ConservationOfCharge
* Algebraic sum of currents entering a node is zero.
* Kirchhoff's Voltage Law (KVL) #Loops #ConservationOfEnergy
* Algebraic sum of voltages around a closed loop is zero.

### Circuit Schematics and Symbols #Diagrams #Representation #Standards
Standard symbols used to represent circuit components and connections.

## Circuit Elements and Components #Parts #Devices #BuildingBlocks
The basic building blocks of electrical circuits.

### Passive Components #EnergyStorage #EnergyDissipation #Passive
Components that do not provide gain or amplification.
#### Resistors #Resistance #Ohms #Heat
Oppose the flow of current.
* Fixed Resistors (Carbon composition, film, wirewound)
* Variable Resistors (Potentiometers, rheostats)
* Color Code
* Power Rating
* Series and Parallel Combinations
#### Capacitors #Capacitance #Farads #ElectricField
Store energy in an electric field.
* Structure (Dielectric, Plates)
* Capacitance Formula (C = Q/V)
* Types (Ceramic, electrolytic, film, variable)
* Voltage Rating
* Series and Parallel Combinations
* Current-Voltage Relationship (I = C dV/dt)
#### Inductors #Inductance #Henrys #MagneticField
Store energy in a magnetic field.
* Structure (Coil)
* Inductance Formula (V = L dI/dt)
* Types (Air core, iron core, toroidal)
* Series and Parallel Combinations
* Mutual Inductance

### Active Components #Amplification #Control #Active
Components that can control or amplify electrical signals.
#### Voltage Sources #EMF #PowerSource #IdealVsPractical
Provide a specific voltage.
* Ideal Voltage Source
* Practical Voltage Source (Internal resistance)
* Dependent Voltage Sources (VCVS, CCVS)
#### Current Sources #CurrentDrive #PowerSource #IdealVsPractical
Provide a specific current.
* Ideal Current Source
* Practical Current Source (Internal resistance)
* Dependent Current Sources (VCCS, CCCS)
#### Diodes #Semiconductor #Rectification #OneWay
Allow current flow primarily in one direction.
#### Transistors #Semiconductor #Amplifier #Switch
Used for amplification or switching.
* Bipolar Junction Transistors (BJT)
* Field-Effect Transistors (FET, MOSFET)
#### Operational Amplifiers (Op-Amps) #Amplifier #IntegratedCircuit #HighGain
High-gain voltage amplifiers used in various analog circuits.

## DC Circuit Analysis #DirectCurrent #SteadyState #Analysis
Analyzing circuits with constant voltage/current sources.

### Series Circuits #SinglePath #VoltageDivision
Components connected end-to-end.
* Equivalent Resistance
* Current Calculation
* Voltage Division Rule

### Parallel Circuits #MultiplePaths #CurrentDivision
Components connected across the same two points.
* Equivalent Resistance/Conductance
* Voltage Calculation
* Current Division Rule

### Series-Parallel Combinations #NetworkReduction #Simplification
Circuits with both series and parallel connections.
* Systematic Reduction Techniques

### Nodal Analysis #Nodes #KCL #SystemOfEquations
Solving circuits using node voltages as variables (based on KCL).
* Identifying Nodes
* Selecting Reference Node (Ground)
* Writing KCL Equations
* Solving Linear Equations

### Mesh (Loop) Analysis #Loops #KVL #SystemOfEquations
Solving circuits using loop currents as variables (based on KVL).
* Identifying Meshes/Loops
* Assigning Loop Currents
* Writing KVL Equations
* Solving Linear Equations

### Source Transformations #Equivalence #Simplification #TheveninNorton
Converting between equivalent voltage and current sources.

## AC Circuit Analysis #AlternatingCurrent #Sinusoidal #Phasors
Analyzing circuits with time-varying sinusoidal sources.

### Sinusoidal Waveforms #AC #Periodic #Frequency
Characteristics of AC signals.
* Amplitude, Peak Value, RMS Value
* Frequency (Hz), Angular Frequency (rad/s)
* Period (s)
* Phase Angle (degrees or radians)

### Phasors and Complex Numbers #Representation #Vector #MathTool
Using complex numbers to represent sinusoidal quantities.
* Rectangular Form (a + jb)
* Polar Form (M∠θ)
* Euler's Identity (e^(jθ) = cosθ + jsinθ)
* Phasor Representation of V(t) and I(t)

### Impedance and Admittance #ACResistance #Complex #FrequencyDependent
AC equivalent of resistance (Z) and conductance (Y).
* Resistor Impedance (Z_R = R)
* Inductor Impedance (Z_L = jωL)
* Capacitor Impedance (Z_C = 1/(jωC) = -j/(ωC))
* Impedance (Z = R + jX) - Resistance (R) and Reactance (X)
* Admittance (Y = 1/Z = G + jB) - Conductance (G) and Susceptance (B)
* Series and Parallel Impedance Combinations

### AC Circuit Analysis Techniques #PhasorDomain #SteadyStateAC
Applying DC analysis techniques using phasors and impedance.
* Ohm's Law in Phasor Domain (V = I * Z)
* KCL and KVL in Phasor Domain
* Nodal Analysis with Impedances
* Mesh Analysis with Impedances

## Circuit Theorems and Techniques #Simplification #AnalysisTools #Theorems
Methods to simplify circuit analysis.

### Linearity and Superposition #LinearSystems #Decomposition
Analyzing circuits with multiple independent sources by considering one source at a time.
* Principle of Linearity
* Superposition Theorem Application

### Thevenin's Theorem #EquivalentCircuit #VoltageSource #Simplification
Replacing a linear circuit with an equivalent voltage source (V_Th) and series impedance (Z_Th).
* Finding V_Th (Open-circuit voltage)
* Finding Z_Th (Equivalent impedance looking into terminals with sources off)

### Norton's Theorem #EquivalentCircuit #CurrentSource #Simplification
Replacing a linear circuit with an equivalent current source (I_N) and parallel impedance (Z_N).
* Finding I_N (Short-circuit current)
* Finding Z_N (Equivalent impedance, Z_N = Z_Th)
* Relationship between Thevenin and Norton equivalents

### Maximum Power Transfer Theorem #LoadMatching #Efficiency #Optimization
Determining the load impedance for maximum power delivery.
* Condition for Max Power (Z_Load = Z_Th*) (Complex conjugate for AC)
* Maximum Power Calculation

### Wye-Delta (Y-Δ) Transformations #NetworkConversion #Equivalence
Converting between Wye (T) and Delta (Π) connected networks.

## Transient Analysis #TimeVarying #Switching #Response
Analyzing circuit behavior during changes (e.g., switching).

### First-Order Circuits (RC and RL) #DifferentialEquations #TimeConstant #NaturalResponse #ForcedResponse
Circuits containing one energy storage element (C or L).
* Natural Response (Source-free response)
* Forced Response (Response due to sources)
* Complete Response (Natural + Forced)
* Time Constant (τ = RC or τ = L/R)
* Step Response Analysis

### Second-Order Circuits (RLC) #DifferentialEquations #Damping #Oscillation #NaturalResponse #ForcedResponse
Circuits containing two energy storage elements (L and C).
* Series RLC Circuits
* Parallel RLC Circuits
* Characteristic Equation and Roots
* Overdamped Response
* Critically Damped Response
* Underdamped Response (Oscillatory)
* Natural Frequency (ω₀) and Damping Ratio (ζ)
* Step Response Analysis

## Frequency Response and Filters #FrequencyDomain #Filtering #BodePlots
Analyzing circuit behavior as a function of signal frequency.

### Transfer Function #InputOutput #Ratio #FrequencyDomain
Ratio of output to input phasor (H(jω) = V_out / V_in or I_out / I_in).
* Magnitude Response (|H(jω)|)
* Phase Response (∠H(jω))

### Bode Plots #LogarithmicScale #MagnitudePlot #PhasePlot
Graphical representation of the frequency response.
* Decibels (dB) for Magnitude
* Logarithmic Frequency Scale
* Asymptotic Approximations (Straight-line approximations)
* Corner Frequencies (Break Frequencies)

### Resonance #PeakResponse #Tuning #RLC
Phenomenon in RLC circuits where impedance/admittance is purely real.
* Series Resonance (Minimum impedance, maximum current)
* Parallel Resonance (Maximum impedance, minimum current)
* Resonant Frequency (ω₀ = 1/√(LC))
* Quality Factor (Q)
* Bandwidth (BW)

### Passive Filters #FrequencySelection #RCFilters #RLCFilters
Circuits designed to pass or block specific frequency ranges.
* Low-Pass Filters (LPF)
* High-Pass Filters (HPF)
* Band-Pass Filters (BPF)
* Band-Stop Filters (Notch Filters)
* Cutoff Frequency

### Active Filters #OpAmps #Gain #ImprovedPerformance
Filters using active components (like op-amps) for gain and better characteristics.

## Magnetically Coupled Circuits and Transformers #Induction #Coupling #EnergyTransfer
Circuits involving mutual inductance.

### Mutual Inductance #MagneticFlux #CouplingCoefficient
Inductance effect between two or more coils.
* Dot Convention for Polarity
* Coupling Coefficient (k)

### Energy in Coupled Coils #MagneticEnergy #Storage
Energy stored in the magnetic fields of coupled inductors.

### Transformers #VoltageTransformation #Isolation #ImpedanceMatching
Devices using mutual inductance to change AC voltage/current levels.
* Ideal Transformer (Voltage/Current Ratios, Power Conservation)
* Turns Ratio (n = N₂/N₁)
* Impedance Reflection
* Practical Transformer Models (Losses, Leakage Flux)
* Autotransformers
* Three-Phase Transformers

## Two-Port Networks #BlackBox #InputOutput #Parameters
Characterizing linear circuits based on terminal behavior.

### Impedance Parameters (Z-parameters) #OpenCircuit
V₁ = Z₁₁I₁ + Z₁₂I₂
V₂ = Z₂₁I₁ + Z₂₂I₂

### Admittance Parameters (Y-parameters) #ShortCircuit
I₁ = Y₁₁V₁ + Y₁₂V₂
I₂ = Y₂₁V₁ + Y₂₂V₂

### Hybrid Parameters (h-parameters) #Mixed #TransistorModeling
V₁ = h₁₁I₁ + h₁₂V₂
I₂ = h₂₁I₁ + h₂₂V₂

### Transmission Parameters (ABCD-parameters) #Cascading #TransmissionLines
V₁ = AV₂ - BI₂
I₁ = CV₂ - DI₂

### Parameter Conversions #Relationships #Equivalence
Converting between different sets of two-port parameters.

### Interconnection of Two-Port Networks #Series #Parallel #Cascade
Analyzing combinations of two-port networks.

## Power Analysis in Circuits #PowerCalculation #Efficiency #ACPower
Calculating power in AC and DC circuits.

### Instantaneous Power #TimeVaryingPower #p(t)
Power at any instant in time (p(t) = v(t) * i(t)).

### Average Power (Real Power) #Watts #UsefulWork #P
Average rate of energy transfer over one cycle (DC or AC).
* P = V_rms * I_rms * cos(θ) where θ is the angle between V and I.

### Reactive Power #VAR #EnergyStorage #Q
Power oscillating between source and reactive components (L, C).
* Q = V_rms * I_rms * sin(θ)
* Measured in Volt-Amps Reactive (VAR)

### Complex Power #VoltAmps #VectorSum #S
Vector sum of average and reactive power (S = P + jQ).
* S = V_rms * I_rms* (complex conjugate of current phasor)
* Magnitude: Apparent Power (|S| = V_rms * I_rms), measured in Volt-Amps (VA)

### Power Factor #EfficiencyIndicator #Cosine #pf
Ratio of average power to apparent power (pf = P/|S| = cos(θ)).
* Leading Power Factor (Capacitive Load)
* Lagging Power Factor (Inductive Load)
* Power Factor Correction (Using capacitors to improve pf)

### Three-Phase Circuits Power #BalancedLoad #WyeDeltaPower
Power calculations in three-phase systems.

## Introduction to Digital Logic Circuits #Digital #Binary #LogicGates
Brief overview of circuits operating on discrete voltage levels.

### Binary System #Bits #Base2 #LogicLevels
Representing information using 0s and 1s.

### Logic Gates #AND #OR #NOT #BooleanAlgebra
Basic building blocks of digital circuits.
* AND, OR, NOT Gates
* NAND, NOR, XOR, XNOR Gates
* Truth Tables

### Combinational Logic Circuits #NoMemory #LogicFunctions
Output depends only on current inputs (e.g., adders, decoders).

### Sequential Logic Circuits #Memory #State #FlipFlops
Output depends on current inputs and past state (e.g., flip-flops, counters, registers).

## Circuit Simulation and Design Tools #Software #Analysis #Verification
Using software for circuit design and analysis.

### SPICE (Simulation Program with Integrated Circuit Emphasis) #IndustryStandard #Simulator
A widely used circuit simulation engine.
* Netlists
* DC Analysis (.op, .dc)
* AC Analysis (.ac)
* Transient Analysis (.tran)
* Common SPICE Variants (LTspice, PSpice, NGspice)

### Schematic Capture Software #GraphicalDesign #EDA
Tools for drawing circuit diagrams (e.g., KiCad, Eagle, Altium).

### PCB Layout Software #PrintedCircuitBoard #Routing #Fabrication
Tools for designing the physical layout of circuits on PCBs.

## Applications #RealWorld #Uses #Technology
Where electrical circuits are used.

### Power Systems #Generation #Transmission #Distribution
Large-scale electrical grids.

### Electronics #ConsumerDevices #Computers #Communication
Gadgets, computing, communication systems.

### Control Systems #Automation #Feedback #Robotics
Using circuits to control processes and machines.

### Signal Processing #Filtering #Amplification #Modulation
Manipulating electrical signals for various purposes.

### Instrumentation and Measurement #Sensors #DataAcquisition #Testing
Using circuits to measure physical quantities.

### Biomedical Engineering #MedicalDevices #Implants #Imaging
Circuits in healthcare technology.

## Electrical Safety #Hazards #Protection #Precautions
Practices to prevent electrical shock and damage.

### Electric Shock Hazards #CurrentEffects #VoltageLevels #BodyResistance
Dangers of electricity to the human body.

### Grounding and Bonding #SafetyPath #FaultProtection
Providing a safe path for fault currents.

### Fuses and Circuit Breakers #OvercurrentProtection #SafetyDevices
Devices that interrupt excessive current flow.

### Personal Protective Equipment (PPE) #Insulation #SafetyGear
Equipment used when working with electricity.

### Lockout/Tagout Procedures #MaintenanceSafety #Deenergizing
Safety procedures for equipment maintenance.

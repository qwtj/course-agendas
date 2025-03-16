# I. Foundations of Thermodynamics

## Understanding Basic Concepts

### Defining the System, Surroundings, and Boundary
*   Open, closed, and isolated systems
*   Adiabatic, diathermal, and rigid boundaries
*   Examples: Internal combustion engine (open), pressure cooker (closed), thermos flask (isolated)

### Defining Thermodynamic Properties
*   Intensive and Extensive properties
*   Pressure (P), Volume (V), Temperature (T), Density (ρ)
*   State functions vs. Path functions: Internal energy (U), Enthalpy (H) vs. Heat (Q), Work (W)

### Thermodynamic Equilibrium
*   Thermal, mechanical, and chemical equilibrium
*   Zeroth Law of Thermodynamics: Concept of temperature

## Learning the Ideal Gas Law

### Understanding Ideal Gas Assumptions
*   Negligible intermolecular forces
*   Negligible volume occupied by gas molecules

### Applying the Ideal Gas Equation
*   `PV = nRT`
*   `P`: Pressure, `V`: Volume, `n`: number of moles, `R`: Ideal gas constant, `T`: Temperature
*   Calculating `R` for different units (e.g., J/mol·K, L·atm/mol·K)

### Solving Ideal Gas Problems
*   Isothermal processes: `P1V1 = P2V2`
*   Isobaric processes: `V1/T1 = V2/T2`
*   Isochoric processes: `P1/T1 = P2/T2`
*   Adiabatic processes: `PV^γ = constant`, where `γ = Cp/Cv`

# II. The First Law of Thermodynamics

## Understanding Energy Conservation

### Defining Internal Energy (U)
*   Molecular kinetic and potential energy
*   Internal energy as a state function

### Defining Work (W)
*   Expansion/compression work: `W = -∫PdV`
*   Shaft work, electrical work

### Defining Heat (Q)
*   Heat transfer mechanisms: Conduction, convection, radiation
*   Specific heat capacity: `Q = mcΔT`

## Applying the First Law Equation

### The First Law Statement
*   `ΔU = Q - W`
*   Energy balance for closed systems

### Analyzing Processes Using the First Law
*   Isochoric process: `W = 0`, `ΔU = Q`
*   Isobaric process: `ΔH = Q`, where `H = U + PV` (Enthalpy)
*   Isothermal process (ideal gas): `ΔU = 0`, `Q = W`
*   Adiabatic process: `Q = 0`, `ΔU = -W`

### Solving Problems Involving the First Law
*   Calculating work, heat, and internal energy changes for different processes
*   Applying the first law to cyclic processes: `∮ dU = 0`, `∮ dQ = ∮ dW`

# III. The Second Law of Thermodynamics

## Understanding Entropy

### Defining Entropy (S)
*   A measure of disorder or randomness
*   Entropy as a state function

### Entropy Change
*   `ΔS = ∫dQrev/T`
*   Reversible vs. Irreversible processes

### The Second Law Statement
*   The entropy of an isolated system always increases or remains constant. `ΔS_universe >= 0`

## Understanding Reversible and Irreversible Processes

### Reversible Processes
*   Idealized processes that occur infinitely slowly
*   No entropy generation

### Irreversible Processes
*   Real-world processes that occur spontaneously
*   Entropy generation due to friction, heat transfer across a finite temperature difference, etc.

### Examples of Irreversible Processes
*   Free expansion of a gas
*   Mixing of two different gases
*   Heat transfer through a finite temperature difference

## Applying the Second Law

### Calculating Entropy Changes
*   For ideal gases: Using specific heat relations
*   For phase changes: `ΔS = Q/T = (m*Lf)/T` or `(m*Lv)/T`  (Latent Heat of Fusion/Vaporization)

### Using the Clausius Inequality
*   `∮dQ/T <= 0`
*   Equality holds for reversible processes, inequality for irreversible processes.

### Understanding Entropy Generation
*   `Sgen = ΔS_system + ΔS_surroundings`
*   `Sgen` is always greater than or equal to zero.

# IV. Thermodynamic Cycles

## Understanding Basic Cycle Concepts

### Defining a Thermodynamic Cycle
*   A series of processes that return a system to its initial state.

### Cycle Efficiency and Coefficient of Performance (COP)
*   Efficiency: `η = Wnet/Qin` (for heat engines)
*   COP: `COPrefrigerator = Q_cold / Wnet`,  `COPheatpump = Q_hot / Wnet`

### Types of Thermodynamic Cycles
*   Power cycles (Heat Engines): Convert heat into work
*   Refrigeration cycles: Transfer heat from a cold reservoir to a hot reservoir
*   Heat pump cycles: Transfer heat from a cold reservoir to a hot reservoir (for heating purposes)

## Analyzing Specific Cycles

### Carnot Cycle
*   Reversible cycle consisting of two isothermal and two adiabatic processes.
*   Carnot efficiency: `η_carnot = 1 - (Tcold/Thot)`

### Rankine Cycle
*   Ideal cycle for steam power plants
*   Components: Pump, Boiler, Turbine, Condenser
*   Analyzing T-s diagram of Rankine cycle

### Otto Cycle
*   Ideal cycle for spark-ignition (gasoline) engines
*   Components: Intake, Compression, Combustion, Expansion, Exhaust
*   Analyzing P-V diagram of Otto cycle
*   Otto cycle efficiency: `η_otto = 1 - (1/rc^(k-1))`, where `rc` is the compression ratio and `k` is the specific heat ratio.

### Diesel Cycle
*   Ideal cycle for compression-ignition (diesel) engines
*   Components: Intake, Compression, Combustion, Expansion, Exhaust
*   Analyzing P-V diagram of Diesel cycle

### Refrigeration Cycles (Vapor-Compression)
*   Components: Compressor, Condenser, Expansion valve, Evaporator
*   Analyzing P-h diagram of Vapor-Compression cycle

# V. Advanced Thermodynamics

## Understanding Thermodynamic Relations

### Maxwell Relations
*   Deriving Maxwell relations from fundamental property relations
*   Using Maxwell relations to relate thermodynamic properties

### Clapeyron Equation
*   `dP/dT = ΔH/(TΔV)`
*   Applying the Clapeyron equation to phase transitions (e.g., boiling, melting)

### Joule-Thomson Coefficient
*   `μJT = (∂T/∂P)H`
*   Understanding Joule-Thomson expansion and inversion temperature

## Introduction to Statistical Thermodynamics

### Boltzmann Distribution
*   Understanding the probability of particles occupying different energy levels

### Partition Function
*   Calculating thermodynamic properties from the partition function

### Connection between Statistical and Classical Thermodynamics
*   Relating entropy to the number of microstates

## Non-Ideal Gases

### Compressibility Factor (Z)
*   `Z = PV/(nRT)`
*   Understanding deviations from ideal gas behavior

### Equations of State for Real Gases
*   Van der Waals equation: `(P + a(n/V)^2)(V - nb) = nRT`
*   Redlich-Kwong equation
*   Virial equation of state

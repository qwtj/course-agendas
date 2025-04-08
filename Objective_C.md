# I. Foundational Concepts of Thermodynamics

## Understanding Thermodynamic Systems and Properties

### Defining System, Surroundings, and Boundary
*   Open, closed, and isolated systems
*   Examples of each type of system in different scenarios

### Intensive and Extensive Properties
*   Distinguishing between intensive (e.g., temperature, pressure) and extensive (e.g., mass, volume) properties.
*   Examples: Temperature vs. Heat Capacity.

### Thermodynamic Equilibrium
*   Thermal, mechanical, and chemical equilibrium.
*   Importance of equilibrium for thermodynamic analysis.

## Temperature, Pressure, and Volume

### Temperature Scales
*   Celsius, Fahrenheit, Kelvin, and Rankine scales.
*   Conversion between different temperature scales: `K = °C + 273.15`.

### Pressure Measurement
*   Absolute, gauge, and vacuum pressure.
*   Units of pressure: Pascal (Pa), bar, atmosphere (atm), psi.

### Equation of State
*   Ideal gas law: `PV = nRT` (where P is pressure, V is volume, n is the number of moles, R is the ideal gas constant, and T is temperature).
*   Real gas equations of state (Van der Waals, Redlich-Kwong).

# II. The First Law of Thermodynamics

## Work and Heat

### Defining Work
*   Work as a path function.
*   Types of work: expansion/compression work (`W = ∫PdV`), electrical work, shaft work.

### Defining Heat
*   Heat as a form of energy transfer.
*   Specific heat capacity: `Q = mcΔT` (where Q is heat, m is mass, c is specific heat, and ΔT is the change in temperature).
*   Latent heat: Phase change energy transfer.

## Internal Energy, Enthalpy, and Specific Heats

### Internal Energy (U)
*   Internal energy as a state function.
*   Relationship between internal energy and temperature for ideal gases: `ΔU = mcᵥΔT`.

### Enthalpy (H)
*   Definition of enthalpy: `H = U + PV`.
*   Relationship between enthalpy and temperature for ideal gases: `ΔH = mcₚΔT`.

### Specific Heats cᵥ and cₚ
*   Specific heat at constant volume (cᵥ) and constant pressure (cₚ).
*   Relationship between cᵥ and cₚ for ideal gases: `cₚ = cᵥ + R`.

## Applications of the First Law

### Closed System Energy Balance
*   `ΔU = Q - W`.
*   Applying the first law to constant volume (isochoric), constant pressure (isobaric), isothermal, and adiabatic processes.

### Open System Energy Balance
*   Steady-state, steady-flow (SSSF) processes.
*   Energy balance for control volumes: `ṁ(h + KE + PE) = Q - W` (where ṁ is mass flow rate, h is enthalpy, KE is kinetic energy, and PE is potential energy).
*   Applications: nozzles, diffusers, turbines, compressors, heat exchangers.

# III. The Second Law of Thermodynamics

## Entropy

### Defining Entropy (S)
*   Entropy as a measure of disorder.
*   Entropy as a state function.

### Entropy Change
*   `ΔS = ∫dQ/T` (for reversible processes).
*   Entropy generation due to irreversibilities: `Sgen ≥ 0`.

### The Clausius Inequality
*   `∮dQ/T ≤ 0`.
*   Relating Clausius Inequality to the Second Law.

## Reversible and Irreversible Processes

### Reversible Processes
*   Quasi-equilibrium processes.
*   Examples: frictionless piston-cylinder expansion, heat transfer with infinitesimal temperature difference.

### Irreversible Processes
*   Processes with irreversibilities (friction, mixing, unrestrained expansion).
*   Impact of irreversibilities on entropy generation.

## Applications of the Second Law

### Heat Engines
*   Definition and operation of heat engines.
*   Thermal efficiency: `η = Wnet / QH`.
*   Carnot cycle: the most efficient cycle operating between two temperature reservoirs.

### Refrigerators and Heat Pumps
*   Definition and operation of refrigerators and heat pumps.
*   Coefficient of performance (COP): `COP_refrigerator = QC / Wnet`, `COP_heat_pump = QH / Wnet`.
*   Carnot refrigerator and heat pump.

### Entropy Balance
*   Entropy balance for closed systems: `ΔS = ∫dQ/T + Sgen`.
*   Entropy balance for open systems: `ṁ(s_out - s_in) = ∫dQ/T + Sgen`.

# IV. Thermodynamic Cycles

## Power Cycles

### Carnot Cycle
*   Reversible cycle consisting of isothermal and adiabatic processes.
*   Carnot efficiency: `η_carnot = 1 - (TC/TH)`.

### Rankine Cycle
*   Ideal cycle for steam power plants.
*   Components: pump, boiler, turbine, condenser.
*   Modifications to improve efficiency: reheat, regeneration.

### Otto Cycle
*   Ideal cycle for spark-ignition (gasoline) engines.
*   Processes: isentropic compression, constant volume heat addition, isentropic expansion, constant volume heat rejection.

### Diesel Cycle
*   Ideal cycle for compression-ignition (diesel) engines.
*   Processes: isentropic compression, constant pressure heat addition, isentropic expansion, constant volume heat rejection.

### Brayton Cycle
*   Ideal cycle for gas turbines.
*   Components: compressor, combustion chamber, turbine.
*   Modifications: intercooling, reheating, regeneration.

## Refrigeration Cycles

### Vapor-Compression Refrigeration Cycle
*   Most common refrigeration cycle.
*   Components: evaporator, compressor, condenser, expansion valve.

### Absorption Refrigeration Cycle
*   Uses heat as the energy input instead of work.
*   Components: generator, condenser, evaporator, absorber, pump, expansion valve.

# V. Advanced Topics

## Thermodynamics of Mixtures

### Partial Pressures and Mole Fractions
*   Dalton's law of partial pressures.
*   Amagat's law of additive volumes.

### Psychrometrics
*   Properties of moist air: dry-bulb temperature, wet-bulb temperature, humidity ratio, relative humidity, enthalpy.
*   Psychrometric chart.
*   Applications: air conditioning, drying.

## Chemical Thermodynamics

### Chemical Reactions
*   Stoichiometry, balancing chemical equations.

### Enthalpy of Formation and Reaction
*   Standard enthalpy of formation.
*   Calculating enthalpy change of reaction using Hess's law.

### Chemical Equilibrium
*   Equilibrium constant (K).
*   Effect of temperature and pressure on equilibrium composition.

## Statistical Thermodynamics

### Introduction to Statistical Mechanics
*   Microstates and macrostates.
*   Boltzmann distribution.

### Partition Function
*   Translational, rotational, vibrational, and electronic partition functions.

### Thermodynamic Properties from Statistical Mechanics
*   Internal energy, entropy, and specific heat from the partition function.

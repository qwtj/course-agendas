# Thermodynamics #Physics #Energy #Entropy
The branch of physics concerned with heat and its relation to other forms of energy and work. It defines macroscopic variables (like temperature, internal energy, entropy, and pressure) that describe bulk matter and radiation, and explains how they are related and how they change over time.

## Introduction and Basic Concepts #Fundamentals #Definitions #Systems
Laying the groundwork with fundamental definitions and concepts.

### Thermodynamic Systems #SystemTypes #Boundaries
Definition and classification of systems.
    *   Isolated System: No exchange of energy or matter.
    *   Closed System (Control Mass): Energy exchange possible, but no matter exchange.
    *   Open System (Control Volume): Both energy and matter exchange possible.
    *   System Boundaries: Real or imaginary surfaces separating the system from its surroundings.
    *   Surroundings: Everything external to the system.

### Properties of a System #StateVariables #Intensive #Extensive
Characteristics used to describe a system.
    *   Intensive Properties: Independent of system size (e.g., Temperature T, Pressure P, Density ρ).
    *   Extensive Properties: Dependent on system size (e.g., Mass m, Volume V, Internal Energy U).
    *   Specific Properties: Extensive properties per unit mass (e.g., specific volume v = V/m, specific internal energy u = U/m).

### State and Equilibrium #EquilibriumTypes #StatePostulate
Describing the condition of a system.
    *   Thermodynamic State: The condition of a system defined by its properties.
    *   State Postulate: The state of a simple compressible system is completely specified by two independent, intensive properties.
    *   Equilibrium: A state where properties are uniform throughout and do not change with time without external stimulus.
        *   Thermal Equilibrium: Uniform temperature.
        *   Mechanical Equilibrium: Uniform pressure (absence of unbalanced forces).
        *   Phase Equilibrium: Mass of each phase reaches a stable level.
        *   Chemical Equilibrium: Chemical composition does not change with time.

### Processes and Cycles #Paths #QuasiStatic #Reversibility
Changes in the state of a system.
    *   Process: Any change a system undergoes from one equilibrium state to another.
    *   Path: The series of states through which a system passes during a process.
    *   Quasi-Static (Quasi-Equilibrium) Process: A process conducted slowly enough that the system remains infinitesimally close to equilibrium at all times.
    *   Reversible Process: A process that can be reversed without leaving any trace on the surroundings (both system and surroundings return to initial states). Idealized.
    *   Irreversible Process: A process that is not reversible; involves dissipative effects (e.g., friction, unrestrained expansion). All real processes.
    *   Process Types: Isothermal (constant T), Isobaric (constant P), Isochoric/Isometric (constant V), Adiabatic (no heat transfer).
    *   Cycle: A sequence of processes that begins and ends at the same state.

### Units and Dimensions #SI #EnglishUnits #Consistency
Ensuring consistency in measurements (e.g., Joules, Pascals, Kelvin/Celsius).

## Zeroth Law of Thermodynamics #ThermalEquilibrium #Temperature
Foundation for temperature measurement.

### Statement of the Zeroth Law #TransitiveProperty
If two bodies are in thermal equilibrium with a third body, they are also in thermal equilibrium with each other.

### Temperature Concept #Measurement #Scales
Defines temperature as the property determining thermal equilibrium.
    *   Temperature Scales: Celsius (°C), Fahrenheit (°F), Kelvin (K), Rankine (R).
    *   Absolute Temperature Scales: Kelvin and Rankine.
    *   Thermometers: Devices used to measure temperature based on thermometric properties.

## First Law of Thermodynamics #EnergyConservation #InternalEnergy #Work #Heat
Conservation of energy principle applied to thermodynamic systems.

### Forms of Energy #Kinetic #Potential #Internal
Total energy (E) = Internal Energy (U) + Kinetic Energy (KE) + Potential Energy (PE). Focus often on Internal Energy (U) related to molecular structure and activity.

### Energy Transfer: Heat (Q) #HeatTransfer #SignConvention
Energy transfer due to temperature difference. Sign Convention: Q > 0 (heat added *to* system), Q < 0 (heat removed *from* system).

### Energy Transfer: Work (W) #WorkTransfer #SignConvention
Energy transfer not due to temperature difference (e.g., mechanical, electrical). Sign Convention: W > 0 (work done *by* system), W < 0 (work done *on* system).
    *   Boundary Work (PdV work): Work associated with moving boundaries (expansion/compression). W_b = ∫P dV.
    *   Other Work Forms: Shaft work, spring work, electrical work.

### First Law Statement for Closed Systems #ControlMass #EnergyBalance
Energy cannot be created or destroyed, only change forms.
    *   ΔE = Q - W or ΔU + ΔKE + ΔPE = Q - W.
    *   For stationary closed systems often simplified to ΔU = Q - W.
    *   Per unit mass: Δu = q - w.
    *   For cycles: Q_net = W_net.

### Specific Heats #Cv #Cp #IdealGas
Properties relating internal energy and enthalpy changes to temperature changes.
    *   Specific Heat at Constant Volume (Cv): (∂u/∂T)_v
    *   Specific Heat at Constant Pressure (Cp): (∂h/∂T)_p
    *   Relationship for Ideal Gases: Cp - Cv = R.
    *   Ratio of Specific Heats (k): k = Cp / Cv.

### Enthalpy (H) #Definition #Convenience
A convenience property defined as H = U + PV (or h = u + Pv). Useful for analyzing control volumes and constant pressure processes.

## Properties of Pure Substances #Phases #StatePrinciple #PVT
Behavior of substances like water, refrigerants, etc.

### Phases of a Pure Substance #Solid #Liquid #Gas #PhaseTransitions
Solid, Liquid, Vapor/Gas phases.
    *   Phase Change Processes: Melting, Freezing, Vaporization, Condensation, Sublimation, Deposition.
    *   Saturation Temperature (Tsat) and Saturation Pressure (Psat): Conditions where phase change occurs.

### Phase Diagrams #Pv #Tv #PT #CriticalPoint #TriplePoint
Graphical representation of phase behavior.
    *   P-v Diagram
    *   T-v Diagram (showing saturation dome)
    *   P-T Diagram (showing phase boundaries, triple point, critical point)
    *   Critical Point: State above which distinct liquid and vapor phases do not exist.
    *   Triple Point: State where solid, liquid, and vapor phases coexist in equilibrium.

### Property Tables #SteamTables #RefrigerantTables #Interpolation
Tabulated thermodynamic properties (T, P, v, u, h, s) for common substances.
    *   Saturated Liquid/Vapor Tables
    *   Superheated Vapor Tables
    *   Compressed (Subcooled) Liquid Tables
    *   Quality (x): Mass fraction of vapor in a saturated liquid-vapor mixture. Property calculation in mixture region (e.g., v = vf + x*vfg).

### Equations of State #IdealGasLaw #RealGas #Compressibility
Mathematical relations between P, v, and T.
    *   Ideal Gas Equation of State: Pv = RT (or PV = mRT or PV = NRuT). Conditions for ideal gas behavior.
    *   Compressibility Factor (Z): Z = Pv / RT. Measures deviation from ideal gas behavior. Generalized Compressibility Chart.
    *   Other Equations of State: Van der Waals, Beattie-Bridgeman, Benedict-Webb-Rubin. Designed to model real gas behavior more accurately.

## Energy Analysis of Closed Systems #ControlMass #WorkForms #HeatTransfer
Applying the First Law to systems with fixed mass.

### Boundary Work Calculation #Integration #PolytropicProcess
Calculating W_b = ∫P dV for various processes (isobaric, isochoric, isothermal, polytropic PV^n=C).

### First Law Applied to Closed Systems #EnergyBalance #Examples
ΔU = Q - W. Solving problems involving pistons, tanks, etc.

### Internal Energy and Enthalpy Changes #IdealGas #Incompressible
Calculating ΔU and ΔH.
    *   Ideal Gases: Δu = ∫Cv(T) dT ≈ Cv,avg * ΔT; Δh = ∫Cp(T) dT ≈ Cp,avg * ΔT.
    *   Solids and Liquids (Incompressible Substance Approximation): Cv ≈ Cp = C; Δu ≈ ∫C(T) dT ≈ Cavg * ΔT; Δh ≈ Δu + vΔP.

## Mass and Energy Analysis of Control Volumes #OpenSystems #FlowWork #SteadyFlow
Applying conservation laws to systems with mass flow across boundaries.

### Conservation of Mass #MassFlowRate #ContinuityEquation
Mass entering = Mass leaving + Change in mass within CV.
    *   ṁ = ρ * V_avg * A (Mass flow rate).
    *   Steady State: Σṁ_in = Σṁ_out.

### Flow Work and Energy of Flowing Fluid #Enthalpy #FlowEnergy
Work required to push mass into or out of a control volume (W_flow = PV).
    *   Energy transported by mass flow: θ = h + ke + pe = h + V²/2 + gz.

### First Law for Control Volumes (Energy Balance) #SteadyState #Transient
Rate of energy in - Rate of energy out = Rate of change of energy within CV.
    *   Steady-State Flow Process (SSSF): Energy and mass within CV constant over time. Q̇ - Ẇ + Σṁ_in * θ_in - Σṁ_out * θ_out = 0.
    *   Transient Analysis: Properties change with time.

### Common Steady-Flow Devices #Turbines #Compressors #Nozzles #Diffusers #HeatExchangers #ThrottlingValves
Applying steady-flow energy equation to analyze engineering devices.

## Second Law of Thermodynamics #Entropy #Spontaneity #Irreversibility
Directionality of processes, limits on efficiency, and the concept of entropy.

### Introduction to the Second Law #NeedForSecondLaw #Direction
Limitations of the First Law (doesn't forbid impossible processes). Introduces directionality.

### Heat Engines, Refrigerators, and Heat Pumps #Cycles #ThermalEfficiency #COP
Devices operating in cycles that interact with heat reservoirs.
    *   Heat Engine: Converts heat to work. Thermal Efficiency η_th = W_net / Q_H = 1 - Q_L / Q_H.
    *   Refrigerator: Transfers heat from low T to high T using work input. Coefficient of Performance COP_R = Q_L / W_in.
    *   Heat Pump: Transfers heat from low T to high T using work input (goal is heating). Coefficient of Performance COP_HP = Q_H / W_in = COP_R + 1.

### Statements of the Second Law #KelvinPlanck #Clausius
Formal statements expressing impossibility of certain processes.
    *   Kelvin-Planck Statement: Impossible for any device operating in a cycle to receive heat from a single reservoir and produce a net amount of work. (Related to heat engines).
    *   Clausius Statement: Impossible to construct a device operating in a cycle that produces no effect other than the transfer of heat from a cooler body to a hotter body. (Related to refrigerators).
    *   Equivalence of the two statements.

### Reversible and Irreversible Processes #Ideal #Real #CausesOfIrreversibility
Defining idealized reversible processes and identifying sources of irreversibility in real processes (friction, heat transfer across finite ΔT, mixing, unrestrained expansion).

### The Carnot Cycle #ReversibleCycle #MaximumEfficiency
A theoretical, reversible cycle consisting of two isothermal and two adiabatic processes.
    *   Carnot Principles:
        1.  Efficiency of an irreversible heat engine is always less than the efficiency of a reversible one operating between the same two reservoirs.
        2.  Efficiencies of all reversible heat engines operating between the same two reservoirs are the same.
    *   Carnot Efficiency: η_th,rev = 1 - T_L / T_H. (Temperatures must be absolute - K or R).
    *   Carnot COP: COP_R,rev = T_L / (T_H - T_L); COP_HP,rev = T_H / (T_H - T_L).

### The Thermodynamic Temperature Scale #AbsoluteScale #Kelvin
Defining an absolute temperature scale independent of the properties of any substance, based on the Carnot cycle efficiency.

### Entropy (S) #Property #Disorder #ClausiusInequality
A thermodynamic property representing the degree of disorder or randomness, and a measure of energy unavailability.
    *   Clausius Inequality: ∮(δQ/T) ≤ 0. Equality holds for reversible cycles, inequality for irreversible cycles.
    *   Definition of Entropy Change: dS = (δQ/T)_rev. ΔS = ∫(δQ/T)_rev.

## Entropy Analysis #EntropyGeneration #IsentropicProcesses #TdsRelations
Applying the concept of entropy.

### The Increase of Entropy Principle #S_gen #IsolatedSystem
Entropy of an isolated system always increases during an irreversible process and remains constant during a reversible process. ΔS_total = ΔS_sys + ΔS_surr = S_gen ≥ 0.
    *   Entropy Generation (S_gen): A measure of irreversibilities present during a process. S_gen > 0 for irreversible, S_gen = 0 for reversible.

### Entropy Change Calculations #PureSubstances #IdealGases #Incompressible
Calculating ΔS for different substances and processes.
    *   Using property tables for pure substances.
    *   Ideal Gases: Variable specific heats (using tables A-17 etc.) or constant specific heats (Δs = Cv,avg * ln(T2/T1) + R * ln(v2/v1); Δs = Cp,avg * ln(T2/T1) - R * ln(P2/P1)).
    *   Incompressible Substances: Δs ≈ Cavg * ln(T2/T1).

### T-dS Relations #GibbsEquations
Relationships derived from First and Second Laws:
    *   T dS = dU + P dV (or T ds = du + P dv)
    *   T dS = dH - V dP (or T ds = dh - v dP)

### Isentropic Processes #ConstantEntropy #IdealProcess
A process during which entropy remains constant (Δs = 0). Internally reversible and adiabatic. Used as an ideal model for many devices.
    *   Ideal Gas Isentropic Relations: T*v^(k-1)=C, T*P^((1-k)/k)=C, P*v^k=C.

### Isentropic Efficiencies #Turbines #Compressors #Nozzles
Comparing actual performance to the ideal isentropic performance.
    *   η_T = (Actual Turbine Work) / (Isentropic Turbine Work) = w_a / w_s.
    *   η_C = (Isentropic Compressor Work) / (Actual Compressor Work) = w_s / w_a.
    *   η_N = (Actual KE at Nozzle Exit) / (Isentropic KE at Nozzle Exit) = V_a²/V_s².

### Entropy Balance #RateForm #ControlVolume
Entropy balance equation for closed systems and control volumes.
    *   ΔS_sys = ∫(δQ/T) + S_gen (Closed System)
    *   Rate Form (CV): dS_cv/dt = ΣQ̇_k/T_k + Σṁ_in*s_in - Σṁ_out*s_out + Ṡ_gen.
    *   Steady State (CV): 0 = ΣQ̇_k/T_k + Σṁ_in*s_in - Σṁ_out*s_out + Ṡ_gen.

## Exergy (Availability) Analysis #SecondLawEfficiency #Irreversibility #UsefulWork
Analyzing the quality of energy and the maximum useful work potential.

### Exergy Concept #WorkPotential #DeadState #Availability
The maximum useful work obtainable as a system comes into equilibrium with the environment (dead state).
    *   Dead State: Environment conditions (T0, P0).
    *   Exergy is a property combining system state and environment state.

### Reversible Work and Irreversibility #MaximumWork #LostWork
    *   Reversible Work (W_rev): Maximum useful work output (or minimum input) for a process between specified end states.
    *   Irreversibility (I): Exergy destroyed during a process. I = W_rev - W_u = T0 * S_gen. Represents lost work potential.

### Second-Law Efficiency (η_II) #ExergeticEfficiency
Compares actual performance to the ideal (reversible) performance based on exergy.
    *   η_II = (Exergy Recovered) / (Exergy Expended).
    *   For work-producing devices: η_II = W_u / W_rev.
    *   For work-consuming devices: η_II = W_rev / W_u.

### Exergy Balance #ExergyChange #ExergyTransfer #ExergyDestruction
Applying exergy conservation principles.
    *   Exergy Change = Exergy Transfer - Exergy Destruction.
    *   Exergy can be transferred by heat, work, and mass flow.
    *   Exergy is destroyed by irreversibilities (I = X_destroyed).

## Thermodynamic Cycles #PowerCycles #RefrigerationCycles #HeatPumps
Analyzing cycles used in power generation and refrigeration/heating.

### Gas Power Cycles #AirStandardAssumptions #InternalCombustion
Cycles where the working fluid remains a gas.
    *   Air-Standard Assumptions: Simplifying assumptions for analysis (air as working fluid, ideal gas, constant specific heats, etc.).
    *   Carnot Cycle (Gas): Theoretical limit, impractical.
    *   Otto Cycle: Ideal cycle for spark-ignition (SI) engines.
    *   Diesel Cycle: Ideal cycle for compression-ignition (CI) engines.
    *   Dual Cycle: More realistic model combining Otto and Diesel heat addition.
    *   Brayton Cycle: Ideal cycle for gas turbines. Regenerative, intercooling, reheating modifications. Jet propulsion applications.

### Vapor Power Cycles #RankineCycle #SteamPowerPlants
Cycles where the working fluid undergoes phase changes (typically water).
    *   Carnot Cycle (Vapor): Practical difficulties (compressing mixture).
    *   Rankine Cycle: Ideal cycle for steam power plants (boiler, turbine, condenser, pump).
    *   Modifications for Efficiency: Reheat Rankine Cycle, Regenerative Rankine Cycle (feedwater heaters).
    *   Cogeneration: Producing both power and process heat.
    *   Combined Gas-Vapor Power Cycles: High overall efficiency by topping a vapor cycle with a gas cycle.

### Refrigeration Cycles #VaporCompression #Absorption #GasRefrigeration
Cycles designed to transfer heat from a low-temperature medium to a high-temperature one.
    *   Reversed Carnot Cycle: Ideal refrigeration cycle.
    *   Ideal Vapor-Compression Refrigeration Cycle: Most widely used (evaporator, compressor, condenser, expansion valve). Actual cycle deviations.
    *   Refrigerant Selection Criteria: Environmental impact (ODP, GWP), safety, performance.
    *   Absorption Refrigeration: Uses heat source (instead of compressor work) to drive the cycle (e.g., ammonia-water system).
    *   Gas Refrigeration Cycle: Reversed Brayton cycle, used in aircraft cooling, cryogenics.

## Gas Mixtures and Psychrometrics #IdealGasMixtures #Humidity #AirConditioning
Properties and analysis of gas mixtures, particularly air-water vapor mixtures.

### Composition of Gas Mixtures #MassFraction #MoleFraction #DaltonsLaw #AmagatsLaw
Describing mixture composition.
    *   Dalton's Law of Additive Pressures: Total pressure is sum of partial pressures.
    *   Amagat's Law of Additive Volumes: Total volume is sum of partial volumes.
    *   Ideal Gas Mixture Properties: Calculating P, V, T, U, H, S, Cv, Cp for mixtures.

### Psychrometrics #AirWaterMixtures #Humidity #Enthalpy #DewPoint
Properties of atmospheric air (dry air + water vapor).
    *   Specific Humidity (Humidity Ratio): Mass of water vapor per unit mass of dry air.
    *   Relative Humidity: Ratio of actual vapor pressure to saturation pressure at the same temperature.
    *   Dew Point Temperature: Temperature at which condensation begins upon cooling at constant pressure.
    *   Adiabatic Saturation Temperature and Wet-Bulb Temperature.
    *   Psychrometric Chart: Graphical representation of psychrometric properties.

### Air-Conditioning Processes #Heating #Cooling #Humidification #Dehumidification #Mixing
Analyzing processes involving changes in air temperature and humidity (Simple heating/cooling, heating/cooling with humidification/dehumidification, evaporative cooling, adiabatic mixing of air streams).

## Chemical Reactions and Equilibrium #Combustion #ReactionEquilibrium #GibbsFunction
Thermodynamics of reacting systems.

### Fuels and Combustion #Stoichiometry #AirFuelRatio
Chemical reactions involving rapid oxidation, typically releasing heat.
    *   Complete vs. Incomplete Combustion.
    *   Stoichiometric (Theoretical) Air: Minimum air required for complete combustion.
    *   Excess Air, Percent Theoretical Air.
    *   Air-Fuel Ratio (AF).

### Enthalpy of Formation and Enthalpy of Combustion #StandardState #HHV #LHV
Quantifying energy released during reactions.
    *   Enthalpy of Formation (h_f°): Enthalpy change during formation from stable elements at standard state (25°C, 1 atm).
    *   Enthalpy of Combustion (h_c): Heat released during complete combustion (HHV - Higher Heating Value, LHV - Lower Heating Value).

### First Law Analysis of Reacting Systems #EnergyBalance #AdiabaticFlameTemp
Applying energy conservation to combustion chambers.
    *   Steady-Flow Energy Balance: Q̇ - Ẇ + Σṁ_in*h_in - Σṁ_out*h_out = 0.
    *   Adiabatic Flame Temperature: Maximum temperature achieved under adiabatic conditions.

### Chemical Equilibrium #EquilibriumCriteria #GibbsFunction #EquilibriumConstant
Determining the extent of reaction completion.
    *   Criterion for Equilibrium: Gibbs function minimization (dG = 0 at constant T, P).
    *   Equilibrium Constant (Kp): Related to partial pressures of reactants and products at equilibrium. Effect of temperature, pressure, and inert gases on equilibrium composition.

## Statistical Thermodynamics #Microstates #Macrostates #BoltzmannStatistics
Connecting microscopic particle behavior to macroscopic thermodynamic properties.

### Microscopic vs. Macroscopic Viewpoint #StatisticalMechanics #AverageBehavior
Relating the behavior of large numbers of atoms/molecules to bulk properties.

### Basic Concepts #Microstate #Macrostate #Ensemble #Probability
Defining fundamental statistical concepts.
    *   Microstate: Specific configuration of positions and momenta of all particles.
    *   Macrostate: Macroscopic properties (T, P, V) corresponding to many possible microstates.
    *   Ensemble: Collection of identical systems.

### Boltzmann Distribution #PartitionFunction #StatisticalInterpretationOfEntropy
Distribution of particles among energy levels.
    *   Partition Function (Z): Sum over states, encapsulates statistical properties.
    *   Relation to Thermodynamic Properties: U, S, F (Helmholtz function) derived from Z.
    *   Boltzmann's Entropy Formula: S = k * ln(W) (W = number of microstates).

## Advanced Topics in Thermodynamics #NonEquilibrium #TransportPhenomena #Relativistic
Areas beyond classical equilibrium thermodynamics.

### Non-Equilibrium Thermodynamics #IrreversibleProcesses #EntropyProduction #OnsagerRelations
Study of systems not in thermodynamic equilibrium. Focus on rates of processes and entropy production.

### Introduction to Transport Phenomena #HeatTransfer #MassTransfer #FluidFlow
Brief overview of how thermodynamics interfaces with transport processes (often studied separately but fundamentally linked).

### Other Advanced Areas #RelativisticThermodynamics #QuantumThermodynamics #BlackHoleThermodynamics
Specialized extensions of thermodynamic principles.


# I. Basic Circuit Concepts

## Understanding Electric Charge and Current

### Defining Electric Charge

*   Positive and negative charges; units (Coulombs).
*   Elementary charge (electron charge).

### Defining Electric Current

*   Flow of electric charge; conventional current direction.
*   Units of current (Amperes).
*   `I = dQ/dt` (current as the rate of change of charge).

### Current Density

*   Current per unit area.
*   `J = I/A`

## Understanding Voltage and Electric Potential

### Defining Electric Potential Energy

*   Energy associated with electric charge in an electric field.

### Defining Electric Potential (Voltage)

*   Potential energy per unit charge.
*   Units of voltage (Volts).
*   `V = PE/q`

### Voltage Drop vs. Voltage Rise

*   Understanding the sign conventions for voltage across circuit elements.

## Resistance and Ohm's Law

### Defining Resistance

*   Opposition to current flow.
*   Units of resistance (Ohms).

### Ohm's Law

*   Relationship between voltage, current, and resistance.
*   `V = IR`

### Resistor Color Codes

*   Decoding resistor values using color bands.
    *   Example: Brown, Black, Red, Gold = 1 kΩ, 5% tolerance

### Power Dissipation in Resistors

*   Calculating power dissipated by a resistor.
*   `P = IV = I^2R = V^2/R`

# II. Series and Parallel Circuits

## Series Circuits

### Understanding Series Connections

*   Components connected end-to-end.
*   Same current flows through all components.

### Calculating Total Resistance in Series

*   `R_total = R_1 + R_2 + R_3 + ...`

### Voltage Division in Series Circuits

*   Voltage across each resistor is proportional to its resistance.
*   `V_x = V_total * (R_x / R_total)`

### Applying Kirchhoff's Voltage Law (KVL)

*   The sum of voltages around a closed loop is zero.
*   `ΣV = 0`

## Parallel Circuits

### Understanding Parallel Connections

*   Components connected across the same two nodes.
*   Same voltage across all components.

### Calculating Total Resistance in Parallel

*   `1/R_total = 1/R_1 + 1/R_2 + 1/R_3 + ...`

### Current Division in Parallel Circuits

*   Current through each resistor is inversely proportional to its resistance.
*   `I_x = I_total * (R_total / R_x)` (where R_total is the equivalent parallel resistance)

### Applying Kirchhoff's Current Law (KCL)

*   The sum of currents entering a node equals the sum of currents leaving the node.
*   `ΣI = 0`

## Series-Parallel Combinations

### Identifying Series and Parallel Sections

*   Breaking down complex circuits into simpler series and parallel combinations.

### Calculating Equivalent Resistance

*   Step-by-step reduction of series-parallel circuits to find total resistance.

### Analyzing Voltage and Current Distribution

*   Determining voltage and current values for each component in the combined circuit.

# III. Circuit Analysis Techniques

## Nodal Analysis

### Selecting the Reference Node (Ground)

*   Choosing the most convenient node as the reference.

### Writing Nodal Equations

*   Applying KCL at each node (except the reference node).
*   Expressing currents in terms of node voltages and element values.

### Solving the System of Equations

*   Using methods such as substitution, matrices, or software tools to solve for node voltages.

## Mesh Analysis

### Identifying Meshes (Loops)

*   Defining independent loops in the circuit.

### Assigning Mesh Currents

*   Assigning a current variable to each mesh.

### Writing Mesh Equations

*   Applying KVL around each mesh.
*   Expressing voltages in terms of mesh currents and element values.

### Solving the System of Equations

*   Using methods such as substitution, matrices, or software tools to solve for mesh currents.

## Superposition Theorem

### Understanding the Principle of Superposition

*   Finding the response due to each independent source acting alone.

### Deactivating Independent Sources

*   Replacing voltage sources with short circuits and current sources with open circuits.

### Calculating Individual Responses

*   Analyzing the circuit with only one source active at a time.

### Summing the Individual Responses

*   Adding the individual responses to find the total response.

## Thevenin's and Norton's Theorems

### Thevenin's Theorem

#### Finding Thevenin Voltage (V_TH)

*   Calculating the open-circuit voltage at the terminals of interest.

#### Finding Thevenin Resistance (R_TH)

*   Deactivating independent sources (shorting voltage sources, opening current sources).
*   Calculating the equivalent resistance looking back from the terminals of interest.

#### Constructing the Thevenin Equivalent Circuit

*   A voltage source (V_TH) in series with a resistor (R_TH).

### Norton's Theorem

#### Finding Norton Current (I_N)

*   Calculating the short-circuit current at the terminals of interest.

#### Finding Norton Resistance (R_N)

*   Deactivating independent sources (shorting voltage sources, opening current sources).
*   Calculating the equivalent resistance looking back from the terminals of interest (R_N = R_TH).

#### Constructing the Norton Equivalent Circuit

*   A current source (I_N) in parallel with a resistor (R_N).

### Converting Between Thevenin and Norton Equivalents

*   `V_TH = I_N * R_N` and `I_N = V_TH / R_TH`

# IV. Capacitors and Inductors

## Capacitors

### Defining Capacitance

*   Ability to store electric charge.
*   Units of capacitance (Farads).
*   `C = Q/V`

### Current-Voltage Relationship for a Capacitor

*   `I = C * dV/dt`

### Energy Storage in a Capacitor

*   `E = (1/2) * C * V^2`

### Capacitors in Series and Parallel

*   Series: `1/C_total = 1/C_1 + 1/C_2 + ...`
*   Parallel: `C_total = C_1 + C_2 + ...`

## Inductors

### Defining Inductance

*   Ability to store energy in a magnetic field.
*   Units of inductance (Henries).
*   `L = λ/I` (where λ is flux linkage)

### Voltage-Current Relationship for an Inductor

*   `V = L * dI/dt`

### Energy Storage in an Inductor

*   `E = (1/2) * L * I^2`

### Inductors in Series and Parallel

*   Series: `L_total = L_1 + L_2 + ...`
*   Parallel: `1/L_total = 1/L_1 + 1/L_2 + ...`

## RC and RL Circuits

### RC Circuits: Charging and Discharging

*   Time constant: `τ = RC`
*   Voltage and current equations during charging and discharging.
*   `V(t) = V_0 * (1 - e^(-t/τ))` (Charging)
*   `V(t) = V_0 * e^(-t/τ)` (Discharging)

### RL Circuits: Energizing and De-energizing

*   Time constant: `τ = L/R`
*   Voltage and current equations during energizing and de-energizing.
*   `I(t) = I_0 * (1 - e^(-t/τ))` (Energizing)
*   `I(t) = I_0 * e^(-t/τ)` (De-energizing)

### Transient Response Analysis

*   Calculating voltage and current as a function of time.
*   Determining the time required to reach steady state (approximately 5τ).

# V. AC Circuit Analysis

## Sinusoidal Signals

### Defining Amplitude, Frequency, and Phase

*   Amplitude (V_m or I_m): Maximum value of the sinusoid.
*   Frequency (f): Number of cycles per second (Hertz).
*   Angular Frequency (ω): ω = 2πf
*   Phase (φ): Initial angle of the sinusoid (radians or degrees).

### Representing Sinusoids Mathematically

*   `v(t) = V_m * cos(ωt + φ)` or `i(t) = I_m * cos(ωt + φ)`

### RMS (Root Mean Square) Values

*   `V_rms = V_m / √2` and `I_rms = I_m / √2`
*   Calculating average power using RMS values.

## Phasors

### Representing Sinusoids as Phasors

*   Converting time-domain sinusoids into frequency-domain phasors.
*   Phasor representation: `V = V_m∠φ`

### Impedance

*   Impedance of a resistor: `Z_R = R`
*   Impedance of an inductor: `Z_L = jωL`
*   Impedance of a capacitor: `Z_C = 1/(jωC) = -j/(ωC)`

### Ohm's Law for AC Circuits

*   `V = IZ`, where V and I are phasors and Z is impedance.

## AC Circuit Analysis Techniques

### Applying Nodal and Mesh Analysis

*   Using nodal and mesh analysis with impedances instead of resistances.

### Superposition Theorem in AC Circuits

*   Applying the superposition theorem to circuits with multiple AC sources.

### Thevenin's and Norton's Theorems in AC Circuits

*   Finding Thevenin and Norton equivalent circuits for AC networks.

## AC Power Analysis

### Instantaneous Power

*   `p(t) = v(t) * i(t)`

### Average Power (Real Power)

*   `P = V_rms * I_rms * cos(θ)`, where θ is the angle between voltage and current phasors.

### Reactive Power

*   `Q = V_rms * I_rms * sin(θ)`

### Apparent Power

*   `S = V_rms * I_rms`

### Power Factor

*   `PF = cos(θ) = P/S`
*   Lagging and leading power factors.

### Power Factor Correction

*   Using capacitors to improve the power factor of inductive loads.

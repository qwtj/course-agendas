# I. Fundamentals of Electric Circuits

## Learning Objectives
"<prompt: Generate a list of 3-5 key learning objectives for an introductory section on the fundamentals of electric circuits, starting at heading level 2. Objectives should cover basic quantities, components, and fundamental laws.>"

## Basic Concepts
"<prompt: Generate introductory content, starting at heading level 2, explaining the foundational concepts necessary to understand electric circuits. Briefly introduce charge, current, voltage, power, energy, and basic circuit elements.>"

### Charge, Current, Voltage, Power, and Energy
"<prompt: Generate detailed definitions and explanations, starting at heading level 3, for the fundamental electrical quantities: Electric Charge (Q), Electric Current (I), Voltage (V) or Potential Difference, Electrical Power (P), and Electrical Energy (W). Include standard units (Coulombs, Amperes, Volts, Watts, Joules) and basic relationships between them (e.g., P=VI, W=Pt). Use inline code formatting for symbols like `Q`, `I`, `V`, `P`, `W`.>"
*   "<prompt: Define electric charge `Q` and its unit, the Coulomb. Explain its role as a fundamental property of matter.>"
*   "<prompt: Define electric current `I` as the rate of flow of charge (I = dQ/dt) and its unit, the Ampere. Distinguish between conventional current and electron flow.>"
*   "<prompt: Define voltage `V` (or potential difference/electromotive force - EMF) as the energy per unit charge (V = dW/dQ) and its unit, the Volt. Explain its role in driving current.>"
*   "<prompt: Define electric power `P` as the rate at which energy is transferred (P = dW/dt = VI) and its unit, the Watt.>"
*   "<prompt: Define electric energy `W` as the capacity to do work, often measured in Joules or kilowatt-hours (kWh).>"

### Circuit Elements
"<prompt: Generate content, starting at heading level 3, describing the basic building blocks of electric circuits. Differentiate between passive and active elements.>"
*   "<prompt: Describe passive circuit elements, focusing on resistors (`R`), capacitors (`C`), and inductors (`L`). Explain their basic function (energy dissipation, energy storage in electric/magnetic fields) and symbols. Use inline code formatting for symbols.>"
*   "<prompt: Describe active circuit elements, focusing on ideal independent voltage sources and current sources. Explain their function in providing energy to the circuit and their symbols.>"

### Ohm's Law
"<prompt: Generate content, starting at heading level 3, explaining Ohm's Law. Include the formula in MathJax format, define its components (Voltage, Current, Resistance), state the conditions under which it applies (linearity, constant temperature), and provide simple calculation examples. Use MathJax for the formula: $$V = IR$$ Use inline code formatting for symbols `V`, `I`, `R`.>"

### Kirchhoff's Laws
"<prompt: Generate introductory content, starting at heading level 3, explaining the importance of Kirchhoff's Laws (KCL and KVL) for circuit analysis.>"
*   "<prompt: Explain Kirchhoff's Current Law (KCL), stating that the algebraic sum of currents entering a node is zero. Provide a clear definition of a node and illustrate KCL with a simple circuit diagram example. Use MathJax for the formula: $$\sum_{k=1}^{n} I_k = 0$$>"
*   "<prompt: Explain Kirchhoff's Voltage Law (KVL), stating that the algebraic sum of voltages around any closed loop is zero. Provide a clear definition of a loop and illustrate KVL with a simple circuit diagram example. Use MathJax for the formula: $$\sum_{k=1}^{n} V_k = 0$$>"

## Quiz: Fundamentals
"<prompt: Generate a 5-question multiple-choice quiz, starting at heading level 2, to assess understanding of fundamental electric circuit concepts (charge, current, voltage, power, Ohm's Law, KCL, KVL). Include answers and brief explanations.>"

## Section Summary
"<prompt: Generate a concise summary paragraph, starting at heading level 2, recapping the key concepts covered in the 'Fundamentals of Electric Circuits' section, including basic quantities, components, Ohm's Law, and Kirchhoff's Laws. Emphasize their foundational importance.>"

## Reflection Questions
"<prompt: Generate 2-3 reflection questions, starting at heading level 2, prompting the learner to think critically about the concepts of voltage, current, and the application of Kirchhoff's laws in simple circuits.>"

# II. DC Circuit Analysis

## Learning Objectives
"<prompt: Generate a list of 3-5 key learning objectives, starting at heading level 2, for a section on DC circuit analysis. Objectives should cover series/parallel combinations, analysis techniques (Nodal, Mesh), and network theorems (Thevenin, Norton, Superposition, Max Power Transfer).>"

## Series and Parallel Circuits
"<prompt: Generate introductory content, starting at heading level 2, explaining the concepts of series and parallel connections in DC circuits, primarily focusing on resistors.>"

### Resistors in Series
"<prompt: Generate content, starting at heading level 3, explaining how to analyze resistors connected in series. Include the formula for calculating equivalent resistance (`Req`) in MathJax format: $$R_{eq} = R_1 + R_2 + \dots + R_n$$. Explain that current is the same through series components and voltage divides across them. Provide an example calculation.>"

### Resistors in Parallel
"<prompt: Generate content, starting at heading level 3, explaining how to analyze resistors connected in parallel. Include the formula for calculating equivalent resistance (`Req`) in MathJax format: $$rac{1}{R_{eq}} = rac{1}{R_1} + rac{1}{R_2} + \dots + rac{1}{R_n}$$. Explain that voltage is the same across parallel components and current divides among them. Provide an example calculation, including the two-resistor shortcut: $$R_{eq} = rac{R_1 R_2}{R_1 + R_2}$$>"

### Voltage Divider Rule
"<prompt: Generate content, starting at heading level 3, explaining the Voltage Divider Rule for series circuits. Include the formula in MathJax format for finding the voltage across a specific resistor `Rx`: $$V_x = V_{total} rac{R_x}{\sum R_{series}}$$. Provide a practical example of its application.>"

### Current Divider Rule
"<prompt: Generate content, starting at heading level 3, explaining the Current Divider Rule for parallel circuits. Include the formula in MathJax format for finding the current through a specific resistor `Rx` (especially for two parallel resistors `R1` and `R2` where `Rx` is `R1`): $$I_1 = I_{total} rac{R_2}{R_1 + R_2}$$. Provide a practical example of its application.>"

## Network Analysis Techniques
"<prompt: Generate introductory content, starting at heading level 2, explaining the need for systematic methods like Nodal and Mesh analysis for solving more complex DC circuits that cannot be simplified purely by series/parallel reductions.>"

### Nodal Analysis
"<prompt: Generate content, starting at heading level 3, explaining the step-by-step procedure for Nodal Analysis (based on KCL). Steps should include selecting a reference node, defining node voltages, writing KCL equations for non-reference nodes, and solving the resulting system of linear equations. Provide a worked example for a circuit with 2-3 nodes.>"

### Mesh (Loop) Analysis
"<prompt: Generate content, starting at heading level 3, explaining the step-by-step procedure for Mesh Analysis (based on KVL). Steps should include identifying meshes, defining mesh currents, writing KVL equations for each mesh, and solving the resulting system of linear equations. Define a 'supermesh' if applicable. Provide a worked example for a circuit with 2-3 meshes.>"

## Network Theorems
"<prompt: Generate introductory content, starting at heading level 2, explaining how network theorems (Superposition, Thevenin, Norton, Maximum Power Transfer) simplify the analysis of linear circuits.>"

### Superposition Theorem
"<prompt: Generate content, starting at heading level 3, explaining the Superposition Theorem. State that in a linear circuit with multiple independent sources, the total response (voltage or current) in any part of the circuit is the sum of the responses caused by each independent source acting alone (with other sources turned off - voltage sources shorted, current sources opened). Provide a worked example.>"

### Thevenin's Theorem
"<prompt: Generate content, starting at heading level 3, explaining Thevenin's Theorem. Describe how any linear two-terminal network can be replaced by an equivalent circuit consisting of a single voltage source (`Vth`) in series with a single resistor (`Rth`). Explain methods to calculate `Vth` (open-circuit voltage) and `Rth` (equivalent resistance seen from the terminals with independent sources turned off). Provide a worked example. Use inline code formatting for `Vth` and `Rth`.>"

### Norton's Theorem
"<prompt: Generate content, starting at heading level 3, explaining Norton's Theorem. Describe how any linear two-terminal network can be replaced by an equivalent circuit consisting of a single current source (`In`) in parallel with a single resistor (`Rn`). Explain methods to calculate `In` (short-circuit current) and `Rn` (which is equal to `Rth`). Explain the relationship between Thevenin and Norton equivalents (`Vth = In * Rn`). Provide a worked example. Use inline code formatting for `In` and `Rn`.>"

### Maximum Power Transfer Theorem
"<prompt: Generate content, starting at heading level 3, explaining the Maximum Power Transfer Theorem for DC circuits. State that maximum power is delivered from a source (represented by its Thevenin equivalent `Vth`, `Rth`) to a load (`RL`) when the load resistance equals the Thevenin resistance (`RL = Rth`). Include the formula for maximum power in MathJax format: $$P_{max} = rac{V_{th}^2}{4 R_{th}}$$. Explain its significance in applications like impedance matching. Use inline code formatting for symbols.>"

## Quiz: DC Analysis
"<prompt: Generate a 5-question quiz (mix of multiple-choice and calculation problems), starting at heading level 2, assessing understanding of DC circuit analysis techniques (Series/Parallel, Nodal, Mesh) and network theorems (Thevenin, Norton, Superposition, Max Power). Include answers and solution steps.>"

## Section Summary
"<prompt: Generate a concise summary paragraph, starting at heading level 2, recapping the key techniques and theorems covered in the 'DC Circuit Analysis' section. Emphasize their utility in solving complex DC circuits.>"

## Reflection Questions
"<prompt: Generate 2-3 reflection questions, starting at heading level 2, prompting the learner to consider when to apply Nodal vs. Mesh analysis, and the practical implications of Thevenin's theorem and maximum power transfer.>"

# III. AC Circuit Analysis

## Learning Objectives
"<prompt: Generate a list of 3-5 key learning objectives, starting at heading level 2, for a section on AC circuit analysis. Objectives should cover sinusoidal waveforms, phasors, impedance, AC analysis techniques, power analysis, and frequency response/resonance.>"

## Sinusoidal Waveforms and Phasors
"<prompt: Generate introductory content, starting at heading level 2, explaining why AC (Alternating Current) circuit analysis is important and introducing the concept of sinusoidal steady-state analysis.>"

### Characteristics of Sinusoids
"<prompt: Generate content, starting at heading level 3, defining the key characteristics of sinusoidal waveforms (voltage or current) used in AC circuits. Include definitions and typical representations (e.g., `v(t) = Vm cos(ωt + φ)` or `v(t) = Vm sin(ωt + φ)`) for Amplitude (`Vm`), Angular Frequency (`ω`), Frequency (`f`), Period (`T`), and Phase Angle (`φ`). Use inline code formatting for symbols and MathJax for equations where appropriate, e.g., $$ω = 2πf = rac{2π}{T}$$>"

### Phasor Representation
"<prompt: Generate content, starting at heading level 3, explaining the concept of phasors as a way to represent sinusoids in the frequency domain. Show how a time-domain sinusoid `v(t) = Vm cos(ωt + φ)` is transformed into a phasor `V` in polar form (`Vm ∠ φ`) and rectangular form (`Vm cos(φ) + j Vm sin(φ)`). Emphasize that phasors simplify AC analysis by converting differential equations into algebraic equations. Use inline code formatting for symbols like `V` and `j`.>"

### Complex Numbers in AC Analysis
"<prompt: Generate content, starting at heading level 3, reviewing the essential operations with complex numbers required for AC circuit analysis using phasors. Cover addition, subtraction, multiplication, and division in both rectangular (`a + jb`) and polar (`r ∠ θ`) forms. Provide examples relevant to circuit calculations. Use inline code formatting for `j`.>"

## AC Circuit Elements
"<prompt: Generate introductory content, starting at heading level 2, explaining how passive elements (R, L, C) behave in AC circuits and introducing the concept of impedance.>"

### Impedance and Admittance
"<prompt: Generate content, starting at heading level 3, defining Impedance (`Z`) as the complex ratio of phasor voltage to phasor current (`Z = V/I`) in an AC circuit, representing total opposition to current flow (resistance and reactance). Define Admittance (`Y`) as the reciprocal of impedance (`Y = 1/Z`). Include units (Ohms for Z, Siemens for Y). Use inline code formatting for symbols.>"

### Resistors, Inductors, Capacitors in AC Circuits
"<prompt: Generate content, starting at heading level 3, describing the impedance of resistors, inductors, and capacitors in AC circuits.>"
*   "<prompt: Explain that the impedance of a resistor `R` is purely real: $$Z_R = R$$. Note that voltage and current are in phase. Use MathJax and inline code formatting.>"
*   "<prompt: Explain that the impedance of an inductor `L` is purely imaginary and frequency-dependent: $$Z_L = jωL$$. Note that voltage leads current by 90 degrees. Define inductive reactance `XL = ωL`. Use MathJax and inline code formatting.>"
*   "<prompt: Explain that the impedance of a capacitor `C` is purely imaginary, negative, and frequency-dependent: $$Z_C = rac{1}{jωC} = -rac{j}{ωC}$$. Note that current leads voltage by 90 degrees. Define capacitive reactance `XC = 1/(ωC)`. Use MathJax and inline code formatting.>"

## AC Circuit Analysis Techniques
"<prompt: Generate introductory content, starting at heading level 2, explaining that the DC analysis techniques (KCL, KVL, Nodal, Mesh, Thevenin, Norton, Superposition) can be extended to AC circuits by using phasors and complex impedance instead of DC values and resistance.>"

### Applying KCL, KVL, Nodal, Mesh to AC Circuits
"<prompt: Generate content, starting at heading level 3, demonstrating how to apply KCL, KVL, Nodal Analysis, and Mesh Analysis to AC circuits using phasors and complex impedances. Provide at least one worked example (e.g., a simple RLC circuit solved using Nodal or Mesh analysis) involving complex number calculations.>"

### AC Power Analysis
"<prompt: Generate introductory content, starting at heading level 3, explaining the concepts of power in AC circuits, which are more complex than in DC circuits due to phase differences.>"
*   "<prompt: Define Instantaneous Power `p(t) = v(t)i(t)` and Average Power `P` (also called Real Power), which represents the actual power dissipated (usually in resistors). Include the formula for average power in MathJax format: $$P = V_{rms} I_{rms} 
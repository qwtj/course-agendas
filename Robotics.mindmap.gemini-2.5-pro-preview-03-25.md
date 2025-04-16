# Robotics #Overview #Engineering #Automation
The interdisciplinary field concerning the conception, design, manufacture, and operation of robots.

## Introduction & History #Fundamentals #Timeline #Context
Overview of the field's origins, evolution, and foundational concepts.
### Definition of a Robot #Concept #Terminology
Exploring different definitions and characteristics (sense, think, act paradigm).
### Historical Milestones #History #Innovation
Key developments from early automata to modern robotics.
#### Early Concepts & Fiction #Literature #Ideas
Examples: Automata, Golems, Karel Čapek's R.U.R., Asimov's Laws.
#### Key Inventors & Robots #Pioneers #Machines
Examples: George Devol (Unimate), Victor Scheinman (Stanford Arm), Shakey (SRI).
#### Evolution of Capabilities #Progress #Technology
From simple manipulators to autonomous intelligent systems.
### Core Disciplines #Interdisciplinary #Science #Engineering
Mechanical Engineering, Electrical Engineering, Computer Science, AI, etc.

## Robot Anatomy & Components #Hardware #Mechanics #Structure
The physical construction and mechanical parts of robots.
### Mechanical Structure #Frame #Body #Materials
The skeleton and body providing support and form.
#### Links & Joints #Kinematics #Structure
Rigid components (links) connected by joints allowing motion.
##### Types of Joints #Mechanisms #Motion
Revolute (rotational), Prismatic (linear), Spherical, etc.
#### Degrees of Freedom (DoF) #Mobility #Configuration
The number of independent parameters defining the robot's configuration.
### Manipulators #Arms #Industrial #Manipulation
Robot arms designed for interaction and manipulation tasks.
#### Serial Manipulators #Chain #Common
Joints and links connected in a chain.
#### Parallel Manipulators #Structure #Performance
Platforms connected to a base via multiple kinematic chains.
### End-Effectors #Tools #Grippers #Interaction
The device at the end of a manipulator that interacts with the environment.
#### Grippers #Handling #Manipulation
Mechanical, Pneumatic, Magnetic, Adhesive Grippers.
#### Tools #Tasks #Functionality
Welding torches, paint sprayers, drills, surgical instruments.
### Mobile Platforms #Mobility #Locomotion #Base
The base structure enabling robot movement.
#### Wheeled Robots #Ground #Efficiency
Differential drive, Ackerman steering, Omni-directional wheels.
#### Legged Robots #Terrain #Stability #BioInspired
Bipedal, Quadrupedal, Hexapod designs. Gait analysis.
#### Aerial Robots (Drones/UAVs) #Flying #Surveillance #Transport
Fixed-wing, Rotary-wing (quadcopters, helicopters).
#### Underwater Robots (AUVs/ROVs) #Marine #Exploration
Autonomous Underwater Vehicles, Remotely Operated Vehicles.
#### Tracked Robots #RoughTerrain #Stability
Using tracks like a tank for movement.

## Actuation & Power Systems #Motion #Energy #Drive
Systems providing power and motion to the robot.
### Actuators #Motors #Movement #Force
Devices converting energy into physical motion.
#### Electric Motors #Common #Control
DC Motors, Servo Motors, Stepper Motors, Brushless DC Motors.
#### Hydraulic Actuators #Power #Strength #HeavyDuty
Using pressurized fluid for high force applications.
#### Pneumatic Actuators #Air #Speed #Compliance
Using compressed air for fast movements, often in grippers.
#### Novel Actuators #Advanced #Research
Shape Memory Alloys (SMAs), Electroactive Polymers (EAPs), Piezoelectric actuators.
### Power Sources #Energy #Supply #Endurance
Providing the necessary energy for operation.
#### Batteries #Mobile #Storage #Chemistry
Li-ion, LiPo, NiMH, Lead-Acid. Battery Management Systems (BMS).
#### Tethered Power #Stationary #Continuous
Direct connection to mains power.
#### Fuel Cells & Engines #Endurance #Alternative
Hydrogen fuel cells, Internal combustion engines (for larger robots/UAVs).
#### Energy Harvesting #Sustainability #Autonomous
Solar power, vibration harvesting.
### Transmission Systems #Gears #Linkages #PowerTransfer
Mechanisms transmitting power from actuators to joints/wheels.
#### Gearboxes #Torque #Speed #Reduction
Spur gears, Planetary gears, Harmonic drives.
#### Belts and Pulleys #Transmission #Timing
#### Chains and Sprockets #Power #Durability
#### Linkages #Motion #Mechanism

## Sensing & Perception #Sensors #Environment #Data
How robots gather information about themselves and their surroundings.
### Sensor Classification #Types #Function #Modality
Proprioceptive (internal state) vs. Exteroceptive (external environment). Active vs. Passive.
### Proprioceptive Sensors #InternalState #SelfAwareness
Measuring the robot's own state.
#### Encoders #Position #Rotation #Joints
Optical, Magnetic encoders measuring joint angles or wheel rotation.
#### Inertial Measurement Units (IMUs) #Orientation #Motion #Navigation
Accelerometers, Gyroscopes, Magnetometers. Attitude and Heading Reference Systems (AHRS).
#### Force/Torque Sensors #Interaction #ForceControl #Haptics
Measuring forces and torques at joints or the end-effector.
#### Motor Current Sensing #ForceEstimation #Indirect
Estimating forces based on motor current draw.
### Exteroceptive Sensors #Environment #ExternalState #Perception
Measuring properties of the environment.
#### Vision Systems #Cameras #Seeing #Recognition
Monocular, Stereo, Omnidirectional cameras. RGB-D cameras (Kinect, RealSense). Event cameras.
#### Light Detection and Ranging (LiDAR) #Laser #Mapping #Distance
2D and 3D LiDAR for distance measurement and mapping.
#### Sound Navigation and Ranging (SONAR) #Ultrasonic #Distance #Obstacles
Using sound waves for distance measurement, common for obstacle avoidance.
#### Radar #RadioWaves #Detection #Weather
Using radio waves for detection, often in autonomous vehicles.
#### Proximity Sensors #Detection #ShortRange #Safety
Infrared (IR), Ultrasonic, Capacitive sensors for close-range detection.
#### Tactile Sensors #Touch #Contact #Grasping
Measuring contact force distribution ("robot skin").
#### Temperature Sensors #Thermal #Monitoring
#### GPS/GNSS #Location #Outdoor #Navigation
Global Positioning System / Global Navigation Satellite Systems.
### Sensor Fusion #DataIntegration #Accuracy #Robustness
Combining data from multiple sensors for a more accurate and reliable perception.
#### Kalman Filters #Estimation #Tracking #Filtering
#### Particle Filters #NonLinear #Estimation #Localization
#### Bayesian Methods #Probability #Fusion

## Control Systems & Architectures #ControlTheory #Behavior #Execution
Governing the robot's actions based on sensor data and goals.
### Control Fundamentals #Theory #Feedback #Stability
Basic principles of controlling dynamic systems.
#### Open-Loop vs. Closed-Loop Control #Feedback #Accuracy
#### PID Control #Classic #WidelyUsed #Tuning
Proportional-Integral-Derivative controller.
#### State-Space Control #Modern #Modeling #Optimal
Representing system dynamics using state variables.
#### Adaptive Control #ChangingConditions #Robustness
Controllers adjusting parameters based on system changes.
#### Robust Control #Uncertainty #Disturbances
Designing controllers resilient to model inaccuracies and noise.
#### Force Control #Interaction #Compliance #Assembly
Controlling the forces exerted by the robot. Impedance/Admittance control.
#### Visual Servoing #VisionFeedback #Guidance
Using camera data directly in the control loop.
### Robot Control Architectures #Organization #Structure #DecisionMaking
How control tasks are structured and organized.
#### Deliberative Control #Planning #Sequential #SPA
Sense-Plan-Act architecture. Requires world models.
#### Reactive Control #BehaviorBased #FastResponse #Subsumption
Direct mapping from sensors to actuators (e.g., Subsumption Architecture).
#### Hybrid Architectures #Combination #Layered #Flexibility
Combining deliberative planning with reactive execution.
#### Behavior Trees #Modular #TaskSwitching #GameAI
Hierarchical state machines for complex task execution.
### Real-Time Systems #Timing #Constraints #OperatingSystems
Ensuring control loops execute within strict time deadlines (RTOS).

## Kinematics & Dynamics #Motion #Forces #Modeling
Mathematical description of robot motion and the forces involved.
### Kinematics #Geometry #Position #Orientation
Study of motion without considering forces.
#### Forward Kinematics #JointsToPose #Calculation
Calculating the end-effector's position and orientation from joint values. Denavit-Hartenberg (DH) parameters.
#### Inverse Kinematics #PoseToJoints #Planning #Challenge
Calculating required joint values to achieve a desired end-effector position and orientation. Often complex, multiple solutions, singularities.
#### Workspace Analysis #Reachability #Dexterity
Determining the volume of space the end-effector can reach.
#### Jacobian Matrix #Velocity #Singularity #Mapping
Relating joint velocities to end-effector velocities. Used in control and singularity analysis.
### Dynamics #Forces #Torques #Inertia
Study of motion considering forces, masses, and inertia.
#### Forward Dynamics #JointTorquesToMotion #Simulation
Calculating resulting motion (accelerations) from applied joint forces/torques.
#### Inverse Dynamics #MotionToJointTorques #Control #Feedforward
Calculating required joint forces/torques to achieve a desired motion (trajectory).
#### Equations of Motion Formulation #Modeling #Physics
Lagrangian formulation, Newton-Euler formulation.
#### Friction & Compliance Modeling #RealWorld #Effects #Accuracy

## Motion Planning & Navigation #Pathfinding #Autonomy #CollisionAvoidance
Generating paths and trajectories for robots to move safely and efficiently.
### Path Planning #Geometry #Route #Obstacles
Finding a collision-free geometric path from a start to a goal configuration.
#### Configuration Space (C-space) #Abstraction #Mapping
Representing the robot and obstacles in the space of possible configurations.
#### Grid-Based Methods #Search #Discrete
A*, D*, Dijkstra's algorithm on a discretized map.
#### Sampling-Based Methods #Probabilistic #HighDimension #Efficiency
Probabilistic Roadmaps (PRM), Rapidly-exploring Random Trees (RRT, RRT*).
#### Potential Field Methods #ArtificialForces #Guidance #LocalMinima
Guiding the robot using attractive and repulsive forces.
### Trajectory Planning #Time #Velocity #Smoothness
Assigning a time profile (velocity, acceleration) to a geometric path. Polynomial splines.
### Collision Detection & Avoidance #Safety #Interaction #RealTime
Identifying potential collisions and altering the path/trajectory.
### Localization #Positioning #WhereAmI #Mapping
Determining the robot's position and orientation within its environment.
#### Odometry #WheelEncoders #IMU #Drift
Estimating position based on actuator movements (prone to cumulative errors).
#### Landmark-Based Navigation #Features #Recognition #Triangulation
Using recognized features (landmarks) to determine position.
#### Probabilistic Localization #Filtering #Uncertainty #SLAM
Monte Carlo Localization (MCL) / Particle Filters. Kalman Filters (EKF, UKF).
### Mapping #EnvironmentModel #Representation #SLAM
Building a map of the environment.
#### Occupancy Grids #Discrete #Probability #Common
Representing the environment as a grid of cells with occupancy probabilities.
#### Feature Maps #Landmarks #Sparse #SLAM
Representing the environment using distinct features.
#### Topological Maps #Connectivity #Graph #Navigation
Representing the environment as a graph of places and paths.
### Simultaneous Localization and Mapping (SLAM) #ChickenAndEgg #Autonomy #Mapping
Building a map while simultaneously tracking the robot's location within it. EKF SLAM, FastSLAM, GraphSLAM, ORB-SLAM.

## Robot Programming & Software #Code #Development #Simulation
Tools and methods for instructing and simulating robots.
### Programming Languages #Instructions #Logic #Control
C++, Python, Java, MATLAB, LabVIEW. Domain-Specific Languages (DSLs).
### Robot Operating System (ROS) #Middleware #Framework #Standard
A flexible framework for writing robot software. Pub/Sub messaging, services, tools. ROS 1 & ROS 2.
### Programming Paradigms #Approaches #Methods
Offline programming (OLP), Teach pendant programming, Lead-through programming, Behavior-based programming.
### Simulation #VirtualTesting #Development #Safety
Modeling robot behavior and environment interaction in software.
#### Simulators #Tools #Environment #Physics
Gazebo, CoppeliaSim (V-REP), Webots, MuJoCo, Isaac Sim (NVIDIA).
#### Digital Twins #VirtualReplica #Monitoring #Optimization
Virtual representation of a physical robot system.
### Software Architecture #Design #Modularity #Integration
Structuring robot software for reliability and maintainability. Component-based design.

## Artificial Intelligence & Machine Learning in Robotics #Intelligence #Learning #Adaptation
Enabling robots to exhibit intelligent behavior, learn, and adapt.
### AI for Robotics #DecisionMaking #Reasoning #Planning
Integrating AI techniques for higher-level robot control.
#### Knowledge Representation #Logic #Ontologies #Models
Representing information about the world and tasks.
#### Automated Planning & Scheduling #Tasks #Goals #Optimization
Generating sequences of actions to achieve objectives. PDDL.
#### Search Algorithms #ProblemSolving #Exploration
Finding solutions in state spaces.
### Machine Learning for Robotics #DataDriven #Adaptation #PatternRecognition
Using ML to improve robot capabilities.
#### Supervised Learning #Classification #Regression #TrainingData
Learning from labeled examples (e.g., object recognition).
#### Unsupervised Learning #Clustering #DimensionReduction #Patterns
Finding structure in unlabeled data (e.g., terrain clustering).
#### Reinforcement Learning (RL) #TrialAndError #Rewards #Control
Learning optimal behaviors through interaction and feedback (rewards/penalties). Deep RL. Sim-to-Real transfer.
#### Imitation Learning / Learning from Demonstration (LfD) #Teaching #ProgrammingByShowing
Learning tasks by observing human demonstrations. Behavioral Cloning. Inverse Reinforcement Learning (IRL).
### Computer Vision for Robotics #Seeing #Understanding #Interpretation
Applying CV techniques for robot perception.
#### Object Detection & Recognition #Identification #SceneUnderstanding
YOLO, SSD, Faster R-CNN.
#### Semantic Segmentation #PixelLevel #SceneParsing
Assigning labels to every pixel in an image.
#### Pose Estimation #Orientation #Position #Objects #Humans
Determining the 3D position and orientation of objects or people.
#### Visual Odometry & SLAM #VisionBased #Navigation #Mapping

## Types of Robots (Classification) #Categories #Forms #Functions
Different ways robots are categorized based on form, function, or environment.
### Industrial Robots #Manufacturing #Automation #Efficiency
Manipulator arms used in factories (e.g., SCARA, articulated arms). Welding, painting, assembly, pick-and-place.
### Service Robots #Assistance #Interaction #Humans
Robots performing useful tasks for humans or equipment, excluding industrial automation.
#### Professional Service Robots #Work #Tasks #Specialized
Medical robots (da Vinci), logistics (warehouse AGVs/AMRs), agricultural robots, inspection robots, cleaning robots.
#### Personal/Domestic Service Robots #Home #EverydayLife #Assistance
Robot vacuum cleaners (Roomba), lawnmowers, companion robots, educational robots.
### Mobile Robots #Movement #Locomotion #Environment
(See also Mobile Platforms under Anatomy) Robots capable of moving through their environment. Ground (UGVs), Aerial (UAVs), Underwater (AUVs/ROVs), Space (Rovers).
### Humanoid Robots #HumanLike #Bipedal #Interaction #Research
Robots with a body shape resembling humans (e.g., ASIMO, Atlas, Pepper). Research platforms for locomotion, HRI.
### Collaborative Robots (Cobots) #Safety #HumanWorker #Interaction
Robots designed to work safely alongside humans in a shared workspace.
### Teleoperated Robots #RemoteControl #HazardousEnvironments #Exploration
Robots controlled remotely by a human operator (e.g., bomb disposal, space station arms, underwater ROVs). Telerobotics.
### Autonomous Robots #SelfGoverning #DecisionMaking #AI
Robots capable of operating independently without direct human control.
### Soft Robotics #Compliance #BioInspired #Materials
Robots made from flexible, compliant materials. Safer interaction, adaptable grasping.
### Swarm Robotics #Collective #Decentralized #Cooperation #BioInspired
Large numbers of simple robots coordinating to achieve complex tasks. Emergent behavior.
### Micro and Nanorobotics #Miniature #Scale #Medical #Manufacturing
Robots operating at microscopic or nanoscopic scales. Potential applications in medicine and manufacturing.

## Applications of Robotics #UseCases #Industries #Impact
Where and how robots are used across various sectors.
### Manufacturing #Assembly #Welding #Painting #Logistics
Automation of production lines, material handling.
### Healthcare & Medicine #Surgery #Rehabilitation #Assistance #Pharmacy
Surgical robots, exoskeletons for rehabilitation, hospital logistics, drug delivery.
### Logistics & Warehousing #Sorting #Transport #Fulfilment #Delivery
Autonomous Mobile Robots (AMRs), Automated Guided Vehicles (AGVs), drone delivery.
### Agriculture (AgriTech) #Planting #Harvesting #Monitoring #PrecisionAg
Automated tractors, robotic harvesting, crop monitoring drones, precision spraying.
### Aerospace & Space Exploration #Rovers #Satellites #Maintenance #ISS
Planetary rovers (Mars), satellite servicing, robotic arms on spacecraft (Canadarm).
### Construction #Automation #Building #Inspection #Safety
Bricklaying robots, autonomous excavators, drone-based site inspection.
### Underwater Exploration & Industry #Inspection #Maintenance #ResourceExtraction #Oceanography
ROV/AUV use in offshore energy, marine research, pipeline inspection.
### Military & Defense #Surveillance #BombDisposal #Logistics #Drones #LethalAutonomy
Unmanned aerial vehicles (UAVs), ground reconnaissance robots, EOD robots. Raises ethical concerns (LAWS).
### Search & Rescue (SAR) #DisasterResponse #Detection #Access
Robots for locating survivors in dangerous environments (collapsed buildings, hazardous zones).
### Domestic & Household #Cleaning #LawnCare #Entertainment #Companionship
Vacuum cleaners, lawnmowers, educational toys, elder care robots.
### Entertainment & Education #Toys #ThemeParks #Learning #STEM
Animatronics, robot kits for learning programming and engineering.
### Security & Surveillance #Monitoring #Patrolling #Inspection
Autonomous security robots, drone surveillance.

## Human-Robot Interaction (HRI) #Interface #Collaboration #Social #Usability
The study of interactions between humans and robots.
### Interaction Modalities #Communication #Control #Interface
Speech recognition, gesture control, touchscreens, haptic feedback, brain-computer interfaces (BCIs).
### Safety in HRI #Cobots #Standards #RiskAssessment
Ensuring safe operation when humans and robots share space or tasks. ISO standards. Collision avoidance.
### Usability & User Experience (UX) #EaseOfUse #Acceptance #Design
Designing robots that are intuitive and effective for human users.
### Social Robotics #Interaction #Companionship #Ethics #Anthropomorphism
Robots designed for social interaction with humans. Trust, empathy, social cues.
### Teleoperation & Telepresence #RemoteControl #Immersion #VRAR
Controlling robots remotely, potentially with immersive feedback.
### Shared Autonomy #Collaboration #Assistance #AdjustableControl
Humans and robots collaborating on tasks, with varying levels of autonomy.
### Affective Computing in HRI #Emotions #Recognition #Response
Robots recognizing and responding to human emotional states.

## Robot Ethics & Societal Impact #Ethics #Society #Responsibility #Future
Considering the ethical implications and broader effects of robotics on society.
### Ethical Principles #Morality #Guidelines #Asimov
Frameworks for guiding robot design and use (e.g., Asimov's Laws revisited, EPSRC principles). Responsibility, accountability.
### Job Displacement & Economic Impact #Automation #Employment #SkillsGap
Concerns about robots replacing human workers and the need for workforce adaptation.
### Safety & Security #Hacking #Malfunction #Misuse
Risks associated with robot failures, malicious hacking, or unintended consequences.
### Bias in Robotics & AI #Fairness #Algorithms #Data
Potential for biases in algorithms or training data leading to unfair or discriminatory robot behavior.
### Privacy Concerns #Surveillance #DataCollection #Monitoring
Issues related to robots collecting data in private or public spaces.
### Lethal Autonomous Weapons Systems (LAWS) #Military #Autonomy #Control #BanLAWS
Ethical debates surrounding autonomous weapons capable of making life/death decisions.
### Social & Psychological Impact #Isolation #Anthropomorphism #Relationships
Effects of robots on human social structures, relationships, and psychology.
### Legal & Regulatory Frameworks #Laws #Policy #Accountability
Developing laws and regulations to govern the development and deployment of robots. Liability in case of accidents.

## Advanced Robotics & Future Trends #Research #Innovation #CuttingEdge #FutureTech
Current research frontiers and potential future directions in robotics.
### Soft Robotics #Compliance #Adaptability #BioMimicry
Development of robots using flexible materials. (See also Types)
### Bio-inspired & Biomimetic Robots #Nature #LearningFromBiology #Locomotion
Robots designed based on principles observed in biological systems (e.g., robotic fish, insect-like robots).
### Swarm Robotics & Collective Behavior #Coordination #DistributedSystems #Emergence
(See also Types) Research into controlling large groups of robots.
### Cloud Robotics #CloudComputing #BigData #SharedKnowledge
Connecting robots to cloud resources for enhanced computation, data storage, and shared learning.
### AI & Cognitive Robotics #Intelligence #Reasoning #Learning #Consciousness
Pushing the boundaries of robot intelligence, decision-making, and potentially consciousness. Embodied AI.
### Neuromorphic Computing for Robotics #BrainInspired #Efficiency #SensingProcessing
Using hardware that mimics the structure and function of the brain for robotic control and perception.
### Human Augmentation & Exoskeletons #Enhancement #Rehabilitation #Strength
Wearable robotic devices to enhance human capabilities or assist with movement.
### Self-healing & Self-assembling Robots #Morphology #Adaptation #Resilience
Robots capable of repairing themselves or changing their form. Modular robotics.
### Quantum Robotics #QuantumComputing #Sensing #Potential
Exploring potential applications of quantum phenomena in robotics (speculative).
### Sustainable Robotics #Environment #Lifecycle #Materials
Designing robots and robotic processes with environmental impact in mind.

# High Performance Computing #HPC #Supercomputing #Overview
An introduction to the field focused on aggregating computing power to deliver much higher performance than one could get out of a typical desktop computer or workstation.

## Introduction & Fundamentals #Basics #Concepts #History
Core ideas, history, and motivations behind HPC.
### What is HPC? #Definition #Scope
Defining High Performance Computing and its goals.
### History of Supercomputing #Evolution #Milestones
Tracing the development from early mainframes to modern supercomputers.
### Motivation for HPC #Need #Drivers
Why massive computational power is required (e.g., complex simulations, big data).
### Key Metrics #Performance #Measurement
Measuring performance: FLOPS (Floating Point Operations Per Second), benchmarks (LINPACK, HPL, HPCG), speedup, efficiency.
### Scaling Concepts #Parallelism #Efficiency
Understanding how performance changes with increased resources.
#### Strong Scaling #ProblemSize #Fixed
Measuring time reduction for a fixed problem size with more processors.
#### Weak Scaling #ProblemSize #Proportional
Measuring time stability for a problem size that grows proportionally with more processors.
#### Amdahl's Law #Limits #SerialFraction
Theoretical speedup limitation based on the serial portion of a program.
#### Gustafson's Law #Limits #ParallelFraction
Alternative perspective on speedup, relevant for weak scaling.

## Hardware Architectures #Hardware #Systems #Infrastructure
The physical components and system designs used in HPC.
### Processing Units #CPU #GPU #Accelerators
Core computational elements.
#### Multicore CPUs #Processor #Standard
Central Processing Units with multiple cores (e.g., Intel Xeon, AMD EPYC).
#### Manycore Processors #MIC #XeonPhi
Processors with a very high number of simpler cores (e.g., historical Intel Xeon Phi).
#### GPUs (Graphics Processing Units) #Accelerator #GPGPU
Using GPUs for general-purpose computation (e.g., NVIDIA Tesla/Ampere/Hopper, AMD Instinct).
#### FPGAs (Field-Programmable Gate Arrays) #Accelerator #Reconfigurable
Hardware that can be reprogrammed for specific tasks.
#### Specialized ASICs/Accelerators #AI #TPU
Application-Specific Integrated Circuits designed for particular workloads (e.g., Google TPU).
### Memory Systems #Memory #Hierarchy #Storage
How data is stored and accessed.
#### Cache Hierarchy #L1 #L2 #L3 #Speed
Levels of small, fast memory close to the CPU.
#### Main Memory (RAM) #DDR #HBM
Random Access Memory technologies (DDR, High Bandwidth Memory).
#### Memory Bandwidth & Latency #Performance #Bottleneck
Critical factors affecting performance.
#### Non-Uniform Memory Access (NUMA) #Architecture #Optimization
Memory access time depends on memory location relative to a processor.
### Node Architecture #Server #ComputeNode
The structure of individual compute units within a larger system.
#### Single/Multi-Socket Nodes #CPU #Configuration
Nodes with one or more CPU sockets.
#### Nodes with Accelerators #Hybrid #GPUIntegration
Nodes incorporating GPUs or other accelerators.
### System Topologies #Cluster #Supercomputer #Design
How multiple nodes are interconnected to form a large system.
#### Clusters #Commodity #Distributed
Collections of interconnected commodity computers.
#### Constellations/MPPs #MassivelyParallel #Custom
Massively Parallel Processing systems, often with custom interconnects.
#### Supercomputers #LeadershipClass #Scale
The largest and fastest computing systems.

## System Software & Middleware #Software #OS #Management
Software layers managing hardware resources and providing services.
### Operating Systems #OS #Linux #Kernel
Base software managing hardware (Linux variants dominate HPC: RHEL, CentOS, SLES, Ubuntu).
### Cluster Management #Provisioning #Monitoring
Software for deploying, managing, and monitoring the cluster nodes (e.g., xCAT, Bright Cluster Manager).
### Resource Managers & Job Schedulers #Workload #Queueing
Allocating resources and scheduling user jobs.
#### SLURM (Simple Linux Utility for Resource Management) #Scheduler #OpenSource
A widely used open-source workload manager.
#### PBS (Portable Batch System) Family #Scheduler #Commercial #OpenSource
Includes OpenPBS, PBS Professional, TORQUE.
#### LSF (Load Sharing Facility) #Scheduler #Commercial
Commercial workload management system.
### Parallel File Systems #Storage #IO #Distributed
File systems designed for high-bandwidth, concurrent access from many nodes.
#### Lustre #FileSystem #OpenSource #Scalable
Popular open-source parallel file system.
#### GPFS / IBM Spectrum Scale #FileSystem #Commercial #Scalable
High-performance commercial parallel file system.
#### BeeGFS #FileSystem #OpenSource #Scalable
Open-source parallel file system, formerly FhGFS.
#### Ceph #DistributedStorage #Object #Block #File
Unified distributed storage system.
### Monitoring & Management Tools #Health #Performance #Admin
Tools for tracking system health, performance, and administration (e.g., Ganglia, Nagios, Prometheus, Grafana).

## Programming Models & Languages #Programming #Parallelism #Development
Paradigms and tools for writing parallel applications.
### Distributed Memory Programming #MPI #MessagePassing
Model where processes have private memory and communicate explicitly.
#### MPI (Message Passing Interface) #Standard #Library
The de facto standard for distributed memory programming (Point-to-point, Collectives).
### Shared Memory Programming #Threads #OpenMP
Model where threads share a common address space.
#### OpenMP (Open Multi-Processing) #Directives #Compiler #Threads
Compiler directives and library for shared-memory parallelism.
#### Pthreads (POSIX Threads) #Library #LowLevel #Threads
Low-level threading library.
### Hybrid Programming #MPI #OpenMP #Combined
Combining distributed and shared memory models (e.g., MPI + OpenMP).
### Partitioned Global Address Space (PGAS) #MemoryModel #UPC #Fortran
Model providing a global address space conceptually, but memory may be physically distributed.
#### UPC (Unified Parallel C) #Language #PGAS
An extension of C for PGAS programming.
#### Coarray Fortran #Language #PGAS #Fortran
Fortran standard features for PGAS programming.
### Accelerator Programming #GPU #CUDA #OpenCL #OpenACC
Programming models for GPUs and other accelerators.
#### CUDA (Compute Unified Device Architecture) #NVIDIA #GPU
NVIDIA's proprietary platform for GPU computing.
#### OpenCL (Open Computing Language) #Standard #Heterogeneous
Open standard for parallel programming across heterogeneous platforms.
#### OpenACC #Directives #Compiler #Accelerator
Directive-based programming model for accelerators, similar to OpenMP.
#### SYCL #Standard #CPP #Heterogeneous
Khronos Group standard for C++-based heterogeneous programming.
### Task-Based Programming Models #Tasks #Runtime #Dependencies
Models focusing on decomposing work into tasks with dependencies (e.g., OpenMP Tasks, Legion, PaRSEC).
### High-Level Languages & Frameworks #Python #Julia #DSL
Using higher-level languages or Domain Specific Languages for HPC.
#### Parallel Python #Dask #Ray #MPI4Py
Libraries enabling parallelism in Python.
#### Julia #Language #HighLevel #Performance
A high-level language designed for technical computing.
#### Domain-Specific Languages (DSLs) #Abstraction #Specialized
Languages tailored for specific scientific or engineering domains.
### Core Languages #Fortran #C #CPP
Traditional compiled languages widely used in HPC.

## Parallel Algorithms & Data Structures #Algorithms #DataStructures #Parallelism
Designing algorithms and data structures for parallel execution.
### Design Principles #Decomposition #Communication #LoadBalancing
Fundamental strategies for creating parallel algorithms.
#### Domain Decomposition #DataParallelism #Spatial
Dividing the problem data among processors.
#### Functional Decomposition #TaskParallelism #Pipeline
Assigning different functional tasks to different processors.
#### Communication Patterns #PointToPoint #Collective #Synchronization
Common ways processes exchange data (e.g., broadcast, reduce, scatter, gather).
#### Load Balancing #Efficiency #WorkDistribution
Distributing work evenly among processors.
### Common Parallel Algorithms #Sorting #Searching #LinearAlgebra
Parallel implementations of fundamental algorithms.
#### Parallel Sorting #Samplesort #Radixsort
Algorithms for sorting data distributed across processors.
#### Parallel Search #Optimization #Exploration
Techniques for searching large spaces in parallel.
#### Dense Linear Algebra #BLAS #LAPACK #ScaLAPACK
Matrix operations (matrix-vector, matrix-matrix multiply), solving linear systems.
#### Sparse Linear Algebra #IterativeSolvers #Preconditioners
Operations on matrices with mostly zero entries (e.g., Conjugate Gradient, GMRES).
#### Fast Fourier Transforms (FFTs) #SignalProcessing #SpectralMethods
Parallel algorithms for computing discrete Fourier transforms (e.g., FFTW).
#### Graph Algorithms #Traversal #ShortestPath #CommunityDetection
Algorithms operating on graph data structures in parallel.
#### N-Body Simulations #Physics #Astrophysics #MolecularDynamics
Simulating interactions between many particles.
### Parallel Data Structures #Distributed #Concurrent
Data structures suitable for parallel environments (e.g., distributed arrays, concurrent hash maps, parallel trees).

## Performance Analysis & Optimization #Performance #Tuning #Profiling
Measuring, understanding, and improving application performance.
### Profiling #Measurement #Bottleneck #Hotspot
Identifying where a program spends most of its time.
#### Sampling Profilers #Statistical #LowOverhead (e.g., gprof, Linux perf)
Periodically sample the program counter.
#### Instrumentation Profilers #Precise #HigherOverhead (e.g., Intel VTune Profiler, Score-P)
Insert measurement code into the application.
### Tracing #Events #Timeline #DetailedAnalysis
Recording time-stamped events during execution (e.g., MPI calls, function entries/exits).
#### Trace Collection Tools #Scalasca #VampirTrace #Score-P
Software for gathering trace data.
#### Trace Visualization Tools #Vampir #Paraver
Tools for analyzing and visualizing trace files.
### Performance Metrics #Speedup #Efficiency #Scalability #FLOPS
Quantifying performance and scalability.
### Bottleneck Identification #CPU #Memory #IO #Network
Finding the limiting factor in performance.
### Code Optimization Techniques #Compiler #Manual #Algorithmic
Methods to improve code efficiency.
#### Compiler Optimizations #Flags #AutoVectorization
Using compiler options to generate better code (-O2, -O3, architecture-specific flags).
#### Vectorization (SIMD) #SSE #AVX #NEON
Using Single Instruction, Multiple Data instructions for data parallelism.
#### Loop Optimizations #Unrolling #Fusion #Blocking
Restructuring loops for better cache usage and instruction scheduling.
#### Memory Layout & Access Patterns #Cache #NUMA
Arranging data structures for efficient memory access (e.g., Structure of Arrays vs. Array of Structures).
#### Communication Optimization #LatencyHiding #Overlapping #Collectives
Reducing the cost of message passing (reducing frequency, message size, using non-blocking calls, optimized collectives).
#### I/O Optimization #ParallelIO #Buffering
Improving the performance of reading/writing data.
#### Algorithmic Optimization #Complexity #MethodChoice
Choosing or modifying algorithms for better parallel performance.
### Load Balancing Strategies #Static #Dynamic #WorkStealing
Techniques to ensure work is distributed evenly during execution.

## Networking & Interconnects #Network #Communication #Fabric
The technology connecting nodes within an HPC system.
### Network Topologies #Connectivity #Design #Routing
The pattern of network connections.
#### Fat Tree #Bandwidth #Scalable
Hierarchical topology providing high bisection bandwidth.
#### Torus / Mesh #Latency #Locality
Grid-like connections, often 2D or 3D (up to 6D).
#### Dragonfly #Scalable #CostEffective
Hybrid topology aiming for high bandwidth and scalability.
#### Hypercube #Historical #HighDimension
Early topology with good connectivity properties.
### High-Speed Interconnect Technologies #Hardware #LowLatency #HighBandwidth
Specific network hardware used in HPC.
#### InfiniBand (IB) #RDMA #LowLatency
Popular high-bandwidth, low-latency interconnect with Remote Direct Memory Access (RDMA).
#### High-Speed Ethernet #RoCE #iWARP #TCP
Ethernet variants optimized for HPC (e.g., 100GbE, 200GbE, 400GbE+), potentially using RDMA over Converged Ethernet (RoCE).
#### Proprietary Interconnects #Custom #Performance (e.g., Cray Slingshot, Fujitsu Tofu)
Vendor-specific network technologies.
### Communication Protocols #Software #Layers #Overhead
Software protocols used over the physical network (MPI runs on top of these).
### Latency & Bandwidth #Performance #Characteristics
Key network performance characteristics impacting application performance.
### Network Interface Cards (NICs) #Hardware #HostInterface
Adapters connecting nodes to the network fabric.

## Storage Systems & I/O #Storage #FileSystem #DataManagement
Managing persistent data storage in HPC environments.
### Parallel File Systems #Lustre #GPFS #BeeGFS
(See also System Software section) Characteristics and usage.
### Object Storage #S3 #Swift #Scalable
Systems managing data as objects rather than files in a hierarchy (e.g., Ceph, MinIO).
### Burst Buffers #NVMe #FastTier #IOAcceleration
Fast, intermediate storage layer (often NVMe-based) between compute nodes and the parallel file system to absorb I/O bursts.
### Parallel I/O Libraries #API #HighLevel #Abstraction
Libraries simplifying parallel data access.
#### MPI-IO #Standard #LowLevel
Part of the MPI standard for parallel file I/O.
#### HDF5 (Hierarchical Data Format) #Library #Format #SelfDescribing
Library and file format for storing large, complex datasets.
#### NetCDF (Network Common Data Form) #Library #Format #ClimateScience
Library and file format widely used in atmospheric and ocean sciences.
#### ADIOS #Library #Framework #HighPerformance
Adaptable IO System for high-performance data movement.
### I/O Bottlenecks & Optimization #Performance #Tuning #Strategies
Identifying and mitigating limitations in data read/write performance.
#### Data Staging #Preloading #Postprocessing
Moving data closer to compute or processing it offline.
#### Collective I/O #MPIIO #Optimization
Coordinating I/O operations across multiple processes.
#### Data Compression #StorageEfficiency #BandwidthReduction
Reducing data size to save storage and transfer time.

## Applications & Domains #UseCases #Science #Engineering #Industry
Areas where HPC is extensively used.
### Scientific Simulation #Modeling #Research
Using computation to model physical, chemical, or biological systems.
#### Computational Fluid Dynamics (CFD) #Aerospace #Weather
Simulating fluid flows.
#### Molecular Dynamics (MD) #Chemistry #Biology #Materials
Simulating interactions of atoms and molecules.
#### Climate & Weather Modeling #EarthScience #Prediction
Simulating Earth's climate system and weather patterns.
#### Astrophysics & Cosmology #Universe #Simulation
Simulating celestial objects and the evolution of the universe.
#### Plasma Physics #Fusion #Energy
Simulating the behavior of plasmas.
#### Computational Chemistry / Quantum Mechanics #Materials #DrugDesign
Solving equations of quantum mechanics for molecules.
#### Solid Mechanics / Finite Element Analysis (FEA) #Engineering #Structures
Simulating stress and strain in solid materials.
### Data Analytics & Big Data #BigData #Analysis #MachineLearning
Processing and analyzing massive datasets.
#### Large-Scale Graph Analytics #SocialNetworks #Bioinformatics
Analyzing relationships and structures in large graphs.
#### High-Performance Data Analytics (HPDA) #Integration #Workflow
Combining HPC simulation with large-scale data analysis.
### Artificial Intelligence & Machine Learning #AI #ML #DeepLearning
Training complex AI models on large datasets.
#### Distributed Training #ModelParallelism #DataParallelism
Training models across multiple nodes and accelerators.
#### Large Model Training #LLM #FoundationModels
Training models with billions or trillions of parameters.
#### AI for Science (AI4Science) #Discovery #Acceleration
Using AI/ML techniques to accelerate scientific discovery.
### Engineering & Design #CAD #CAE #Manufacturing
Product design, simulation, and optimization.
#### Crash Simulation #Automotive #Safety
Simulating vehicle collisions.
#### Reservoir Simulation #OilAndGas #Energy
Modeling subsurface fluid flow for resource extraction.
### Financial Modeling #Quant #RiskAnalysis #Trading
Pricing complex derivatives, risk management simulations.
### Bioinformatics & Genomics #LifeScience #Sequencing #DrugDiscovery
Analyzing biological data, especially DNA/RNA sequences.

## Workflow Management & Scheduling #Automation #Jobs #Orchestration
Tools and techniques for managing complex computational campaigns.
### Batch Scheduling Systems #SLURM #PBS #LSF
(See also System Software section) Role in managing job queues and policies.
### Workflow Engines #Automation #Pipeline #Dependencies
Tools for defining and executing multi-step computational tasks with dependencies.
#### Pegasus #ScientificWorkflow #DAG
Workflow management system focusing on scientific applications.
#### Snakemake / Nextflow #Bioinformatics #Pipeline #Reproducibility
Popular workflow tools, particularly in bioinformatics.
#### CWL (Common Workflow Language) #Standard #Portability
A specification for describing analysis workflows.
### Job Submission & Management #Scripts #Commands #Monitoring
User interaction with the scheduler (e.g., `sbatch`, `qsub`, `bsub`).
### Resource Allocation Policies #Fairshare #Priority #QoS
How schedulers decide which jobs run when.
### Checkpointing & Fault Tolerance #Resilience #Recovery
Saving application state to allow recovery from hardware failures.
#### Application-Level Checkpointing #Explicit #CodeIntegration
Saving state from within the application code.
#### System-Level Checkpointing #Transparent #Runtime (e.g., DMTCP, CRIU)
Saving process state externally without modifying the application.

## Emerging Trends & Future Directions #Future #Exascale #AI #Quantum
Developments shaping the future of HPC.
### Exascale Computing #Performance #Scale #Challenges
Systems capable of achieving ExaFLOPS (10^18 FLOPS) performance.
### Quantum Computing #NewParadigm #PotentialIntegration
Exploring potential roles for quantum computers alongside classical HPC.
### Neuromorphic Computing #BrainInspired #LowPower
Computing architectures inspired by the biological brain.
### AI for HPC #Optimization #Simulation #Surrogates
Using AI/ML to improve HPC simulations, optimize performance, or create surrogate models.
### HPC in the Cloud #CloudComputing #Elasticity #Accessibility
Running HPC workloads on public or private cloud platforms (AWS, Azure, GCP).
### Heterogeneous Computing #CPU #GPU #FPGA #Integration
Increasing complexity and diversity of processing units within systems.
### Energy Efficiency #GreenComputing #Power #Cooling
Major focus on reducing power consumption and improving PUE (Power Usage Effectiveness).
### Convergence of HPC, AI, and Big Data #Integration #Workflow #HPDA
Increasingly intertwined nature of simulation, data analysis, and machine learning.
### Advanced Cooling Technologies #LiquidCooling #Immersion
Techniques required to cool increasingly dense hardware.
### Software Sustainability & Productivity #Development #Maintenance #Reproducibility
Challenges in developing, maintaining, and ensuring the reproducibility of complex HPC software.

## HPC Ecosystem & Infrastructure #Community #Centers #Access
The broader context including centers, providers, and support structures.
### Supercomputing Centers #Facilities #NationalLabs #Universities
Major institutions hosting large-scale HPC systems (e.g., NERSC, OLCF, ALCF, Pawsey, JSC, RIKEN).
### Cloud HPC Platforms #AWS #Azure #GCP #Oracle
Commercial cloud providers offering HPC instances and services.
### Containerization in HPC #Docker #Singularity #Apptainer #Reproducibility
Using containers for application deployment and environment management.
### Software Management & Deployment #Spack #EasyBuild #Modules
Tools for managing complex software stacks on HPC systems (Environment Modules, Spack, EasyBuild).
### Security Considerations #DataAccess #Authentication #Authorization
Protecting sensitive data and resources in shared HPC environments.
### Collaboration & Access Models #UserPrograms #Allocation #Training
How researchers gain access to HPC resources and collaborate.
### Benchmarking & Performance Portability #Comparison #Standards #Kokkos #RAJA
Efforts to benchmark systems and write code that performs well across different architectures.

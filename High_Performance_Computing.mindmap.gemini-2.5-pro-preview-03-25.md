# High Performance Computing #Overview #Supercomputing #Computation
An introduction to the field focused on aggregating computing power to deliver much higher performance than one could get out of a typical desktop computer or workstation.

## Fundamentals of HPC #Basics #Concepts #Introduction
Core ideas and motivations behind high-performance computing.
### What is HPC? #Definition #Scope
Defining HPC, its goals (speed, scale), and differentiation from general-purpose computing.
### Why HPC? #Motivation #Need
Discussing the drivers: complex problems, large datasets, scientific discovery, competitive advantage.
### History and Evolution #History #Timeline
Milestones in supercomputing, Moore's Law, and the shift towards parallelism.
### Key Terminology #Glossary #Jargon
FLOPS, cores, nodes, clusters, interconnect, latency, bandwidth, scaling, throughput.

## HPC Hardware Architectures #Hardware #Architecture #Components
The physical building blocks of HPC systems.
### Compute Nodes #Nodes #Servers
Types: Login nodes, compute nodes, service nodes, accelerator nodes.
### Processors (CPUs) #CPU #Processors
Architecture: x86_64, ARM, POWER. Features: Cores, Clock Speed, Cache Hierarchy, SMT/Hyper-Threading, Instruction Sets (AVX).
### Memory Systems #Memory #RAM
Hierarchy: Registers, L1/L2/L3 Cache, Main Memory (DRAM), NUMA (Non-Uniform Memory Access).
### Accelerators and Coprocessors #Accelerators #GPU #FPGA
GPUs (NVIDIA, AMD), FPGAs, TPUs, specialized AI chips. Role in accelerating specific workloads.
### System Architecture Models #Models #Design
Clusters, Symmetric Multiprocessing (SMP), Massively Parallel Processing (MPP), Hybrid systems.
### Heterogeneous Computing #Heterogeneity #Hybrid
Systems combining different types of processing units (CPU + GPU).

## Parallel Computing Concepts #Parallelism #Theory #Models
Theoretical underpinnings of performing computations in parallel.
### Types of Parallelism #DataParallelism #TaskParallelism
Data Parallelism, Task Parallelism, Pipeline Parallelism.
### Flynn's Taxonomy #Classification #SISD #SIMD #MISD #MIMD
SISD, SIMD, MISD, MIMD classifications of computer architectures.
### Parallel Performance Metrics #Metrics #Performance
Speedup, Efficiency, Scalability (Strong and Weak).
### Parallel Computing Laws #Laws #Limits
Amdahl's Law (limits of speedup), Gustafson's Law (scaled speedup).
### Parallel Computation Models #AbstractModels #PRAM
Conceptual models like PRAM (Parallel Random Access Machine).

## HPC Networking and Interconnects #Networking #Interconnects #Communication
How components within an HPC system communicate.
### Role of the Interconnect #Importance #Bottleneck
Critical for scaling; often a performance bottleneck.
### Interconnect Topologies #Topology #NetworkDesign
Bus, Ring, Mesh, Torus, Hypercube, Fat Tree, Dragonfly. Pros and cons.
### Interconnect Technologies #Technologies #Fabrics
InfiniBand (IB), Ethernet (HPC variants like RoCE), Omni-Path Architecture (OPA), Slingshot.
### Network Protocols and APIs #Protocols #RDMA
Low-level communication protocols (Verbs for IB), RDMA (Remote Direct Memory Access). MPI's reliance on underlying network capabilities.
### Latency and Bandwidth #Performance #NetworkMetrics
Key performance characteristics of interconnects.

## HPC Storage and I/O #Storage #IO #DataManagement
Managing data access and persistence in large-scale systems.
### Storage Hierarchy #Tiers #DataMovement
Cache, Burst Buffers, Parallel File Systems, Object Storage, Archival Storage (Tape).
### Parallel File Systems (PFS) #PFS #FileSystems
Architecture and features: Lustre, GPFS/Spectrum Scale, BeeGFS, CephFS. Striping, metadata servers.
### I/O Challenges #Bottlenecks #Patterns
The I/O bottleneck problem, common I/O patterns (checkpointing, analysis output).
### I/O Libraries and Middleware #Libraries #APIs
MPI I/O, HDF5, NetCDF, ADIOS. Purpose: Abstraction, Performance Optimization.
### Object Storage #ObjectStorage #S3
Use in HPC for large, unstructured datasets. Interfaces like S3.
### Data Management Strategies #DataLifecycle #Policies
Data placement, migration, replication, archival, and deletion policies.

## HPC Software Stack #Software #SystemSoftware #Tools
The layers of software enabling HPC hardware utilization.
### Operating Systems #OS #Linux
Predominance of Linux (RHEL, CentOS, SLES, Ubuntu). Lightweight kernels, specific optimizations.
### Compilers #Compilers #Optimization
C, C++, Fortran compilers (GNU, Intel, NVIDIA HPC SDK, Cray/HPE, AMD). Optimization flags, auto-vectorization, auto-parallelization.
### Math Libraries #Libraries #Math #Performance
Optimized libraries: BLAS, LAPACK, ScaLAPACK, FFTW, Intel MKL, AMD AOCL, cuBLAS, cuFFT.
### Runtime Systems #Runtime #Execution
Support for parallel execution models (MPI runtime, OpenMP runtime). Process/thread management.
### Debuggers #Debugging #Tools
Parallel debuggers: GDB extensions, TotalView, DDT (Arm Forge), STAT. Challenges of debugging parallel code.
### Performance Analysis Tools #Profiling #Analysis
Profilers and tracers: gprof, Valgrind, Scalasca, Score-P, VTune Profiler, Nsight Systems/Compute, TAU. Identifying bottlenecks.

## Parallel Programming Models & Languages #Programming #Models #Languages #APIs
Frameworks and languages used to write parallel applications.
### Message Passing Interface (MPI) #MPI #MessagePassing
De facto standard for distributed memory programming. Point-to-point, collective operations.
### Shared Memory Programming (OpenMP) #OpenMP #Threading #SharedMemory
Directive-based programming for shared memory systems. Thread creation, synchronization, work sharing.
### Hybrid Programming (MPI + OpenMP) #Hybrid #MPI_OpenMP
Combining MPI across nodes with OpenMP within nodes. Common in modern HPC.
### Partitioned Global Address Space (PGAS) #PGAS #GASNet
Models like UPC, Coarray Fortran. Global address space abstraction over distributed memory.
### Accelerator Programming #GPUProgramming #CUDA #OpenCL #SYCL #OpenACC
CUDA (NVIDIA specific), OpenCL (cross-platform), SYCL (C++ based), OpenACC (directive-based). Kernels, memory management.
### Parallel Languages and Libraries #Languages #Libraries
Chapel, X10, Dask, Ray (Python libraries for parallelism).

## Parallel Algorithms #Algorithms #ParallelAlgorithms #Design
Designing algorithms suitable for parallel execution.
### Design Principles #AlgorithmDesign #Strategies
Decomposition (Task/Domain), Communication patterns, Load balancing, Synchronization minimization.
### Common Parallel Patterns #Patterns #Techniques
MapReduce, Scatter/Gather, Stencil computations, Pipeline.
### Parallel Sorting and Searching #Sorting #Searching
Algorithms like Bitonic Sort, Sample Sort, Parallel Search techniques.
### Linear Algebra Operations #LinearAlgebra #Matrix
Parallel matrix multiplication, solvers for dense and sparse systems (LU, QR, CG).
### Graph Algorithms #GraphAlgorithms #Traversal
Parallel Breadth-First Search (BFS), Shortest Path, Community Detection.
### N-Body Simulations #Simulation #Physics
Direct methods, Barnes-Hut algorithm, Fast Multipole Method (FMM).
### Monte Carlo Methods #MonteCarlo #Statistics
Parallel random number generation, parallel simulation execution.

## Performance Analysis and Optimization #Performance #Optimization #Tuning
Measuring, understanding, and improving application performance on HPC systems.
### Performance Metrics Revisited #Metrics #Measurement
FLOPS, Time-to-solution, Memory Bandwidth Utilization, Network Utilization, I/O Rates, Energy Efficiency.
### Profiling Techniques #Profiling #Instrumentation
Event-based sampling, tracing, instrumentation. Identifying hotspots and bottlenecks.
### Scaling Analysis #Scaling #Efficiency
Strong scaling vs. Weak scaling analysis. Identifying scalability limiters.
### Optimization Strategies #OptimizationTechniques #Tuning
Code refactoring, Algorithmic changes, Compiler optimization flags, Library usage, I/O optimization, Communication optimization, Load balancing.
### Performance Modeling and Prediction #Modeling #Prediction
Analytical models, Simulation, Benchmarking for performance estimation.
### Debugging Parallel Applications #Debugging #Correctness
Challenges: Race conditions, Deadlocks, Non-determinism. Tools and techniques.

## HPC System Management and Operations #Management #Operations #Infrastructure
Running and maintaining HPC clusters.
### Job Scheduling Systems #Scheduling #BatchSystems
Slurm, PBS Pro/OpenPBS, LSF, Grid Engine. Policies, queues, priorities, backfilling.
### Resource Management #Resources #Allocation
Allocating compute nodes, memory, storage quotas, licenses.
### Cluster Monitoring #Monitoring #HealthChecks
System health, resource utilization, temperature, power consumption. Tools like Ganglia, Nagios, Zabbix, Prometheus/Grafana.
### User Management and Environment #Users #EnvironmentModules
Account management, environment modules (Lmod, Tcl Modules) for managing software versions.
### Security in HPC #Security #AccessControl
Authentication, authorization, network security, data security.
### Accounting and Reporting #Accounting #UsageTracking
Tracking resource usage for projects or users.

## HPC Applications and Domains #Applications #Science #Industry #UseCases
Areas where HPC is heavily utilized.
### Scientific Simulation #Simulation #Modeling
Climate and Weather Modeling, Computational Fluid Dynamics (CFD), Astrophysics, Molecular Dynamics, Material Science, Computational Chemistry, Plasma Physics.
### Data Analysis and Big Data #BigData #Analytics
Genomics and Bioinformatics, Financial Modeling, Oil and Gas Exploration, Large-scale data processing.
### Artificial Intelligence and Machine Learning #AI #ML #DeepLearning
Training large AI/ML models, Deep Learning, Large Language Models (LLMs).
### Engineering and Design #Engineering #CAD #CAE
Crash simulations, Finite Element Analysis (FEA), Aerodynamics.
### Visualization #Visualization #DataInterpretation
Visualizing large datasets generated by simulations or experiments. Remote visualization.

## Cloud HPC and Emerging Trends #Future #Cloud #Trends #Exascale
The future landscape of high-performance computing.
### HPC in the Cloud #CloudHPC #AWS #Azure #GCP
Leveraging cloud provider infrastructure for HPC workloads. Benefits and challenges. Bursting, hybrid cloud models.
### Exascale Computing #Exascale #NextGen
Challenges and opportunities in reaching ExaFLOPS performance. Power consumption, resiliency, programming models.
### Convergence of HPC, AI, and Big Data #Convergence #HPDA
Synergies between these domains driving new architectures and applications.
### Containerization in HPC #Containers #Docker #Singularity #Apptainer
Using containers for reproducibility, portability, and dependency management (Docker, Singularity/Apptainer).
### Serverless and Function-as-a-Service (FaaS) for HPC #Serverless #FaaS
Exploring event-driven and function-based models for certain HPC tasks.
### Quantum Computing and HPC #QuantumComputing #Synergy
Potential impact of quantum computing on HPC problems, hybrid quantum-classical approaches.
### Neuromorphic Computing #Neuromorphic #BrainInspired
Hardware architectures mimicking biological brains for specific tasks.
### Sustainable HPC / Green Computing #GreenHPC #EnergyEfficiency
Focus on power efficiency, cooling technologies, reducing environmental impact.

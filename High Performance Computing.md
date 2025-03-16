# I. Introduction to High-Performance Computing (HPC)

## Understanding HPC Concepts

### Defining HPC and its Applications
*   Scientific Simulations
*   Data Analytics
*   Machine Learning
*   Financial Modeling

### Distinguishing HPC from General-Purpose Computing
*   Parallelism
*   Scalability
*   Interconnects

## HPC Architectures Overview

### Shared Memory Systems
*   Symmetric Multiprocessors (SMP)
*   Memory Coherence

### Distributed Memory Systems
*   Clusters
*   Message Passing Interface (MPI)

### Hybrid Architectures
*   Nodes with multiple cores and GPUs, connected in a cluster.

# II. Parallel Programming Models

## Shared Memory Programming with OpenMP

### OpenMP Basics
*   Compiler Directives
*   Environment Variables

### Parallel Regions and Worksharing
*   `#pragma omp parallel`
*   `#pragma omp for`
*   `#pragma omp sections`

### Synchronization Mechanisms
*   `#pragma omp critical`
*   `#pragma omp atomic`
*   `#pragma omp barrier`
*   `#pragma omp lock`

### Data Sharing Attributes
*   `shared`, `private`, `firstprivate`, `lastprivate`, `reduction`

### Example: Parallelizing a simple loop

```c++
#include <iostream>
#include <omp.h>

int main() {
    int n = 10;
    int a[n];

    #pragma omp parallel for
    for (int i = 0; i < n; i++) {
        a[i] = i * 2;
        std::cout << "Thread " << omp_get_thread_num() << ": a[" << i << "] = " << a[i] << std::endl;
    }

    return 0;
}
```

## Distributed Memory Programming with MPI

### MPI Fundamentals
*   MPI Initialization and Finalization: `MPI_Init`, `MPI_Finalize`
*   Communicators: `MPI_COMM_WORLD`
*   Rank and Size: `MPI_Comm_rank`, `MPI_Comm_size`

### Point-to-Point Communication
*   Blocking Sends and Receives: `MPI_Send`, `MPI_Recv`
*   Non-Blocking Sends and Receives: `MPI_Isend`, `MPI_Irecv`, `MPI_Wait`

### Collective Communication
*   Broadcast: `MPI_Bcast`
*   Gather: `MPI_Gather`, `MPI_Allgather`
*   Scatter: `MPI_Scatter`
*   Reduce: `MPI_Reduce`, `MPI_Allreduce`

### Example: Hello World in MPI

```c++
#include <iostream>
#include <mpi.h>

int main(int argc, char** argv) {
    MPI_Init(&argc, &argv);

    int rank, size;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);

    std::cout << "Hello from rank " << rank << " of " << size << std::endl;

    MPI_Finalize();
    return 0;
}
```

# III. HPC Hardware and Architecture

## CPU Architecture for HPC

### Multi-core Processors
*   Understanding cores, threads, and hyperthreading.

### Cache Hierarchy
*   L1, L2, L3 caches and their impact on performance.
*   Cache coherence protocols

### Vectorization
*   SIMD (Single Instruction, Multiple Data)
*   AVX, SSE instructions

## GPU Architecture for HPC

### GPU Architecture Fundamentals
*   Streaming Multiprocessors (SMs)
*   CUDA Cores

### Memory Hierarchy
*   Global Memory, Shared Memory, Registers

### CUDA Programming Model
*   Kernels
*   Threads, Blocks, Grids

### OpenCL Programming
*   Portable across different GPU vendors

## Interconnects

### Network Topologies
*   Ethernet
*   Infiniband
*   Proprietary interconnects (e.g., Cray Aries)

### Communication Latency and Bandwidth
*   Impact on application performance.

# IV. Performance Optimization Techniques

## Profiling and Performance Analysis

### Profiling Tools
*   `gprof`, `perf`, Intel VTune Amplifier, NVIDIA Nsight Systems

### Identifying Bottlenecks
*   CPU-bound vs. memory-bound vs. I/O-bound

### Code Optimization

### Loop Optimization
*   Loop unrolling, loop fusion, loop fission
*   Data locality optimization

### Data Structure Optimization
*   Array of Structures (AoS) vs. Structure of Arrays (SoA)
*   Padding to avoid false sharing.

## Parallel Optimization

### Load Balancing
*   Static vs. Dynamic load balancing

### Communication Optimization
*   Reducing communication frequency and volume
*   Overlapping computation and communication
*   Using non-blocking communication

## Memory Optimization

### Minimizing Memory Accesses
*   Cache blocking
*   Data reuse

### Avoiding False Sharing
*   Padding shared data structures.

# V. HPC Job Scheduling and Resource Management

## Job Schedulers Overview

### Common Schedulers
*   Slurm, PBS, LSF, Torque

### Job Submission Scripts

### Specifying Resource Requirements
*   Number of nodes, cores per node, memory
*   Wall time

### Job Monitoring and Management
*   Checking job status
*   Canceling jobs

## Resource Management

### Resource Allocation
*   Fair share scheduling

### Job Prioritization
*   Based on user, project, or queue

### Example Slurm Script

```bash
#!/bin/bash
#SBATCH --job-name=myjob
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=24
#SBATCH --time=01:00:00
#SBATCH --output=myjob.out

module load mpi

srun ./my_mpi_program
```

# VI. HPC Libraries and Frameworks

## Numerical Libraries

### BLAS (Basic Linear Algebra Subprograms)
*   Level 1, 2, 3 BLAS routines

### LAPACK (Linear Algebra PACKage)
*   Solving linear systems, eigenvalue problems

### FFTW (Fastest Fourier Transform in the West)
*   Computing Fast Fourier Transforms

## Scientific Computing Libraries

### PETSc (Portable, Extensible Toolkit for Scientific Computation)
*   Solving PDEs

### Trilinos
*   Solving large-scale, complex engineering and scientific problems.

## Machine Learning Frameworks

### TensorFlow
*   Distributed training on GPUs

### PyTorch
*   Dynamic computational graphs for deep learning.

# VII. HPC Case Studies and Applications

## Molecular Dynamics Simulations
*   Using LAMMPS, NAMD

## Weather Forecasting
*   Numerical Weather Prediction models.

## Financial Modeling
*   Monte Carlo simulations for option pricing

## Genomics and Bioinformatics
*   Genome sequencing, variant calling.

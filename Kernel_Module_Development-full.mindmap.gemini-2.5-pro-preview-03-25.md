```markdown
# Kernel Module Development-full #Kernel #Linux #Programming
An overview of developing modules for the Linux kernel.

## Introduction to Kernel Modules #Basics #Overview #Concepts
Understanding what kernel modules are, why they are used, and their place in the Linux architecture.
*   Kernel modules extend the functionality of the kernel without needing to rebuild or reboot the system.

### What is a Kernel Module? #Definition #LKM
*   Also known as Loadable Kernel Modules (LKMs).
*   Object files containing code that can be dynamically loaded into and unloaded from the running kernel.

### Why Use Kernel Modules? #Motivation #Benefits
*   Modularity: Keeps the base kernel lean.
*   Flexibility: Load functionality only when needed.
*   Maintainability: Easier to update drivers or features.
*   Development: Faster development cycle compared to full kernel rebuilds.

### Kernel Space vs. User Space #Architecture #Memory
*   Privileged execution mode (Ring 0).
*   Direct hardware access.
*   Separate, protected memory space.
*   Strict programming constraints.

### Types of Kernel Modules #Classification #UseCases
*   Device Drivers (Char, Block, Network)
*   Filesystem Drivers
*   Networking Protocols/Filters
*   System Call additions (less common now)
*   Specialized hardware support

## Development Environment Setup #Tools #Configuration #Prerequisites
Setting up the necessary tools and environment for kernel module development.

### Required Packages #Software #Dependencies
*   Kernel Headers/Source Code (matching the target kernel)
*   Build Tools (gcc, make, binutils)
*   Specific libraries (e.g., libelf-dev for certain debugging tools)

### Getting Kernel Sources/Headers #KernelSource #Build
*   Using package managers (e.g., `linux-headers-$(uname -r)` on Debian/Ubuntu)
*   Cloning the Linux source repository (git)

### Configuring the Build Environment #Setup #Makefile
*   Ensuring the compiler version is compatible.
*   Setting up cross-compilation if developing for a different architecture.

### Essential Tools #Utilities #DevTools
*   Text Editor/IDE (Vim, Emacs, VS Code with C extensions)
*   Version Control (Git)
*   Debugging tools (covered later)

## Module Structure and Lifecycle #Core #Anatomy #Management
The basic structure of a kernel module file and its lifecycle management.

### Basic Module Structure #Code #Template
*   Header Includes (`linux/module.h`, `linux/kernel.h`, etc.)
*   Module Metadata (MODULE_LICENSE, MODULE_AUTHOR, etc.)
*   Initialization Function (`module_init()`)
*   Cleanup Function (`module_exit()`)
*   Module Parameters (`module_param()`)

### Initialization and Cleanup #Entry #Exit #Hooks
*   `init_module()` / `module_init()`: Called when the module is loaded. Registers resources, devices. Returns 0 on success.
*   `cleanup_module()` / `module_exit()`: Called when the module is unloaded. Unregisters resources, cleans up.

### Module Metadata Macros #Information #Licensing
*   `MODULE_LICENSE()`: Crucial for symbol resolution (GPL compatibility). E.g., "GPL", "GPL v2", "Dual BSD/GPL".
*   `MODULE_AUTHOR()`: Author information.
*   `MODULE_DESCRIPTION()`: Brief description of the module.
*   `MODULE_VERSION()`: Version string.
*   `MODULE_DEVICE_TABLE()`: Used for device hotplugging.

### Module Parameters #Configuration #RuntimeArgs
*   `module_param(name, type, perm)`: Export variables to be set at load time.
*   `module_param_array()`: For array parameters.
*   Permissions (`perm`): Controls visibility/modification via sysfs.

### Loading and Unloading Modules #Commands #Management
*   `insmod <module.ko>`: Load a module (older, less preferred).
*   `modprobe <module_name>`: Load a module and its dependencies. Reads `/lib/modules/...`.
*   `rmmod <module_name>`: Unload a module.
*   `lsmod`: List currently loaded modules.
*   `modinfo <module_name | module.ko>`: Display information about a module.

## Kernel Build System (Kbuild) #Makefiles #Compilation #Build
Using the kernel's build system to compile modules.

### Makefile Structure #BuildScript #Kbuild
*   Minimal Makefile for an external module.
*   `obj-m += <module_name>.o`: Specifies the module object file(s).
*   `KERNELDIR ?= /lib/modules/$(shell uname -r)/build`: Path to kernel source/headers.
*   `PWD := $(shell pwd)`: Current working directory.
*   `default: make -C $(KERNELDIR) M=$(PWD) modules` target.
*   `clean: make -C $(KERNELDIR) M=$(PWD) clean` target.

### Building In-Tree vs. Out-of-Tree #Location #Integration
*   In-Tree: Module source lives within the main kernel source tree.
*   Out-of-Tree: Module source lives separately, uses Kbuild infrastructure externally.

### Kconfig Integration (Optional) #Configuration #Menuconfig
*   For integrating modules into the kernel's configuration system (`make menuconfig`).
*   Uses `Kconfig` files to define configuration options.

## Kernel APIs and Interfaces #CoreAPI #Functions #Subsystems
Overview of common kernel functions and subsystems used by modules.

### Core Kernel APIs #Utilities #Helpers
*   Printing: `printk()` and log levels (KERN_INFO, KERN_ERR, etc.)
*   Memory Allocation: `kmalloc()`, `kzalloc()`, `kfree()`, `vmalloc()` (covered later)
*   Error Handling: ERR_PTR(), PTR_ERR(), IS_ERR()
*   Data Structures: Linked lists (`list_head`), kfifo, idr/ida

### Kernel Symbol Exporting #Symbols #Visibility #Linking
*   `EXPORT_SYMBOL()`: Export a function or variable for other modules to use.
*   `EXPORT_SYMBOL_GPL()`: Export only to GPL-compatible modules.
*   Symbol versioning (CONFIG_MODVERSIONS).

### Working with Kernel Data Structures #DataTypes #Lists #Trees
*   Linked Lists (`<linux/list.h>`)
*   Kernel FIFOs (`<linux/kfifo.h>`)
*   Radix Trees / IDR / IDA (`<linux/radix-tree.h>`, `<linux/idr.h>`)
*   Red-Black Trees (`<linux/rbtree.h>`)

## Character Device Drivers #CharDev #Drivers #IO
Developing modules that implement character devices (/dev/...).

### Overview of Character Devices #Concept #Files
*   Sequential access devices (terminals, serial ports, custom hardware interfaces).
*   Represented by device files in `/dev`.
*   Major and Minor numbers identify the driver and specific device instance.

### Registering a Character Device #Registration #DeviceNumbers
*   Allocating device numbers: `alloc_chrdev_region()` or `register_chrdev_region()`.
*   Static vs. Dynamic allocation.
*   Unregistering: `unregister_chrdev_region()`.

### File Operations Structure (`file_operations`) #Callbacks #VFS
*   Defines the mapping between VFS system calls (open, read, write, ioctl, etc.) and driver functions.
*   Key members: `owner`, `open`, `release`, `read`, `write`, `unlocked_ioctl`, `llseek`.

### Implementing File Operations #Methods #DriverLogic
*   `open()`: Initialize device on first open.
*   `release()`: Clean up when the last reference is closed.
*   `read()`/`write()`: Transfer data between user space and kernel/hardware.
*   `unlocked_ioctl()`: Handle device-specific control commands.

### Communicating with User Space #DataTransfer #Control
*   `copy_to_user()` / `copy_from_user()`: Safely transfer data across the kernel/user boundary.
*   `ioctl()`: Device-specific commands.

### Device File Creation (udev/devtmpfs) #DeviceNodes #Userspace
*   Kernel notifies user space (udev) when devices are registered/unregistered.
*   udev creates/removes device nodes in `/dev`.
*   `device_create()`, `class_create()` from `<linux/device.h>`.

## Block Device Drivers #BlockDev #Storage #IO
Developing modules for block storage devices (hard drives, SSDs, RAM disks).

### Overview of Block Devices #Concept #Filesystem
*   Random access devices, read/write in fixed-size blocks.
*   Used for mounting filesystems.
*   Involve complex request queuing and scheduling.

### Block Layer Architecture #Subsystem #Requests #BIO
*   Request Queue (`request_queue`)
*   Block I/O structure (`bio`)
*   I/O Schedulers (noop, deadline, cfq, bfq)
*   Generic Block Layer (`genhd`)

### Registering a Block Device #Registration #gendisk
*   Allocating a disk structure: `alloc_disk()`.
*   Setting up the request queue: `blk_init_queue()`.
*   Defining disk properties (capacity, geometry).
*   Adding the disk: `add_disk()`.
*   Unregistering: `del_gendisk()`, `blk_cleanup_queue()`.

### Handling Block I/O Requests #Processing #Queue
*   Request function (`request_fn`).
*   Processing requests from the queue.
*   Using `bio` structures to access data buffers.
*   Completing requests: `blk_end_request_all()` / `__blk_end_request_all()`.

### Using `make_request_fn` (Direct BIO Handling) #Alternative #BIO
*   Bypasses the I/O scheduler, processes `bio` structures directly.
*   Used for simpler devices or specialized drivers (e.g., RAM disks).

## Network Device Drivers & Networking Subsystem #NetDev #Drivers #NetworkStack
Developing modules for network interface controllers (NICs) and interacting with the network stack.

### Overview of Network Devices #Concept #NIC #Sockets
*   Packet-oriented devices.
*   Interface between hardware and the kernel's networking stack (TCP/IP, etc.).

### Network Device Structure (`net_device`) #CoreStruct #NICData
*   Central structure representing a network interface.
*   Contains state, statistics, operations (`net_device_ops`).

### Registering/Unregistering Network Devices #Registration #Lifecycle
*   Allocating `net_device`: `alloc_netdev()` / `alloc_etherdev()`.
*   Initializing `net_device` fields (MAC address, features, ops).
*   Registering: `register_netdev()`.
*   Unregistering: `unregister_netdev()`.
*   Freeing: `free_netdev()`.

### Network Device Operations (`net_device_ops`) #Callbacks #PacketIO
*   `ndo_open`, `ndo_stop`: Bring interface up/down.
*   `ndo_start_xmit`: Transmit a packet (`sk_buff`).
*   `ndo_get_stats64`: Provide network statistics.
*   `ndo_set_mac_address`: Change the MAC address.
*   `ndo_do_ioctl`: Handle network-specific ioctls.

### Socket Buffers (`sk_buff`) #Packets #DataStructure
*   The core structure for handling network packets within the kernel.
*   Contains packet data, metadata, protocol headers.
*   Manipulation functions (`skb_put`, `skb_push`, `skb_pull`, `skb_reserve`).

### Transmitting and Receiving Packets #IO #DataFlow
*   Transmission: `ndo_start_xmit` called by the network stack. Driver sends packet to hardware. Must free/recycle `sk_buff`.
*   Reception: Interrupt handler allocates `sk_buff`, fills it with data from hardware, passes it up the stack (`netif_rx`, `napi_gro_receive`).

### NAPI (New API) #InterruptMitigation #Performance
*   Combines interrupt and polling for high-speed networking.
*   Reduces interrupt overhead.
*   `napi_struct`, `netif_napi_add`, `napi_schedule`, `napi_complete`.

### Interacting with the Networking Stack #Protocols #Filtering
*   Netfilter hooks: Intercept/modify packets at various points.
*   Protocol handlers.

## Filesystem Integration (VFS) #Filesystem #VFS #Mount
Interfacing with the Virtual Filesystem layer.

### VFS Overview #Abstraction #Layer
*   Provides a unified interface for different filesystems.
*   Key objects: `superblock`, `inode`, `dentry`, `file`.

### Registering a Filesystem #Registration #MountAPI
*   `register_filesystem()` function.
*   `file_system_type` structure.
*   `mount` operation.
*   `kill_sb` operation.

### Filesystem Operations #Callbacks #FSLogic
*   Superblock operations (`super_operations`).
*   Inode operations (`inode_operations`).
*   Dentry operations (`dentry_operations`).
*   File operations (`file_operations`) - reused from char devices.

### Implementing a Simple Filesystem #Example #ProcFS #DebugFS
*   Conceptual steps for creating a virtual filesystem (like procfs or debugfs).

## Memory Management in Kernel Space #Memory #Allocation #Paging
How memory is allocated and managed within the kernel.

### Kernel Memory Allocators #API #Functions
*   `kmalloc()`/`kzalloc()`/`kfree()`: General purpose, physically contiguous, small allocations. Flags (`GFP_KERNEL`, `GFP_ATOMIC`).
*   `vmalloc()`/`vfree()`: Virtually contiguous, larger allocations. Slower, may sleep.
*   Slab Allocator (`kmem_cache_alloc()`/`kmem_cache_free()`): Efficient allocation of same-sized objects.
*   Page Allocator: Low-level allocation of physical pages.

### Allocation Flags (GFP Flags) #Behavior #Context
*   `GFP_KERNEL`: Normal allocation, may sleep. Used in process context.
*   `GFP_ATOMIC`: Cannot sleep. Used in interrupt context or with locks held. Smaller pool.
*   `GFP_NOIO`/`GFP_NOFS`: Disallow I/O or filesystem operations during allocation.
*   `__GFP_ZERO`: Zero the allocated memory.

### High Memory vs. Low Memory #Architecture #Addressing
*   Mapping physical memory to the kernel's virtual address space.
*   ZONE_DMA, ZONE_NORMAL, ZONE_HIGHMEM (relevant on 32-bit systems).

### Memory Mapping (User Space Access) #mmap #SharedMemory
*   Implementing the `mmap` file operation.
*   Mapping kernel memory (or device memory) into a user process's address space.
*   Remapping IO memory (`ioremap`).

## Concurrency Control & Synchronization #Concurrency #Locking #RaceConditions
Preventing race conditions and managing concurrent access in the kernel.

### Why Synchronization is Needed #RaceConditions #SMP
*   SMP systems, preemption, interrupts lead to concurrent execution.
*   Protecting shared data structures.

### Atomic Operations #Primitives #Lockless
*   `atomic_t` type and functions (`atomic_set`, `atomic_inc`, `atomic_dec_and_test`, `atomic_add`).
*   Atomic bit operations (`set_bit`, `clear_bit`, `test_and_set_bit`).

### Spinlocks #Locking #BusyWait #Interrupts
*   `spinlock_t`, `spin_lock()`, `spin_unlock()`.
*   Busy-waiting lock for short critical sections.
*   Disables preemption on the local CPU.
*   `spin_lock_irqsave()`/`spin_unlock_irqrestore()`: Save/restore interrupt state. Used when interacting with interrupt handlers.

### Mutexes #Locking #Sleeping #ProcessContext
*   `struct mutex`, `mutex_init()`, `mutex_lock()`, `mutex_unlock()`.
*   Sleeping lock (process context only). Allows context switching while waiting.
*   Lower overhead when uncontended, but higher latency when contended.

### Semaphores #Locking #Sleeping #Counting
*   `struct semaphore`, `sema_init()`, `down()`, `up()`.
*   Sleeping lock, can allow multiple holders (counting semaphore) or one (binary semaphore, similar to mutex). Less common now than mutexes.

### Read-Write Locks/Semaphores #Optimization #ReadersWriter
*   `rwlock_t`, `read_lock()`, `write_lock()`.
*   `struct rw_semaphore`, `down_read()`, `down_write()`.
*   Allow multiple readers or a single writer.

### Seqlocks #Optimization #ReadersWriter #LocklessRead
*   Favor writers, very fast reader path (optimistic).
*   Readers must check sequence count before and after reading.

### RCU (Read-Copy Update) #Advanced #LocklessRead #Performance
*   Very low overhead for readers, more complex for writers.
*   Allows readers to access data structures concurrently with writers.
*   Requires careful management of grace periods (`synchronize_rcu()`, `call_rcu()`).

### Lock Contention and Deadlocks #Pitfalls #Debugging
*   Identifying and resolving deadlocks.
*   Lock ordering rules.
*   Using lockdep (Kernel lock dependency validator).

## Interrupt Handling & Timers #Interrupts #Timing #HardwareEvents
Managing hardware interrupts and kernel timers.

### Interrupt Handling Basics #IRQ #Hardware
*   Hardware signals events to the CPU.
*   Interrupt Service Routines (ISRs).
*   Interrupt context restrictions (no sleeping, limited stack).

### Registering an Interrupt Handler #API #IRQSharing
*   `request_irq(irq, handler, flags, name, dev_id)`.
*   `free_irq(irq, dev_id)`.
*   IRQ Flags (`IRQF_SHARED`, `IRQF_TRIGGER_*`).
*   Shared vs. Exclusive IRQs.

### Top Halves vs. Bottom Halves (Deferred Work) #ISR #Latency #WorkDeferral
*   Top Half (ISR): Fast, minimal work, acknowledges interrupt, schedules bottom half.
*   Bottom Half: Performs longer processing outside interrupt context.
    *   Softirqs
    *   Tasklets (`tasklet_struct`, `tasklet_schedule`)
    *   Workqueues (`work_struct`, `schedule_work`)

### Softirqs #BottomHalf #KernelInternal
*   Statically defined, high-priority deferred work. Rarely used directly by modules.

### Tasklets #BottomHalf #DeferredWork
*   Dynamically allocatable, run in softirq context.
*   Cannot sleep. Guaranteed to run on the same CPU.

### Workqueues #BottomHalf #DeferredWork #Sleeping
*   Run in kernel process context (kworker threads).
*   Can sleep. Most flexible bottom half mechanism.
*   System workqueue vs. custom workqueues.

### Kernel Timers #Timing #SchedulingEvents
*   `struct timer_list`, `timer_setup()`, `add_timer()`, `mod_timer()`, `del_timer()`.
*   Executing functions after a specified delay (jiffies).
*   High-resolution timers (`hrtimer`).

### Jiffies and Timekeeping #Time #Clock
*   Kernel's internal time unit (clock ticks).
*   Converting between jiffies and seconds/milliseconds.

## Interacting with User Space #API #Communication #SysFS #ProcFS
Methods for modules to communicate and exchange data with user-space applications.

### `copy_to_user()` / `copy_from_user()` #DataTransfer #Safety
*   Essential for moving data between kernel and user memory safely.
*   Handles address validation and fault handling.

### `ioctl` System Call #Control #DeviceSpecific
*   Device-specific commands and data exchange.
*   Defined via `unlocked_ioctl` in `file_operations`.
*   Requires defining command numbers (`_IO`, `_IOR`, `_IOW`, `_IOWR`).

### Procfs (`/proc`) #Information #Debugging #Legacy
*   Virtual filesystem for exporting kernel information and statistics.
*   Creating files/directories under `/proc`.
*   `proc_create()`, `proc_remove()`.
*   Using `seq_file` interface for easy generation of large virtual files.

### Sysfs (`/sys`) #Configuration #DeviceModel #Modern
*   Represents kernel objects (devices, buses, modules) and their attributes.
*   Preferred over procfs for device configuration and status.
*   Integration with the driver model (`kobject`, `attribute`, `attribute_group`).
*   Creating attributes (`DEVICE_ATTR`, `DRIVER_ATTR`).

### Netlink Sockets #Networking #IPC #Advanced
*   Asynchronous message passing between kernel and user space.
*   Used heavily by networking subsystems (iproute2), generic netlink for custom protocols.

### Debugfs (`/sys/kernel/debug`) #Debugging #Development
*   Simple filesystem specifically for debugging purposes.
*   No strict ABI, easier to use during development than procfs/sysfs.
*   `debugfs_create_file`, `debugfs_create_dir`.

## Debugging & Tracing #Troubleshooting #Analysis #Performance
Techniques and tools for debugging kernel modules.

### `printk` Debugging #Logging #Simple
*   The most basic debugging tool.
*   Using appropriate log levels.
*   Viewing output (`dmesg`, `/var/log/kern.log`).
*   Controlling log levels (`/proc/sys/kernel/printk`).

### Kernel Debuggers (KDB/KGDB) #Debugging #Breakpoints #LiveDebug
*   KDB: Built-in kernel debugger (limited).
*   KGDB: Remote debugging using GDB over a serial line or network.
*   Requires kernel compiled with debugging support.
*   Setting breakpoints, examining memory/variables, stepping through code.

### Dynamic Probes (Kprobes/Jprobes/Return Probes) #Tracing #Instrumentation #Dynamic
*   Insert probes dynamically into kernel code (entry/exit points).
*   Attach handlers to collect data or modify behavior.
*   `kprobe`, `jprobe` (deprecated), `kretprobe`.

### Ftrace Framework #Tracing #FunctionTracing #Latency
*   Kernel's internal tracing infrastructure.
*   Function tracer, latency tracer, event tracing.
*   Accessible via debugfs (`/sys/kernel/debug/tracing/`).
*   Tracepoints: Static probe points compiled into the kernel.

### Crash Utility #PostMortem #DumpAnalysis
*   Analyzing kernel crash dumps (`vmcore`).
*   Requires debug symbols for the kernel.

### Lockdep (Lock Dependency Validator) #Concurrency #DeadlockDetection
*   Runtime deadlock detection tool built into the kernel (CONFIG_LOCKDEP).
*   Tracks lock acquisition/release order.

### Memory Debugging #MemoryLeaks #Corruption
*   KASAN (Kernel Address Sanitizer): Detects use-after-free, buffer overflows.
*   KMSAN (Kernel Memory Sanitizer): Detects use of uninitialized memory.
*   KMEMLEAK: Detects kernel memory leaks.
*   Requires kernel compiled with specific options.

### Oops Messages #Errors #StackTrace
*   Decoding kernel Oops messages and stack traces.
*   Using `addr2line` or GDB with `vmlinux`.

## Hardware Access & Interaction #Hardware #IO #DMA
Techniques for modules to interact directly with hardware.

### I/O Ports #Legacy #x86
*   Accessing hardware via dedicated I/O port address space (mainly x86).
*   `request_region()`, `release_region()`.
*   `inb()`, `outb()`, `inw()`, `outw()`, `inl()`, `outl()`.

### Memory-Mapped I/O (MMIO) #Modern #Registers
*   Mapping device registers/memory into the kernel's virtual address space.
*   `request_mem_region()`, `release_mem_region()`.
*   `ioremap()`, `iounmap()`.
*   Accessing memory: `readb/w/l()`, `writeb/w/l()`. Avoid direct pointer dereferencing due to caching/ordering issues.

### Direct Memory Access (DMA) #Performance #DataTransfer
*   Allowing hardware to access system memory directly without CPU intervention.
*   DMA Mapping API (`dma_map_single`, `dma_map_page`, `dma_unmap_*`).
*   Coherent vs. Streaming mappings.
*   Handling cache coherency issues.

### Bus Systems (PCI, USB, I2C, SPI) #Buses #DeviceModel
*   Interfacing with standard hardware buses.
*   Using bus-specific APIs and driver models.
*   PCI: `pci_driver`, `pci_dev`.
*   USB: `usb_driver`, `usb_device`, URBs.
*   I2C: `i2c_driver`, `i2c_client`, `i2c_transfer`.
*   SPI: `spi_driver`, `spi_device`, `spi_transfer`.

## Power Management & ACPI #Power #Energy #ACPI
Integrating modules with kernel power management features.

### Power Management Framework #PM #Suspend #Resume
*   System Suspend/Hibernate (S3/S4 states).
*   Runtime Power Management.
*   Device Power Management (`dev_pm_ops`).

### Implementing `dev_pm_ops` #Callbacks #SuspendResume
*   `suspend()`, `resume()`.
*   `runtime_suspend()`, `runtime_resume()`.
*   Saving/restoring device state.

### ACPI (Advanced Configuration and Power Interface) #BIOS #HardwareInfo
*   Interfacing with ACPI tables provided by BIOS/UEFI.
*   ACPI methods for device control and power states.

## Security in Kernel Modules #Security #Hardening #Vulnerabilities
Security considerations when writing kernel code.

### Kernel Programming Constraints #Stability #Safety
*   Never trust user-space input directly.
*   Validate all parameters and data.
*   Avoid unbounded loops or allocations.
*   Handle errors gracefully.

### Common Vulnerabilities #Exploits #Bugs
*   Buffer Overflows
*   Integer Overflows
*   Use-After-Free
*   Information Leaks
*   Race Conditions
*   NULL Pointer Dereferences

### Capabilities #Permissions #Privileges
*   Checking process capabilities (`capable()`) before performing privileged operations.

### Module Signing and Verification #Integrity #SecureBoot
*   Cryptographically signing modules (`scripts/sign-file`).
*   Kernel configured to load only signed modules (CONFIG_MODULE_SIG).
*   Interaction with Secure Boot.

### Kernel Address Space Layout Randomization (KASLR) #Mitigation #SecurityFeature
*   Randomizes kernel code/data location in memory. Makes exploits harder.

### Control Flow Integrity (CFI) #Mitigation #SecurityFeature
*   Techniques to prevent hijacking control flow (e.g., return-oriented programming).

## Advanced Topics & Modern Trends #Specialization #Future #Alternatives
More specialized areas and recent developments related to kernel extensibility.

### Generic Netlink #Netlink #IPC #CustomProtocol
*   Creating custom Netlink families for flexible kernel/user communication.

### Device Tree #ARM #Embedded #HardwareDescription
*   Describing non-discoverable hardware for platforms like ARM.
*   Parsing device tree data within drivers.

### Real-time Linux (PREEMPT_RT) #RealTime #Latency
*   Considerations for writing modules for RT-patched kernels.
*   Minimizing latency and non-preemptible sections.

### eBPF (Extended Berkeley Packet Filter) #eBPF #Tracing #Networking #Security #Alternative
*   Safe, event-driven programmability within the kernel.
*   Used for tracing, networking, security.
*   Often an alternative or complement to writing full kernel modules for certain tasks.

### Rust for Kernel Development #Rust #Safety #ModernLanguage
*   Ongoing effort to allow writing kernel modules (drivers) in Rust.
*   Aims to improve memory safety.

## Distribution & Licensing #Packaging #Legal #Deployment
How modules are packaged, licensed, and distributed.

### Licensing Issues (GPL) #Legal #Compliance #GPL
*   Kernel is GPLv2. Implications for module licensing.
*   Tainted kernel concept.
*   `MODULE_LICENSE("GPL")` is often necessary for accessing core kernel symbols.

### Packaging Modules #Distribution #DKMS
*   Distributing pre-compiled modules (fragile, kernel version specific).
*   Source distribution.
*   DKMS (Dynamic Kernel Module Support): Automatically rebuilds modules when the kernel is updated.

### Module Maintenance #Updates #Compatibility
*   Keeping modules compatible with evolving kernel APIs.
*   Upstream submission process (getting modules into the mainline kernel).

```

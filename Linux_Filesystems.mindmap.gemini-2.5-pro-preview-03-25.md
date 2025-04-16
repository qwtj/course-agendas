# Linux Filesystems #OperatingSystems #Storage #CoreConcept
An overview of the hierarchical file organization and management systems used within the Linux kernel and various distributions.

## Filesystem Fundamentals #Basics #Theory #Concepts
Core principles underlying how filesystems work in Linux.

### What is a Filesystem? #Definition #Purpose
Explanation of the role of a filesystem in managing data on storage devices.
Organizes data into files and directories, manages metadata, controls access.

### Filesystem Abstraction: The Virtual File System (VFS) #Abstraction #Kernel #VFS
The kernel layer that provides a unified interface for user applications to interact with different types of filesystems.
Allows mounting diverse filesystems seamlessly. Handles generic file operations before passing them to specific filesystem drivers.

### Block Devices vs. Character Devices #Devices #StorageModel
Distinction between device types relevant to storage and filesystems.
Block devices (e.g., disks) are accessed in fixed-size blocks, while character devices (e.g., terminals) handle data character by character.

### Common Filesystem Concepts #CoreConcepts #DataStructures
Universal ideas applied across many filesystems.
#### Inodes #Metadata #DataStructure #Indexing
Data structures storing metadata about files (permissions, ownership, timestamps, pointers to data blocks), excluding the filename and the data itself.
#### Data Blocks #Storage #Allocation #Data
Units of storage on the block device where actual file content is stored.
#### Superblock #Metadata #FilesystemState #Configuration
Contains critical information about the entire filesystem, such as type, size, block size, inode count, free block/inode counts, and mount status.
#### Directory Entries (dentry) #Naming #Hierarchy #Links
Structures linking filenames to inodes, forming the directory hierarchy. Contains filename and inode number.
#### Hard Links vs. Symbolic Links (Symlinks) #Linking #Pointers #Files
Hard links: Multiple directory entries pointing to the same inode. Limited to the same filesystem.
Symbolic links: Special files containing a path to another file or directory. Can cross filesystems.

## Common Linux Native Filesystems #FileSystemTypes #Implementations #DiskBased
Specific filesystem implementations commonly used on Linux systems for persistent storage.

### Ext Family #Ext #History #Standard
Extended Filesystem family, historically the default for many distributions.
#### Ext2 #Classic #NonJournaling
Second Extended Filesystem. Lacks journaling, making it faster but prone to data loss on crashes. Still used for specific cases (e.g., boot partitions).
#### Ext3 #Journaling #Reliability
Introduced journaling over Ext2 for improved reliability and faster recovery after crashes. Offers different journaling modes (journal, ordered, writeback).
#### Ext4 #Modern #Features #Default
Fourth Extended Filesystem. Current default for many distributions. Features include larger filesystem/file sizes, extents (replacing block mapping), delayed allocation, faster fsck, persistent pre-allocation.

### XFS #Performance #Scalability #SGI
High-performance journaling filesystem originally developed by SGI. Known for parallel I/O performance, large file/filesystem support, efficient metadata operations, delayed allocation, online resizing. Often used for large storage systems and servers.

### Btrfs (B-Tree Filesystem) #CoW #Advanced #Features
Modern Copy-on-Write (CoW) filesystem with advanced features.
#### Copy-on-Write (CoW) #CoW #DataIntegrity
Modifications are written to new locations instead of overwriting existing data, improving data integrity.
#### Snapshots (Read-only and Writable) #Snapshots #Versioning #Backup
Efficient creation of filesystem point-in-time snapshots.
#### Subvolumes #Partitioning #Management
Allows partitioning the filesystem into independently mountable parts.
#### Built-in RAID and Volume Management #RAID #LVM #StoragePools
Integrated support for managing multiple devices (RAID 0, 1, 10, 5, 6).
#### Data and Metadata Checksumming #Integrity #Checksums
Detects data corruption.
#### Online Defragmentation and Scrubbing #Maintenance #IntegrityCheck
Tools for maintaining filesystem health.
#### Send/Receive Functionality #Replication #Backup
Efficiently transfer differences between snapshots, useful for backups and replication.
#### Compression #StorageEfficiency #Compression
Transparent file compression (zlib, LZO, zstd).

### ZFS (on Linux) #CoW #Advanced #Enterprise #Solaris
Originally from Sun/Oracle, available on Linux via ZFS on Linux (OpenZFS). Known for robustness and enterprise features. Although not part of the mainline kernel due to licensing, it's widely used.
#### Pooled Storage (zpools) #StoragePools #Virtualization
Manages physical storage devices in pools, abstracting physical layout.
#### Copy-on-Write (CoW) #CoW #DataIntegrity
Fundamental design principle ensuring data consistency.
#### Snapshots and Clones #Snapshots #Versioning #Efficiency
Highly efficient snapshots and writable clones.
#### Data Integrity (Checksums, Scrubbing) #Integrity #Checksums #SelfHealing
End-to-end checksumming to detect and potentially correct silent data corruption. Regular scrubbing verifies data.
#### Built-in RAID (RAID-Z) #RAID #Redundancy
Integrated robust RAID levels (RAID-Z, Z2, Z3).
#### Compression #StorageEfficiency #Compression
Transparent compression (lz4, gzip, zstd, etc.).
#### Deduplication #StorageEfficiency #Deduplication
Block-level deduplication to save space (can be memory intensive).
#### Encryption #Security #Encryption
Native dataset encryption.
#### Send/Receive #Replication #Backup
Efficient incremental replication.

### Other Native Filesystems #FileSystemTypes #Niche
Less common but still relevant filesystems.
#### JFS #IBM #Journaling
Journaled filesystem developed by IBM.
#### ReiserFS #Obsolete #History
Early journaling filesystem known for efficient small file handling (obsolete due to Reiser4 and legal issues).
#### F2FS (Flash-Friendly File System) #Flash #SSD #Mobile
Designed by Samsung for NAND flash memory-based storage devices (SSDs, eMMC). Log-structured design optimized for flash characteristics.

## Specialized Filesystem Types #SpecialPurpose #Networking #Virtual

### Network Filesystems #Network #RemoteAccess #Sharing
Allow accessing files stored on remote hosts over a network.
#### NFS (Network File System) #NFS #Unix #Standard
Traditional Unix/Linux network filesystem protocol.
#### CIFS/SMB (Common Internet File System / Server Message Block) #SMB #Windows #Interoperability
Protocol commonly used for sharing files with Windows systems (implemented in Linux via Samba).
#### SSHFS (SSH File System) #SSH #Security #FUSE
Mounts remote directories over an SSH connection using FUSE.

### Virtual/Pseudo Filesystems #Virtual #KernelInterface #InMemory
Filesystems that do not represent data on persistent storage but provide interfaces to kernel data structures or system information.
#### procfs (`/proc`) #Processes #KernelData #SystemInfo
Provides information about running processes and kernel parameters.
#### sysfs (`/sys`) #Devices #KernelData #Hardware
Exports information about system devices and kernel objects, organized logically by bus and device type.
#### tmpfs #RAM #Temporary #Volatile
In-memory filesystem, contents are lost on reboot. Fast for temporary data. Used for `/dev/shm`, often `/tmp`.
#### devtmpfs (`/dev`) #Devices #DeviceNodes
Manages device nodes in the `/dev` directory dynamically.

### Clustered Filesystems #Cluster #HPC #SharedStorage
Allow multiple servers to access the same storage device concurrently.
#### GFS2 (Global File System 2) #RedHat #Cluster
Shared-disk filesystem for Linux clusters. Requires distributed lock management.
#### OCFS2 (Oracle Cluster File System 2) #Oracle #Cluster
Shared-disk filesystem developed by Oracle.

### FUSE (Filesystem in Userspace) #Userspace #Flexibility #FUSE
Framework allowing filesystem implementations to run in userspace, simplifying development and enabling diverse virtual filesystems (e.g., SSHFS, cloud storage mounts).

## Filesystem Structure and Layout #Hierarchy #Standards #Organization

### Filesystem Hierarchy Standard (FHS) #FHS #Standard #Layout
Defines the standard directory structure for Linux distributions, ensuring consistency.
#### Root Directory (`/`) #Root #TopLevel
The base of the filesystem hierarchy.
#### Key Directories (`/bin`, `/sbin`, `/etc`, `/dev`, `/proc`, `/var`, `/tmp`, `/usr`, `/home`, `/boot`, `/lib`, `/opt`, `/mnt`, `/media`, `/srv`) #Directories #Purpose
Explanation of the purpose of standard top-level directories.

### Mount Points #Mounting #Integration #VFS
Directories in the VFS where additional filesystems are attached (mounted).

## Filesystem Operations and Management #Management #Commands #Utilities

### Creating Filesystems #Formatting #mkfs #Initialization
Using utilities like `mkfs` (or specific variants like `mkfs.ext4`, `mkfs.xfs`) to initialize a partition with a filesystem structure.
#### Partitioning Tools (`fdisk`, `gdisk`, `parted`) #Partitioning #Disks
Tools used to create partitions on storage devices before formatting.

### Mounting and Unmounting #Attaching #Detaching #mount #umount
Attaching filesystems to the VFS tree (`mount` command) and detaching them (`umount` command).
#### `/etc/fstab` #Configuration #AutoMount #Boot
File configuring static filesystem mounts, typically processed at boot time. Options: `defaults`, `noatime`, `discard`, `rw`, `ro`, `user`, `auto`, `noauto`.

### Checking and Repairing #IntegrityCheck #Repair #fsck
Using `fsck` (or filesystem-specific variants like `e2fsck`, `xfs_repair`) to check for inconsistencies and attempt repairs, usually done when the filesystem is unmounted or mounted read-only.

### Resizing Filesystems #Resizing #Online #Offline
Expanding or shrinking filesystems. Some support online resizing (while mounted), others require offline operations. Tools include `resize2fs`, `xfs_growfs`, `btrfs filesystem resize`.

### Viewing Filesystem Usage #Usage #DiskSpace #df #du
Commands like `df` (disk free, filesystem level) and `du` (disk usage, file/directory level) to monitor space utilization.

### Filesystem Labels and UUIDs #Identification #Persistence #blkid
Using unique identifiers (UUIDs) or labels to reliably identify filesystems, especially in `/etc/fstab`, instead of potentially changing device names (e.g., `/dev/sda1`). Tool: `blkid`.

## Journaling #Reliability #Recovery #Consistency

### Purpose of Journaling #CrashRecovery #MetadataConsistency
Prevents filesystem corruption after system crashes or power outages by logging changes before they are written to the main filesystem. Speeds up recovery compared to full `fsck`.

### Journaling Modes (Ext3/Ext4) #Modes #PerformanceVsSafety
Different strategies for logging data and metadata.
#### Journal Mode #Safest #Slowest
Writes both metadata and data to the journal before writing to the main filesystem.
#### Ordered Mode (Default) #Balanced #Default
Writes only metadata to the journal but ensures data blocks are written to disk *before* their associated metadata is marked as committed in the journal. Good balance of safety and performance.
#### Writeback Mode #Fastest #LeastSafe
Writes only metadata to the journal, possibly after data blocks have been written to disk. Fastest but offers the least protection for file contents.

### Journaling in Other Filesystems (XFS, Btrfs, ZFS) #Implementations #LogBased
XFS uses metadata journaling. Btrfs and ZFS use Copy-on-Write, which inherently provides similar consistency guarantees without a traditional separate journal for data writes.

## Advanced Features and Concepts #Advanced #Features #Capabilities

### Logical Volume Management (LVM) #LVM #Abstraction #Flexibility
A layer between physical storage and filesystems, providing features like volume resizing, snapshots, and flexible allocation across multiple disks. Not a filesystem itself, but often used underneath one.

### Filesystem Snapshots #Snapshots #Backup #PointInTime
Creating point-in-time consistent images of a filesystem. Implementation varies (e.g., LVM snapshots, Btrfs/ZFS native snapshots).

### Copy-on-Write (CoW) #CoW #Efficiency #Integrity
Technique used by Btrfs and ZFS where modified data blocks are written to new locations, leaving the original untouched until the write is complete. Enables efficient snapshots and clones.

### Access Control Lists (ACLs) #Permissions #Security #ACLs
Provide finer-grained access control than traditional Unix permissions (owner/group/other). Managed with `getfacl` and `setfacl`.

### Extended Attributes (xattrs) #Metadata #CustomData #xattr
Allows associating arbitrary name/value pairs (metadata) with files and directories beyond standard attributes like permissions or timestamps. Managed with `getfattr` and `setfattr`.

### Quotas #Limits #UsageControl #Resources
Limiting disk space usage or the number of files per user or group.

### Filesystem-Level Encryption #Security #Encryption #DataProtection
Encrypting data directly within the filesystem.
#### eCryptfs #Stackable #HomeDirectory
Stackable cryptographic filesystem, often used for encrypting home directories.
#### fscrypt (Ext4, F2FS) #Native #Kernel #DirectoryBased
Native kernel feature providing directory-based encryption (supported by Ext4, F2FS).
#### ZFS Native Encryption #Native #ZFS #DatasetLevel
Integrated encryption at the dataset level in ZFS.

### Transparent Compression #Compression #StorageEfficiency #Performance
Filesystem automatically compresses data when written and decompresses when read. Supported by Btrfs, ZFS, F2FS, Ext4 (experimental).

### Deduplication #Deduplication #StorageEfficiency #BlockLevel
Storing only one copy of identical data blocks to save space. Supported by Btrfs (offline) and ZFS (inline or offline). Can have performance and memory overhead.

## Performance and Tuning #Performance #Optimization #Tuning

### Tuning Mount Options #MountOptions #Performance #noatime
Optimizing performance via `/etc/fstab` or `mount` options (e.g., `noatime`, `nodiratime` to reduce metadata updates, `discard` for SSD TRIM).

### Choosing the Right Filesystem #Selection #Workload #UseCases
Selecting a filesystem based on workload requirements (e.g., large files, small files, database, general desktop).

### Block Size and Allocation Strategies #BlockSize #Allocation #Fragmentation
Impact of filesystem block size and allocation methods (e.g., extents vs. block maps, delayed allocation) on performance and fragmentation.

### Defragmentation #Fragmentation #Performance #Maintenance
Process of reorganizing file data blocks to be contiguous. Less critical on modern Linux filesystems (esp. Ext4, XFS, Btrfs, ZFS) than on older FAT/NTFS, but tools exist (`e4defrag`, `xfs_fsr`, `btrfs filesystem defragment`).

### I/O Schedulers #IOScheduling #Kernel #Performance
Kernel component that manages the order of block I/O requests to optimize throughput and latency (e.g., `mq-deadline`, `bfq`, `kyber`, `none`).

## Filesystem Tools and Utilities #Utilities #Commands #Tools

### Core Utilities #CoreUtils #Management
`ls`, `cd`, `mkdir`, `rmdir`, `cp`, `mv`, `rm`, `ln`, `chmod`, `chown`, `stat`

### Filesystem Creation #mkfs #Formatting
`mkfs`, `mkfs.ext4`, `mkfs.xfs`, `mkfs.btrfs`, etc.

### Filesystem Checking/Repair #fsck #Repair
`fsck`, `e2fsck`, `xfs_repair`, `btrfs check`

### Filesystem Information and Tuning #Info #Tuning
`df`, `du`, `lsblk`, `blkid`, `tune2fs` (Ext2/3/4), `xfs_info`, `xfs_admin` (XFS), `btrfs filesystem show`, `btrfs inspect-internal` (Btrfs), `zfs list`, `zpool status` (ZFS)

### Mounting/Unmounting #mount #umount #fstab
`mount`, `umount`, `/etc/fstab` editor

### Resizing #resize #growfs
`resize2fs`, `xfs_growfs`, `btrfs filesystem resize`

### Debugging and Analysis #Debugging #Analysis
`strace` (to see file operations), `iotop` (I/O usage), `iostat` (I/O statistics)

## Future Trends and Development #Future #Development #Research

### Emerging Filesystems #NewFS #Research
Ongoing research and development into new filesystem technologies.

### Enhancements to Existing Filesystems #Improvements #Evolution
Continuous improvement cycles for major filesystems like Ext4, XFS, Btrfs, ZFS.

### Integration with New Storage Technologies #NVMe #PersistentMemory #StorageTrends
Adapting filesystems to leverage the capabilities of NVMe SSDs, Persistent Memory (PMEM), SMR drives, etc. (e.g., DAX - Direct Access).

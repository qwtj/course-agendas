# I. Linux Filesystem Fundamentals

## Understanding Filesystem Concepts

### What is a filesystem?
   * Abstraction layer for data storage and retrieval.
   * Organizes data on storage devices (HDDs, SSDs, etc.).

### Key Filesystem Components
   * **Superblock:** Contains metadata about the filesystem (size, block size, etc.).
   * **Inode:** Data structure that stores metadata about files and directories (permissions, ownership, timestamps, location of data blocks).
   * **Data Blocks:** Actual storage space for file content.
   * **Directory Entry:** Maps filenames to inode numbers.

## Navigating the Filesystem Hierarchy

### The Root Directory (`/`)
   * The top-level directory of the entire filesystem.

### Standard Directories and their Purposes
   * `/bin`: Essential user command binaries.
   * `/boot`: Files required for booting the system (kernel, bootloader).
   * `/dev`: Device files (representing hardware devices).
   * `/etc`: System-wide configuration files.
   * `/home`: User home directories.
   * `/lib`: Essential shared libraries.
   * `/media`: Mount point for removable media.
   * `/mnt`: Temporary mount point for filesystems.
   * `/opt`: Optional application software packages.
   * `/proc`: Process information (virtual filesystem).
   * `/root`: Root user's home directory.
   * `/sbin`: System administration binaries.
   * `/tmp`: Temporary files.
   * `/usr`: User programs, libraries, documentation, etc.
   * `/var`: Variable data (logs, databases, etc.).

### Absolute vs. Relative Paths
   * Absolute path: Starts from the root directory (`/`). Example: `/home/user/document.txt`.
   * Relative path: Starts from the current working directory. Example: `document.txt` (if the current directory is `/home/user`).

# II. Working with Files and Directories

## Basic File and Directory Commands

### Listing Files and Directories (`ls`)
   * `ls`: List files and directories in the current directory.
   * `ls -l`: Long listing format (shows permissions, ownership, size, etc.).
   * `ls -a`: Show all files, including hidden files (starting with `.`).
   * `ls -t`: Sort by modification time (most recent first).
   * `ls -R`: Recursively list subdirectories.

### Changing Directories (`cd`)
   * `cd directory_name`: Change to the specified directory.
   * `cd ..`: Go up one directory level (to the parent directory).
   * `cd ~`: Go to the user's home directory.
   * `cd /`: Go to the root directory.

### Creating Directories (`mkdir`)
   * `mkdir directory_name`: Create a new directory.
   * `mkdir -p directory/nested_directory`: Create parent directories if they don't exist.

### Removing Files and Directories (`rm`, `rmdir`)
   * `rm file_name`: Remove a file.
   * `rm -r directory_name`: Recursively remove a directory and its contents (use with caution!).
   * `rmdir directory_name`: Remove an empty directory.

### Creating Files (`touch`)
   * `touch file_name`: Create an empty file or update the modification timestamp of an existing file.

### Copying Files and Directories (`cp`)
   * `cp source_file destination_file`: Copy a file.
   * `cp -r source_directory destination_directory`: Recursively copy a directory and its contents.

### Moving/Renaming Files and Directories (`mv`)
   * `mv source_file destination_file`: Rename a file.
   * `mv source_file destination_directory`: Move a file to a directory.
   * `mv source_directory destination_directory`: Move or rename a directory.

## File Content Manipulation

### Viewing File Content (`cat`, `less`, `head`, `tail`)
   * `cat file_name`: Concatenate and display the entire file content.
   * `less file_name`: View file content page by page (allows scrolling).
   * `head file_name`: Display the first 10 lines of a file.
   * `head -n 20 file_name`: Display the first 20 lines of a file.
   * `tail file_name`: Display the last 10 lines of a file.
   * `tail -n 20 file_name`: Display the last 20 lines of a file.
   * `tail -f file_name`: Follow the file in real-time (useful for log files).

### Editing Files (`nano`, `vim`)
   * `nano file_name`: Open the file in the `nano` text editor (easy to use).
   * `vim file_name`: Open the file in the `vim` text editor (more powerful but requires learning its commands).

### Redirection and Piping (`>`, `>>`, `|`)
   * `command > file_name`: Redirect the output of a command to a file (overwrites the file).
   * `command >> file_name`: Redirect the output of a command to a file (appends to the file).
   * `command1 | command2`: Pipe the output of `command1` as input to `command2`. Example: `ls -l | grep "txt"` (list files and directories, then filter for lines containing "txt").

# III. File Permissions and Ownership

## Understanding File Permissions

### Permission Types: Read (r), Write (w), Execute (x)
   * Read (r): Allows viewing the file content or listing directory contents.
   * Write (w): Allows modifying the file content or creating/deleting files in a directory.
   * Execute (x): Allows executing a file (if it's a program) or entering a directory.

### User, Group, and Others
   * User: The owner of the file.
   * Group: A group of users that have specific permissions on the file.
   * Others: All other users on the system.

### Representing Permissions: Symbolic and Numeric Modes
   * Symbolic mode: Uses letters (r, w, x) to represent permissions.  Example: `-rwxr-xr--`
   * Numeric mode: Uses numbers (0-7) to represent permissions.  Example: `754` (rwx r-x r--)

## Modifying Permissions (`chmod`)

### Symbolic Mode Examples
   * `chmod u+x file_name`: Add execute permission for the user (owner).
   * `chmod g-w file_name`: Remove write permission for the group.
   * `chmod o=r file_name`: Set permissions for others to read only.
   * `chmod a+r file_name`: Add read permission for all (user, group, others).

### Numeric Mode Examples
   * `chmod 777 file_name`: Grant read, write, and execute permissions to all (user, group, others).
   * `chmod 755 file_name`: Grant read, write, and execute to the user, and read and execute to group and others.
   * `chmod 644 file_name`: Grant read and write to the user, and read to group and others.

## Changing Ownership (`chown`)

### Changing User Ownership
   * `chown user_name file_name`: Change the owner of a file to the specified user.
   * Requires root privileges (use `sudo`).

### Changing Group Ownership
   * `chown :group_name file_name`: Change the group owner of a file to the specified group.
   * Requires root privileges (use `sudo`).

### Changing Both User and Group Ownership
   * `chown user_name:group_name file_name`: Change both the user and group owner.
   * Requires root privileges (use `sudo`).

### Recursive Ownership Changes
   * `chown -R user_name:group_name directory_name`: Recursively change the ownership of all files and subdirectories within a directory. Use with extreme caution!

# IV. File System Types and Management

## Common Linux Filesystems

### ext4
   * Default filesystem for many Linux distributions.
   * Supports large filesystems and file sizes.
   * Good performance and reliability.

### XFS
   * High-performance filesystem, often used for large storage systems.
   * Supports very large files and filesystems.

### Btrfs
   * Modern filesystem with advanced features such as copy-on-write, snapshots, and built-in RAID support.

### ZFS
   * Another advanced filesystem with similar features to Btrfs, but with a different architecture.

### Swap
   * Used for virtual memory (swapping pages to disk when RAM is full). Not really a filesystem in the traditional sense.

## Mounting and Unmounting Filesystems

### Understanding Mount Points
   * A directory in the existing filesystem where the contents of another filesystem are made accessible.

### Mounting a Filesystem (`mount`)
   * `mount /dev/device_name /mount_point`: Mount a filesystem from a device to a mount point.
   * Example: `mount /dev/sdb1 /mnt/data`.
   * Requires root privileges (use `sudo`).
   * Add filesystem entries to `/etc/fstab` for automatic mounting at boot.

### Unmounting a Filesystem (`umount`)
   * `umount /mount_point`: Unmount a filesystem from a mount point.
   * Example: `umount /mnt/data`.
   * Requires root privileges (use `sudo`).

## Disk Partitioning

### Partitioning Tools (`fdisk`, `parted`)
   * `fdisk /dev/sda`: Command-line tool for partitioning disks (older, more basic).
   * `parted /dev/sda`: More advanced partitioning tool with more features.

### Creating Partitions
   * Define the partition type (primary, extended, logical).
   * Specify the partition size and location on the disk.

### Formatting Partitions (`mkfs`)
   * `mkfs.ext4 /dev/sda1`: Format a partition with the ext4 filesystem.
   * `mkfs.xfs /dev/sdb1`: Format a partition with the XFS filesystem.
   * `mkswap /dev/sdc1`: Format a partition as swap space.

## Checking Disk Space

### `df` command
   * `df`: Display disk space usage of all mounted filesystems.
   * `df -h`: Display disk space usage in human-readable format (KB, MB, GB).
   * `df -T`: Display filesystem types.

### `du` command
   * `du`: Estimate file space usage.
   * `du -h`: Display disk usage in human-readable format.
   * `du -sh`: Display the total size of a directory.
   * `du -a`: Display the disk usage of all files and directories.

# V. Advanced Topics

## Logical Volume Management (LVM)

### Understanding LVM Concepts
   * **Physical Volumes (PVs):** Physical storage devices or partitions.
   * **Volume Groups (VGs):** Collections of PVs.
   * **Logical Volumes (LVs):** Virtual partitions created within VGs.
   * Flexibility in resizing and managing storage.

### LVM Commands
   * `pvcreate /dev/sda1`: Create a physical volume.
   * `vgcreate myvg /dev/sda1`: Create a volume group.
   * `lvcreate -L 10G -n mylv myvg`: Create a logical volume of 10GB.
   * `lvresize -L +5G /dev/myvg/mylv`: Resize a logical volume (add 5GB).
   * `mkfs.ext4 /dev/myvg/mylv`: Format the logical volume.
   * `mount /dev/myvg/mylv /mnt/data`: Mount the logical volume.

## RAID (Redundant Array of Independent Disks)

### Understanding RAID Levels
   * RAID 0 (striping): Increases performance but offers no redundancy.
   * RAID 1 (mirroring): Provides redundancy by duplicating data on multiple disks.
   * RAID 5 (striping with parity): Offers both performance and redundancy.
   * RAID 6 (striping with double parity): Higher redundancy than RAID 5.
   * RAID 10 (RAID 1+0): Combines mirroring and striping for high performance and redundancy.

### `mdadm` command
    * `mdadm --create --verbose /dev/md0 --level=1 --raid-devices=2 /dev/sda1 /dev/sdb1`: Creates RAID1 array using sda1 and sdb1.
    * `mdadm --detail /dev/md0`: Shows details of RAID array.
    * `mdadm --stop /dev/md0`: Stops the RAID array.

## File System Repair and Recovery

### `fsck` command
   * `fsck /dev/sda1`: Check and repair a filesystem.
   * Should be run on unmounted filesystems.
   * Can fix errors and recover lost data.

### Data Recovery Tools
   * TestDisk: Powerful data recovery tool for various file systems.

## Quotas

### Enabling Quotas
   * Edit `/etc/fstab` to enable quotas for the filesystem (add `usrquota` and/or `grpquota` options).
   * Run `quotacheck -avugm`: Create quota files.
   * Run `quotaon -avug`: Enable quotas.

### Managing Quotas
   * `edquota -u user_name`: Edit user quotas.
   * `edquota -g group_name`: Edit group quotas.
   * `repquota -a`: Display quota usage.

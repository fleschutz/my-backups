Backup Terms Glossary
========

**3-2-1 Rule (or 3-2-1 backup strategy):** The idea that a minimal backup solution should include three copies of the data, including two local copies and one remote copy.

**Automated backup:** an automated backup is a scheduled backup configured to run daily, weekly or monthly. The backup does not need to be performed manually because the application will start and execute the backup at its scheduled time. A notification email containing the backup log can be sent to an email address. When a problem appears, the administrator will be notified about that by email.

**Backup disaster recovery:** a backup disaster recovery is the process, policies, and procedures related to preparing for recovery or continuation of technology infrastructure critical to an organization after a natural or human-induced disaster.
Disaster recovery planning is a subset of a larger process known as business continuity planning and should include planning for resumption of applications, data, hardware, communications (such as networking) and other IT infrastructure. A business continuity plan includes planning for non-IT related aspects such as key personnel, facilities, crisis communication and reputation protection, and should refer to the disaster recovery plan (DRP) for IT related infrastructure recovery/continuity.

**Backup policy:** an organization's procedures and rules for ensuring that adequate numbers and types of backups are made, including suitably frequent testing of the process for restoring the original production system from the backup copies.

**Backup procedure:** a backup procedure represents the way you back up your files. Any backup procedure starts with a concept of a data repository. The backup data needs to be stored and organized. Therefore, it's important to establish your backup procedure before choosing the backup solution that is right for you. Different backup procedures have different advantages.

**Backup rotation scheme:** a method for effectively backing up data where multiple media are systematically moved from storage to usage in the backup process and back to storage. There are several different schemes. Each takes a different approach to balance the need for a long retention period with frequently backing up changes. Some schemes are more complicated than others.

**Backup site:** a place where business can continue after a data loss event. Such a site may have ready access to the backups or possibly even a continuously updated mirror.

**Backup software:** computer software applications that are used for performing the backing up of data, e.g., the systematic generation of backup copies.

**Backup types:** the four fundamental backup types are the full backup, differential backup, incremental backup and mirror backup. Full, differential and incremental creates zipped backups while the mirror backup type creates in destination an exact copy of the source files.

**Backup window:** the period of time that a system is available to perform a backup procedure. Backup procedures can have detrimental effects to system and network performance, sometimes requiring the primary use of the system to be suspended. These effects can be mitigated by arranging a backup window with the users or owners of the system(s).

**Bare metal backup:** this is a technique in the field of data backup where the backed up data is available in a form which allows one to restore a computer system from "bare metal", i.e. without any requirements as to previously installed software or operating system.
Typically, the backed up data include the necessary operating system, applications, and data components to rebuild or restore the backed up system to an entirely separate piece of hardware.
Bare metal backup differs from local disk image backup where a copy of the disk image, and the backup software, are stored on the computer that is backed up.
Bare metal backup differs from simple data backups where application data, but neither the applications nor the operating system is backed up or restored as a unit.

**Continuous backup:**  the continuous backup, also called Continuous data protection (CDP) or real-time backup, refers to backup of computer data by automatically saving a copy of every change made to that data, essentially capturing every version of the data that the user saves. It allows the user or administrator to restore data to any point in time.
Continuous backup is a service that captures changes to data to a separate storage location. There are multiple methods for capturing the continuous changes involving different technologies that serve different needs. Continuous backup based solutions can provide fine granularities of restorable objects ranging from crash-consistent images to logical objects such as files, mailboxes, messages, and database files and logs.

**Copy backup:** backs up the selected files, but does not mark the files as backed up (reset the archive bit). This is found in the backup with Windows 2003.

**Daily backup:** incremental backup of files that have changed today.

**Data salvaging/recovery:** the process of recovering data from storage devices when the normal operational methods are impossible. This process is typically performed by specialists in controlled environments with special tools. For example, a crashed hard disk may still have data on it even though it doesn't work properly. A data salvage specialist might be able to recover much of the original data by opening it up in a clean room and tinkering with the internal parts.

**Differential backup:** a cumulative backup of all changes made since the last full backup. The advantage to this is the quicker recovery time, requiring only a full backup and the latest differential backup to restore the system. The disadvantage is that for each day elapsed since the last full backup, more data needs to be backed up, especially if a majority of the data has been changed.

**Disaster recovery:** the process of recovering after a business disaster and restoring or recreating data. One of the main purposes of creating backups is to facilitate a successful disaster recovery. For maximum effectiveness, this process should be planned in advance and audited.

**Disk cloning:** the process of copying the contents of one computer hard disk to another disk or to an image file (see disk image below) for later recovery.

**Disk image:** single file or storage device containing the complete contents and structure representing a data storage medium or device, such as a hard drive, tape drive, floppy disk, CD/DVD/BD, or USB flash drive.

**Full backup:** it's a backup of all source files to the destination. In contrast to a drive image, this does not included the file allocation tables, partition structure and boot sectors. It is the starting point of all other backup types.

**Hot backup:** a backup of a database that is still running, and so changes may be made to the data while it is being backed up. Some database engines keep a record of all entries changed, including the complete new value. This can be used to resolve changes made during the backup.

**Image backup:** an image backup is a backup of an entire hard drive by means of creating its image and its probable consequential backup. It allows, in case of a disaster, by restoring a disk image to have the exact same system state as on the moment of the initial image backup.
Some backup programs only back up user files, boot information and files locked by the operating system, such as those in use at the time of the backup, may not be saved on some operating systems. A disk image contains all files, faithfully replicating all data.

**Incremental backup:** a backup that only contains the files that have changed since the most recent backup (either full or incremental). The advantage of this is quicker backup times, as only changed files need to be saved. The disadvantage is longer recovery times, as the latest full backup, and all incremental backups up to the date of data loss need to be restored.

**Media spanning:** sometimes a backup job is larger than a single destination storage medium. In this case, the job must be broken up into fragments that can be distributed across multiple storage media.

**Multiplexing:** the practice of combining multiple backup data streams into a single stream that can be written to a single storage device. For example, backing up 4 PCs to a single tape drive at once.

**Multistreaming:** the practice of creating multiple backup data streams from a single system to multiple storage devices. For example, backing up a single database to 4 tape drives at once.

**Normal backup:** full backup used by Windows Server 2003.

**Near store:** provisionally backing up data to a local staging backup device, possibly for later archival backup to a remote store device.

**Online backup storage:** the online backup storage is an offsite server used to store personal data files and folders, or the entire contents of a hard drive which is backed up by multiple computers over the Internet.

**Open file backup:** the ability to back up a file/folder while it is in use by another application.

**Remote store:** backing up data to an offsite permanent backup facility, either directly from the live data source or else from an intermediate near store device.

**Restore time:** the amount of time required to bring a desired data set back from the backup media.

**Retention time:** the amount of time in which a given set of data will remain available for restore. Some backup products rely on daily copies of data and measure retention in terms of days. Others retain a number of copies of data changes regardless of the amount of time.

**Robocopy** is a command-line file transfer utility for Microsoft Windows. Robocopy is functionally more comprehensive than the COPY command and XCOPY, but replaces neither. Created by Kevin Allen and first released as part of the Windows NT 4.0 Resource Kit, it has been a standard feature of Windows since Windows Vista and Windows Server 2008.

**Recovery point objectives (RPO)** is the amount of time between your data backups, whether that’s 24 hours or a month, and understanding that this is the span of time for which you’ll lose your data in the event of an incident. The shorter your RPO, the less data you lose, and vice versa.

**Recovery time objectives (RTO)** is the time it takes to restore your data. Generally, the faster or more streamlined your storage solution, the faster your recovery time will be. 

**Site-to-site backup:** backup, over the internet, to an offsite location under the user's control. Similar to remote backup except that the owner of the data maintains control of the storage location.

**Synthetic backup:** a restorable backup image that is synthesized on the backup server from a previous full backup and all the incremental backups since then. It is equivalent to what a full backup would be if it were taken at the time of the last incremental backup.

**System backup:** a system backup (or disk image) is a backup of all system files, which allows restoring the operating system to a working state after a crash. Usually, only special programs, targeted on backing up system files, can perform a system backup. Sometimes this term can be interpreted as system registry backup, i.e. backup the system and application settings stored in the registry.

**Tape backup:** a tape backup means to periodically copy the contents of all or a designated amount of data from its usual storage device to a tape cartridge device. In the event of a hard disk crash or hard disk failure, the data won't be lost. A tape backup can be done manually or, with appropriate software, be scheduled to run automatically.
Tape backup systems exist for needs ranging from backing up the hard disk on a personal computer to backing up large amounts of storage for archiving and disaster recovery purposes in a large enterprise as part of a storage area network (SAN), usually combining a hardware and software package.
Tape backup also includes the ability to restore data that has been backed up back to hard disk storage devices when needed.

**Tape library:** a storage device which contains tape drives, slots to hold tape cartridges, a barcode reader to identify tape cartridges and an automated method for physically moving tapes within the device. These devices can store immense amounts of data.

**Trusted paper key:** a machine-readable print of a cryptographic key.

**Virtual Tape Library (VTL):** a storage device that appears to be a tape library to backup software, but actually stores data by some other means. A VTL can be configured as a temporary storage location before data is actually sent to real tapes or it can be the final storage location itself.
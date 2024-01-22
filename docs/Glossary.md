Glossary (by Wikipedia)
=======================

**3-2-1 Rule (or 3-2-1 Backup Strategy):** The idea that a minimal backup solution should include three copies of the data, including two local copies and one remote copy.

**Backup policy:** an organization's procedures and rules for ensuring that adequate numbers and types of backups are made, including suitably frequent testing of the process for restoring the original production system from the backup copies.

**Backup rotation scheme:** a method for effectively backing up data where multiple media are systematically moved from storage to usage in the backup process and back to storage. There are several different schemes. Each takes a different approach to balance the need for a long retention period with frequently backing up changes. Some schemes are more complicated than others.

**Backup site:** a place where business can continue after a data loss event. Such a site may have ready access to the backups or possibly even a continuously updated mirror.

**Backup software:** computer software applications that are used for performing the backing up of data, i.e., the systematic generation of backup copies.

**Backup window:** the period of time that a system is available to perform a backup procedure. Backup procedures can have detrimental effects to system and network performance, sometimes requiring the primary use of the system to be suspended. These effects can be mitigated by arranging a backup window with the users or owners of the system(s).

**Copy backup:** backs up the selected files, but does not mark the files as backed up (reset the archive bit). This is found in the backup with Windows 2003.

**Daily backup:** incremental backup of files that have changed today.

**Data salvaging/recovery:** the process of recovering data from storage devices when the normal operational methods are impossible. This process is typically performed by specialists in controlled environments with special tools. For example, a crashed hard disk may still have data on it even though it doesn't work properly. A data salvage specialist might be able to recover much of the original data by opening it up in a clean room and tinkering with the internal parts.

**Differential backup:** a cumulative backup of all changes made since the last full backup. The advantage to this is the quicker recovery time, requiring only a full backup and the latest differential backup to restore the system. The disadvantage is that for each day elapsed since the last full backup, more data needs to be backed up, especially if a majority of the data has been changed.

**Disaster recovery:** the process of recovering after a business disaster and restoring or recreating data. One of the main purposes of creating backups is to facilitate a successful disaster recovery. For maximum effectiveness, this process should be planned in advance and audited.

**Disk cloning:** the process of copying the contents of one computer hard disk to another disk or to an image file (see disk image below) for later recovery.

**Disk image:** single file or storage device containing the complete contents and structure representing a data storage medium or device, such as a hard drive, tape drive, floppy disk, CD/DVD/BD, or USB flash drive.

**Full backup:** a backup of all (selected) files on the system. In contrast to a drive image, this does not included the file allocation tables, partition structure and boot sectors.

**Hot backup:** a backup of a database that is still running, and so changes may be made to the data while it is being backed up. Some database engines keep a record of all entries changed, including the complete new value. This can be used to resolve changes made during the backup.

**Incremental backup:** a backup that only contains the files that have changed since the most recent backup (either full or incremental). The advantage of this is quicker backup times, as only changed files need to be saved. The disadvantage is longer recovery times, as the latest full backup, and all incremental backups up to the date of data loss need to be restored.

**Media spanning:** sometimes a backup job is larger than a single destination storage medium. In this case, the job must be broken up into fragments that can be distributed across multiple storage media.

**Multiplexing:** the practice of combining multiple backup data streams into a single stream that can be written to a single storage device. For example, backing up 4 PCs to a single tape drive at once.

**Multistreaming:** the practice of creating multiple backup data streams from a single system to multiple storage devices. For example, backing up a single database to 4 tape drives at once.

**Normal backup:** full backup used by Windows Server 2003.

**Near store:** provisionally backing up data to a local staging backup device, possibly for later archival backup to a remote store device.

**Open file backup:** the ability to back up a file while it is in use by another application. See File locking.

**Remote store:** backing up data to an offsite permanent backup facility, either directly from the live data source or else from an intermediate near store device.

**Restore time:** the amount of time required to bring a desired data set back from the backup media.

**Retention time:** the amount of time in which a given set of data will remain available for restore. Some backup products rely on daily copies of data and measure retention in terms of days. Others retain a number of copies of data changes regardless of the amount of time.

**Site-to-site backup:** backup, over the internet, to an offsite location under the user's control. Similar to remote backup except that the owner of the data maintains control of the storage location.

**Synthetic backup:** a restorable backup image that is synthesized on the backup server from a previous full backup and all the incremental backups since then. It is equivalent to what a full backup would be if it were taken at the time of the last incremental backup.

**Tape library:** a storage device which contains tape drives, slots to hold tape cartridges, a barcode reader to identify tape cartridges and an automated method for physically moving tapes within the device. These devices can store immense amounts of data.

**Trusted paper key:** a machine-readable print of a cryptographic key.

**Virtual Tape Library (VTL):** a storage device that appears to be a tape library to backup software, but actually stores data by some other means. A VTL can be configured as a temporary storage location before data is actually sent to real tapes or it can be the final storage location itself.

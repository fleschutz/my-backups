Data Backup & Recovery
======================

This repo provides basic support to backup your data as easy as possible. More information about backups, recovery, strategies, etc. can be found in the [docs](docs) folder.

Preparation
-----------
1. Required are one or more SSD's or harddisks ("backup disks") with enough capacity to hold your data.
2. Take a backup disk and write the disk size and a unique name onto it (e.g. "4TB ALPHA BACKUP"), then insert it into your computer and rename the disk using the same name.
3. Download this repo (see green button) and unzip it into the top folder of your backup disk.
4. Repeat all steps for each backup disk.

Backup your Data
----------------
1. Insert the backup disk into your computer.
2. Open the top folder 'my-backup' and execute the script 'Backup my Home Folder.bat'. This starts an incremental backup of your home folder into folder 'my-backup/Backup_of_Home_Folder'. 
3. Execute all other corresponding scripts.
4. Eject the backup disk and store it in a safe place.
5. Repeat all steps at least every week.

Recover your Data
-----------------
1. Insert the correct(!) backup disk into your computer.
2. Manually copy (not move!) the missing files and folders from the backup disk onto your media.
3. Eject the backup disk and store it in a safe place.

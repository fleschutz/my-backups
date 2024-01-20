Data Backup & Recovery
======================

This repo contains instructions for a professional and comfortable backup of your data.

🔧 Preparation
---------------
1. Required are one or more SSD's or harddisks (*"backup disks"*) with enough capacity to hold your data.
2. Take a backup disk and write the disk size and a unique name onto it (e.g. *"4TB FRIDAY BACKUP"*), then insert it into your computer and rename the disk using the same name.
3. Download this repo (see green button) and unzip it into the top folder of your backup disk.
4. Repeat all steps for each backup disk.

💾 Backup your Data
--------------------
1. Insert the next backup disk into your computer and open the top folder 📁my-backups.
2. Execute the script `Backup my Home Folder.bat` to start an incremental backup of your home folder into folder 📁my-backups/Backup_of_Home_Folder. 
3. Execute all other corresponding scripts.
4. Eject the backup disk and store it in a safe place.
5. Repeat all steps at least every week.

🪂 Recover your Data
---------------------
1. Insert the correct(!) backup disk into the computer.
2. Open the top folder 📁my-backups,  then open the corresponding 📁Backup_of_* folders.
3. Manually copy (not move!) the missing files and folders onto your media.
4. Eject the backup disk and store it in a safe place again.

Questions?
----------
More information can be found in the [docs](docs) folder (strategies, backups, first aid, recovery, etc)

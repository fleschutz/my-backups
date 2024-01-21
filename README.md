Data Backup & Recovery
======================

This repo contains instructions and scripts for a professional and comfortable backup of your data.

🔧 Planning & Preparation
--------------------------
1. Read the [docs](docs) to plan your personal backup strategy.
2. Required are one or more SSD's or harddisks (*"backup disks"*) with enough capacity to hold your data.
3. Take a backup disk and write the disk size and a unique name onto it (e.g. *"4TB FRIDAY BACKUP"*), then insert it into the computer and rename the disk using the same name.
4. Download this repo (see green button) and unzip it into the top folder of your backup disk.
5. Repeat all steps for each backup disk.

💾 Backup your Data
--------------------
1. Insert the next backup disk into your computer and open the top folder **📁my-backups**.
2. Execute the script **Backup my Home Folder.bat** to start an incremental backup of your home folder into folder **📁my-backups/Backup_of_Home_Folder**. 
3. Execute all other corresponding scripts.
4. Eject the backup disk and store it in a safe place.
5. Repeat all steps at least every week.

🪂 Recover your Data
---------------------
1. Select the correct(!) backup disk. Read the the [docs](docs) in case it's damaged.
2. Insert it into the computer and open the folder **📁my-backups/Backup_of_...**.
3. Manually copy (not move!) the missing files and folders onto your media.
4. Eject the backup disk and store it in a safe place again.

❓ Any Questions?
------------------
More and detailled information can be found in the [docs](docs) folder.

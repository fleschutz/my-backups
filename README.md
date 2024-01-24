Data Backups & Recovery
=======================

This repository contains instructions and scripts for a professional and comfortable local backup of your data.

🔧 Planning & Preparation
--------------------------
1. Read the [docs](docs) first to plan your personal backup strategy.
2. Required are one or more SSD's or harddisks (*"backup disks"*) with enough capacity to hold your data.
3. To prevent confusion take a backup disk and write/print the disk size and a unique name onto it (e.g. *"2TB LAPTOP BACKUP"*), then insert it into the computer and rename the disk using the same name.
4. Download this repo (see green button) and unzip it into the top folder of your backup disk.
5. Repeat steps 3 and 4 for each backup disk.

💾 Backup your Data
--------------------
1. Connect the next backup disk to the computer and open the top folder **📁my-backups** and then **📁scripts**.
2. Execute the script **📄Backup_my_Home_Folder.bat** to copy your home folder into the new folder **📁Backup_of_Home_Folder** (via incremental backup). 
3. Execute any other appropriate script.
4. Disconnect the backup disk and store it in a safe place.
5. Repeat all steps at least every week.

🪂 Recover your Data
---------------------
1. Connect the correct(!) backup disk to the computer and open the top folder **📁my-backups** and then the corresponding folder **📁Backup_of_...**.
2. Copy (not move!) the missing or corrupted data back to the computer.
3. Disconnect the backup disk and store it in a safe place again.

⚠️ Notes
---------
* Read the [docs](docs) if you have questions or if the backup disk is damaged.
* An incremental backup is used! The first time it's a full backup (slow), but the next time only differences are copied (way faster).
* The backup is not encrypted to keep everything simple and robust. Use an encryption program and a vault to protect your backup against unauthorized physical access.
* We strongly recommend to follow the 3-2-1 rule of backups: (3) Keep 3 copies of any important file: 1 primary and 2 backups. (2) Keep the files on 2 different media types to protect against different types of hazards. (1) Store 1 copy offsite (e.g., outside your home or business facility).
* DISCLAIMER: All informations are given according to my best knowledge, but without guarantee. 

📧 Feedback
------------
Send your email feedback to: markus.fleschutz [at] gmail.com

🤝 License & Copyright
-----------------------
This open source project is licensed under the CC0-1.0 license. All trademarks are the property of their respective owners.

Personal Backups Made Easy
==========================

This repository contains instructions, scripts, and documents for a professional and comfortable local backup of your data.

📋 Planning & Preparation
--------------------------
1. Read the [documents](docs/) first to plan your personal backup strategy.
2. Required are one or more SSD's or harddisks (*"backup disks"*) with enough capacity to hold your data.
3. Take the backup disks and write/print the disk size and a unique name onto them (e.g. *"4TB FRIDAY BACKUP"*), then connect them with the computer and rename the disks using the same name.
4. Download this zipped repo (7MB, see green button) and unzip it as top folder 📁*my-backups* onto each backup disk.

💾 Backup your Data
--------------------
1. Connect the next backup disk to the computer and open the top folder 📁*my-backups* and then 📁*scripts*.
2. Execute a script, e.g. 📄*Backup_my_Downloads.bat* - it creates a new folder 📁*my-backups/Backup_of_Downloads* and copies the data into it. Repeat this for any appropriate script.
3. Disconnect the backup disk and store it in a secure, separate location.

🪂 Recover your Data
---------------------
1. Fetch the backup disk with the **latest** backup.
2. Check the disk - in case it's damaged read the [documents](docs/), please.
3. Connect the disk with the computer and open the top folder 📁*my-backups* and then e.g. 📁*Backup_of_Downloads*.
4. Manually copy (=overwrite files) or sync (=overwrite folder content) the missing or corrupted data back to the computer (but don't move the data).
5. Disconnect the disk and store it in the secure, separate location again.

⚠️ Notes
---------
* At first a full backup is made (slow for big data), but then only changed files/folders are copied (way faster).
* Strongly recommended is at least the **3-2-1 rule**: Keep **3** copies of any important file (1 primary and 2 backups). Keep the files on **2** different media types to protect against different types of hazards. Store **1** copy offsite (e.g., outside your home or business facility).
* One of these copies should be stored offline to protect against ransomware attacks.
* The backup isn't encrypted to keep it simple and robust! Use an encryption program and a vault to protect your backup against unauthorized physical access.
* Feedback is welcome! Send your email feedback to: markus.fleschutz [at] gmail.com
* **DISCLAIMER:** All informations are given according to my best knowledge, but without guarantee.

🤝 License & Copyright
-----------------------
This open source project is licensed under the CC0-1.0 license. All trademarks are the property of their respective owners.

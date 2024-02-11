Personal Backups Made Easy
==========================

This repository contains instructions, scripts, and documents for a professional and comfortable local backup of your data.

📋 Planning & Preparation
--------------------------
1. Read the [documents](docs/) first to plan your personal backup strategy.
2. Required are one or more SSD's or harddisks (*"backup disks"*) with enough capacity to hold your data.
3. Take the backup disks and write/print the disk size and a unique name onto them (e.g. *"4TB FRIDAY BACKUP"*), then connect them with the computer and rename the disks using the same name.
4. Download the repo (see green button, then 'Download ZIP') and unzip it as top folder 📁*my-backups* onto each backup disk.

💾 Backup your Data
--------------------
1. Connect the **next** backup disk to the computer and open the top folder 📁*my-backups* and then 📁*scripts*.
2. Execute each appropriate script (e.g. 📄*Backup_my_Downloads.bat*), it copies the data into 📁*Backup_of_Downloads* (created when non-existent).
3. Disconnect the backup disk and store it in a secure, separate location.

🪂 Recover your Data
---------------------
1. Fetch the backup disk with the **latest** backup (see 📄Backup_History.txt for verification).
2. Check the disk - in case it's damaged read the [documents](docs/), please.
3. Connect the disk with the computer and open the top folder 📁*my-backups* and then e.g. 📁*Backup_of_Downloads*.
4. Manually copy (=overwrite files) or sync (=overwrite folder content) the missing or corrupted data back to the computer (but don't move the data).
5. Disconnect the disk and store it in the secure, separate location again.

⚠️ Notes
---------
* A full backup is made at first (slow for big data), but next time only changed files/folders are copied (way faster).
* Regularly backup files according to your backup plan.
* Strongly recommended is at least the **3-2-1 rule**: Keep **3** copies of any important file (1 primary and 2 backups). Keep the files on **2** different media types to protect against different types of hazards. Store **1** copy offsite (e.g., outside your home or business facility).
* One of these copies should be stored offline to protect against ransomware attacks.
* No encryption is performed to keep it simple and robust! Use an encryption program and a vault to protect your backup against unauthorized physical access.
* Test your backups regularly to ensure that they are working properly. Restore your backups to a test environment and check that all of your data can be accessed as expected.
* Feedback is welcome! Create a pull request or send your email feedback to: markus.fleschutz [at] gmail.com
* **DISCLAIMER:** All informations are given according to my best knowledge, but without guarantee.

🤝 License & Copyright
-----------------------
This open source project is licensed under the CC0-1.0 license. All trademarks are the property of their respective owners.

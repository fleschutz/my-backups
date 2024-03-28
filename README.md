Checklist for Data Backups & Recovery
=====================================

This repository contains a simple checklist, instructions, scripts, and documents for a professional and comfortable local backup of your data.

📋 Planning & Preparation
--------------------------
- [ ] Read the [documents](docs/) first to plan your personal backup strategy.
- [ ] Required are one or more harddisks ("*backup disks*") with enough capacity to hold your data.
- [ ] Take the backup disks and write/print the disk size and a unique name onto them (e.g. "*4TB MEDIA BACKUP #1*"), then connect them with the computer and rename the disks using the same name.
- [ ] Download this repo (see green button, then '*Download ZIP*') and unzip and rename it as top folder 📁*Backups4U* onto each backup disk.

💾 Backup your Data
--------------------
- [ ] Connect the **next** backup disk to the computer.
- [ ] Open the top folder 📁*Backups4U* and then 📁*scripts*.
- [ ] Execute each appropriate script (e.g. 📄*back_up_Downloads.bat*) which copies the data into a new folder (if non-existing), e.g. 📁*Backup_of_Downloads*.
- [ ] Disconnect the backup disk and store it in a separate and secure location.

🪂 Recover your Data
---------------------
- [ ] Get the backup disk with the **latest** backup.
- [ ] Check the disk - in case it's damaged read the [documents](docs/), please.
- [ ] Connect the disk with the computer and open the top folder 📁*Backups4U* and then e.g. 📁*Backup_of_Downloads*.
- [ ] Manually copy (=overwrite files) or sync (=overwrite folder content) the missing or corrupted data back to the computer (but DO NOT move the data).
- [ ] Disconnect the disk and store it in the separate and secure location again.

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

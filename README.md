![image](folder.jpg) The Backup Checklist
=========================================
Prevent data loss by backing up your valuable data! Just follow this checklist with backup scripts and documents to perform a professional, regular and comfortable local data backup.

📋 Planning & Preparation
--------------------------
- [ ] 1. **Read the [documents](documents/)** to plan the best backup strategy.
- [ ] 2. **Get hard drives** with enough capacity to hold all your data.
- [ ] 3. **Label the hard drives** by writing the disk size and a unique name onto them (e.g. "*4TB BACKUP DISK #1*"), then connect them with the computer and rename the disks using the same name.
- [ ] 4. **Download this [repository](https://github.com/fleschutz/my-backups/archive/refs/tags/v0.2.zip)** (5.8MB), then unzip and copy it as top folder 📁*my-backups* onto each backup harddisk.
- [ ] 5. **Set up an automatic reminder** to back up your data every day/week/month/etc.

💾 How to back up your Data
----------------------------
- [ ] 1. **Connect your smartphone** to the PC and copy photos into the *Pictures* folder, documents into the *Documents* folder, and so on.
- [ ] 2. **Connect the next hard drive** to the PC and open the top folder 📁*my-backups* and then 📁*backup_scripts*.
- [ ] 3. **Execute the backup scripts** one after another, e.g. 📄*copy_Pictures.bat* copying your 📁*Pictures* folder to the backup disk at: 📁*my-backups/my_data/Pictures*
- [ ] 4. **Disconnect the hard drive** and store it in a separate (!) and secure (!) location.

🪂 How to recover your Data
---------------------------
- [ ] 1. **Get the hard drive** with the latest (!) backup.
- [ ] 2. **Check the hard drive:** in case it's damaged read the [documents](documents/).
- [ ] 3. **Connect the hard drive** with the computer and open the top folder 📁*my-backups* and then 📁*my_data*.
- [ ] 4. **Manually copy** (=overwrite files) or sync (=overwrite folder content) the missing or corrupted data back to the computer (but DON'T MOVE the data).
- [ ] 5. **Disconnect the hard drive** and store it in the separate and secure location again.

⚠️ Notes
---------
* At first a full backup is made (slow for big data), then from the next time on only changes are copied (way faster).
* See the Logbook.txt (written by the backup scripts) for a history of your backups performed.
* Recommended is the **3-2-1 rule**: Keep **3** copies of any important file (1 primary and 2 backups). Keep the files on **2** different media types to protect against different types of hazards. Store **1** copy offsite (e.g., outside your home or business facility). One of these copies should be stored offline to protect against ransomware attacks.
* No encryption is performed to keep it simple and robust! Use an encryption program and a vault to protect your backups against unauthorized physical access.
* Test your backups regularly to ensure that they are working properly. Restore your backups to a test environment and check that all of your data can be accessed as expected.
* Feedback is welcome! Create a pull request or send your email feedback to: markus.fleschutz [at] gmail.com
* **DISCLAIMER:** All informations are given according to my best knowledge, but without guarantee.

🤝 License & Copyright
-----------------------
This open source project is licensed under the CC0-1.0 license. All trademarks are the property of their respective owners.

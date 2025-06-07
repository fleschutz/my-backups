![image](folder.jpg) Bulletproof Backups
========================================
Nowadays, data loss is a disaster! This checklist helps to perform professional, regular and comfortable backups. The backup is performed *on site* for quick recovery and kept *offline* to prevent ransomware attacks.

📋 Planning & Preparation
--------------------------
- [ ] 1. **[Read the documents](docs/)** to plan your strategy, recommended is the [3-2-1 backup strategy](docs/3-2-1_Backup_Strategy.md).
- [ ] 2. **Get hard drives** with enough backup capacity (use different vendors/models/types and maybe rugged ones).
- [ ] 3. **Check the hard drives** for errors and use error-free ones only.
- [ ] 4. **Label the hard drives** by writing the disk size and a unique name onto them (e.g. "*4TB BACKUP DISK #1*"), then connect them with the computer and rename the disks using the same name.
- [ ] 5. **Download this [repo (5.8MB)](https://github.com/fleschutz/bulletproof-backups/archive/refs/tags/v0.2.zip)**, then unzip it as top folder 📁*bulletproof-backups* onto each hard drive.
- [ ] 6. **Set up a reminder** in your digital calendar to back up your data every day/week/month/etc.

💾 How to back up your Data
----------------------------
- [ ] 1. **Connect your smartphone** to the PC and copy photos into the *Pictures* folder, documents into the *Documents* folder, and so on.
- [ ] 2. **Connect the next hard drive** to the PC and open the top folder 📁*bulletproof-backups* and then 📁*scripts*.
- [ ] 3. **Execute the backup scripts** one after another, e.g. 📄*save_Pictures.bat* which copies your 📁*Pictures* folder to the backup disk at 📁*bulletproof-backups/DATA/Pictures*
- [ ] 4. **Disconnect the drive** properly and store it carefully in a separate (!) and secure (!) location.

🪂 How to recover your Data
---------------------------
- [ ] 1. **Get the hard drive** with the latest (!) backup.
- [ ] 2. **Check the hard drive:** in case it's damaged read the [documents](docs/).
- [ ] 3. **Connect the hard drive** to the PC and open the top folder 📁*bulletproof-backups* and then 📁*DATA*.
- [ ] 4. **Manually copy** (=overwrite files) or sync (=overwrite folder content) the missing or corrupted data back to the computer (but DON'T MOVE the data).
- [ ] 5. **Disconnect the drive** properly and store it carefully in the separate and secure location again.

💡 Hints
--------
* **Full backups** are only made once (slow for big data), but then only changes ("deltas") are copied in no time.
* **The Logbook.csv** file gets updated automatically by the backup scripts (it's a table in .CSV format with backup details).
* **No encryption** is performed to keep it simple and robust! Use an encryption program and a vault to prevent unauthorized access.
* **Test your backups** regularly to ensure that they are working properly. Restore your backups to a test environment and check that all of your data can be accessed as expected.
* **Feedback is welcome!** Create a pull request or send your email feedback to: markus.fleschutz [at] gmail.com
* **DISCLAIMER:** All informations are given according to my best knowledge, but without guarantee.

🤝 License & Copyright
-----------------------
This open source project is licensed under the CC0-1.0 license. All trademarks are the property of their respective owners.

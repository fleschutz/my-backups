![image](folder.jpg) Checklist for Offline & OnSite Data Backups
================================================================
Prevent data loss by backing up your valuable data! Follow this checklist to perform a professional, regular and comfortable data backup (*offline* to prevent ransomware attacks and *on site* for quick recovery).

📋 Planning & Preparation
--------------------------
- [ ] 1. **Read the [documents](docs/)** first to plan the best backup strategy, e.g. [3-2-1](docs/3-2-1_Backup_Strategy.md).
- [ ] 2. **Get hard drives** with enough capacity (use different vendors/models/types).
- [ ] 3. **Label the hard drives** by writing the disk size and a unique name onto them (e.g. "*4TB VIDEO BACKUP #1*"), then connect them with the computer and rename the disks using the same name.
- [ ] 4. **Download this [repository](https://github.com/fleschutz/my-backups/archive/refs/tags/v0.2.zip)** (5.8MB), then unzip and copy it as top folder 📁*my-backups* onto each backup harddisk.
- [ ] 5. **Set up a reminder** in your digital calendar to back up your data every day/week/month/etc.

💾 How to back up your Data
----------------------------
- [ ] 1. **Connect your smartphone** to the PC and copy photos into the *Pictures* folder, documents into the *Documents* folder, and so on.
- [ ] 2. **Connect the next hard drive** to the PC and open the top folder 📁*my-backups* and then 📁*scripts*.
- [ ] 3. **Execute the backup scripts** one after another, e.g. 📄*save_Pictures.bat* which copies your 📁*Pictures* folder to the backup disk at 📁*my-backups/my_data/Pictures*
- [ ] 4. **Disconnect the drive** properly and store it carefully in a separate (!) and secure (!) location.

🪂 How to recover your Data
---------------------------
- [ ] 1. **Get the hard drive** with the latest (!) backup.
- [ ] 2. **Check the hard drive:** in case it's damaged read the [documents](docs/).
- [ ] 3. **Connect the hard drive** to the PC and open the top folder 📁*my-backups* and then 📁*my_data*.
- [ ] 4. **Manually copy** (=overwrite files) or sync (=overwrite folder content) the missing or corrupted data back to the computer (but DON'T MOVE the data).
- [ ] 5. **Disconnect the drive** properly and store it carefully in the separate and secure location again.

💡 Hints
--------
* **A full backup** is made at first (slow for big data), but then only changes ("deltas") are copied in no time.
* **A backup logbook** is updated automatically by the backup scripts ('Logbook.csv', a table in .CSV format with backup details).
* **No encryption** is currently performed to keep it simple and robust! We recommend an encryption program and a vault to prevent unauthorized access.
* **Test your backups** regularly to ensure that they are working properly. Restore your backups to a test environment and check that all of your data can be accessed as expected.
* **Feedback is welcome!** Create a pull request or send your email feedback to: markus.fleschutz [at] gmail.com
* **DISCLAIMER:** All informations are given according to my best knowledge, but without guarantee.

🤝 License & Copyright
-----------------------
This open source project is licensed under the CC0-1.0 license. All trademarks are the property of their respective owners.

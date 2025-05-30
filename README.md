# Bash File Shredder

Bash File Shredder is a Free and Open-source, secure, user-friendly utility that permanently deletes sensitive files with optional logging, ensuring data is irrecoverable and audit-ready.

**Description**

Bash File Shredder is a secure, easy-to-use utility for permanently deleting files. By overwriting each file multiple times, this tool ensures no data can be recovered, giving users peace of mind when handling sensitive information. The optional logging feature provides a record of deleted files, making it ideal for users who need secure and auditable data deletion.

**Table of Contents**

1. Installation
2. Usage
3. Features
4. Tests

**Installation**

1. Download the Bash_File_Shredder folder, which contains the bash_File_Shredder.sh script.
2. Extract the folder to your preferred directory.

**Usage**

To use this program, follow these steps:

1. Open your terminal.
2. Navigate to the directory containing the "Bash File Shredder" folder.
3. Ensure the script has executable permissions: chmod +x bash_File_Shredder.sh
4. Run the script: ./bash_File_Shredder.sh
5. Enable or disable logging of the deletion process.
6. Enter up to 5 file paths for secure deletion.
7. Confirm shredding: Confirm to securely overwrite file contents 25 times.
8. Confirm deletion: After shredding, confirm to delete the files.
9. Check log: If logging is enabled, file details will be recorded in deleted_files_log.csv, which will appear in the directory the program is executed in.

**Features**

**Path Validation and Entry:**

Accepts up to 5 file paths. Validates each file path, restarting if none are provided initially.

**Secure Shredding:**

Uses the shred command to overwrite files 25 times, zeroing out data and displaying progress.

**Optional Deletion:**

Prompts users to delete files after shredding, using rm for secure removal.

**Optional Logging:**

Logs the file path, deletion date, and deletion time in a CSV format, compatible with LibreOffice Calc for audit trails.

**Tests**

All features of Bash File Shredder have been tested by a professional QA Tester to ensure functionality, data protection, and usability. Optional logging, secure deletion, and file path validation work seamlessly for a user-friendly experience.

**Disclaimer:** 

This Bash File Shredder tool is provided as-is, without any warranties or guarantees of any kind, including but not limited to functionality, security, or compatibility. Use this tool at your own risk. The developer is not responsible for any data loss, damage to files, or other consequences that may arise from the use or misuse of this tool. Ensure that you have backups of any critical data before using the file shredder, as data deleted with this tool is irrecoverable.

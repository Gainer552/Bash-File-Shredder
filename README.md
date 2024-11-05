# Bash-File-Shredder
A free and open-source batch file shredding tool. Simple, secure, effective for the average user.

## Description:

I have a passion for making free and open-source software that is practical, beneficial, and easy to use. I made this program to provide an safe, effectiive, and secure way for people to hide and delete their data, w/out leaving anything behind to be recovered.

## Table of Contents

- [Installation](#Installation)
- [Usage](#Usage)
- [Features] (#Features)
- [Tests] (#Tests)

## Installation

Download the folder Bash Shredder which contains the bash_Shredder.sh program. Extract the folder to your directory using the appropriate command.

## Usage

To use this program do the following:

1. Open your terminal (TTY).
2. Navigate to the directory containing the extracted "Bash File Shredder" folder.
3. Enter the directory.
4. Ensure you give the file the required permission to run on your system or use it with the "sudo" command.
5. Run the command "./bash_File_Shredder.sh".
6. You will be prompted to enter exact paths for the files to be deleted. Copy/paste the path into the terminal. Add as many files as you require to be shredded.
7. Once shredding is complete, you will be prompted to delete the files. If you to wish to delete them from your system type "y or Y" and hit enter, otherwise type "n or N" and hit enter.
8.Confirm the files have been deleted by running the command "ls -lah". If you did not delete any files, then confirm the data has been overwritten, by viewing the contents of the files. You should see a stream of 0's.

Screenshots:

N/A

---

## Features

Path Storage:

Takes user input for paths and stores them into variables for reference during shredding, or deletion, or both.

Shredder:

Uses the shred command, with the -v, -z, -n flags to display progress, zero out the data, and overwrite the data 25 times. References the paths to files specified by the user.

Delete:

Uses the rm command do delete the files after they have been securely overwritten. References the paths to files specified by the user.

## Tests

All features have been tested by a trained & professional QA Tester and have been proven to work flawlessly.

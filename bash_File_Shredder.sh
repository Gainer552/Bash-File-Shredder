#! /bin/bash

# Display ASCII art
cat << "EOF"
 ______        _       ______   ____  ____   ________  _____  _____     ________    ______   ____  ____  _______     ________  ______   ______   ________  _______     
|_   _ \      / \    .' ____ \ |_   ||   _| |_   __  ||_   _||_   _|   |_   __  | .' ____ \ |_   ||   _||_   __ \   |_   __  ||_   _ `.|_   _ `.|_   __  ||_   __ \    
  | |_) |    / _ \   | (___ \_|  | |__| |     | |_ \_|  | |    | |       | |_ \_| | (___ \_|  | |__| |    | |__) |    | |_ \_|  | | `. \ | | `. \ | |_ \_|  | |__) |   
  |  __'.   / ___ \   _.____`.   |  __  |     |  _|     | |    | |   _   |  _| _   _.____`.   |  __  |    |  __ /     |  _| _   | |  | | | |  | | |  _| _   |  __ /    
 _| |__) |_/ /   \ \_| \____) | _| |  | |_   _| |_     _| |_  _| |__/ | _| |__/ | | \____) | _| |  | |_  _| |  \ \_  _| |__/ | _| |_.' /_| |_.' /_| |__/ | _| |  \ \_  
|_______/|____| |____|\______.'|____||____| |_____|   |_____||________||________|  \______.'|____||____||____| |___||________||______.'|______.'|________||____| |___| 
EOF

echo

#Greeting and instructions.
echo "Hello, this utility securely deletes files! To get started, enter the exact paths of up to 5 files,
when prompted, after specify whether you'd like to delete them or not. You can press CTRL + C to exit at any time."
echo

# Prompts user to enable/disable logging.
read -p "Would you like to enable logging of the data deletion process (y/n): " enable_logging
if [[ "$enable_logging" == "y" || "$enable_logging" == "Y" ]]; then
	log_file="deleted_files_log.csv"
# Formatting for log.
	if [ ! -f "$log_file" ]; then
		echo "File Path, Deletion Date, Deletion Time" > "$log_file"
	fi
fi
echo

# Requests names of files from user.
read -p "What is the 1'st file path?" file1
# Validation of file path entry.
if [ -z "$file1" ]; then
	echo
	echo "Error: No file path provided. Exiting"
	echo
	exec "$0"
fi
read -p "What is the 2'nd file path?" file2
read -p "What is the 3'rd file path?" file3
read -p "What is the 4'th file path?" file4
read -p "What is the 5'th file path?" file5
echo

# Verifies the paths are for files.
[ -f "$file1" ] && [ -f "$file2" ] && [ -f "$file3" ] && [ -f "$file4" ] && [ -f "$file5" ];
# Overwrites data in files 25 times, with zeros, and displays progress.
read -p "Please confirm you'd like to shred these files (y/n): " confirm_shred
echo
if [[ "$confirm_shred" == "y" || "$confirm_shred" == "Y" ]]; then
	shred -z -v -n 25 "$file1" "$file2" "$file3" "$file4" "$file5"
	echo
	echo "Files have been securely shredded!"
else
	echo "Shredding cancelled."
fi
echo

# Deletes files after overwritting them.
read -p "Please confirm you'd like to delete the files (y/n): " confirm_Deletion
echo
if [[ "$confirm_Deletion" == "y" || "$confirm_Deletion" == "Y" ]]; then
	rm "$file1" "$file2" "$file3" "$file4" "$file5"
	echo
	echo "Files have been permanently deleted!"
	echo

# Log deletion if enabled
    if [[ "$enable_logging" == "y" || "$enable_logging" == "Y" ]]; then
        for file in "$file1" "$file2" "$file3" "$file4" "$file5"; do
            if [ -n "$file" ]; then
                echo "$file,$(date +%F),$(date +%T)" >> "$log_file"
            fi
        done
        echo "File deletion logged in $log_file"
        echo
    fi
else
	echo "Deletion cancelled."
	echo
fi
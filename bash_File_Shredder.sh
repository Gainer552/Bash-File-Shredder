# ______        _       ______   ____  ____   ________  _____  _____     ________    ______   ____  ____  _______     ________  ______   ______   ________  _______     
#|_   _ \      / \    .' ____ \ |_   ||   _| |_   __  ||_   _||_   _|   |_   __  | .' ____ \ |_   ||   _||_   __ \   |_   __  ||_   _ `.|_   _ `.|_   __  ||_   __ \    
#  | |_) |    / _ \   | (___ \_|  | |__| |     | |_ \_|  | |    | |       | |_ \_| | (___ \_|  | |__| |    | |__) |    | |_ \_|  | | `. \ | | `. \ | |_ \_|  | |__) |   
#  |  __'.   / ___ \   _.____`.   |  __  |     |  _|     | |    | |   _   |  _| _   _.____`.   |  __  |    |  __ /     |  _| _   | |  | | | |  | | |  _| _   |  __ /    
# _| |__) |_/ /   \ \_| \____) | _| |  | |_   _| |_     _| |_  _| |__/ | _| |__/ | | \____) | _| |  | |_  _| |  \ \_  _| |__/ | _| |_.' /_| |_.' /_| |__/ | _| |  \ \_  
#|_______/|____| |____|\______.'|____||____| |_____|   |_____||________||________|  \______.'|____||____||____| |___||________||______.'|______.'|________||____| |___| 
#

#! /bin/bash

# Requests names of files from user.
read -p "What is the path to the 1'st file you'd like deleted?" file1
read -p "What is the 2'nd file path?" file2
read -p "What is the 3'rd file path?" file3
read -p "What is the 4'th file path?" file4
read -p "What is the 5'th file path?" file5

# Initiates the bulk file shredding process. Please enter the names of your files, before using.
[ -f "$file1" ] && [ -f "$file2" ] && [ -f "$file3" ] && [ -f "$file4" ] && [ -f "$file5" ];
# Overwrites data in files 25 times, with zeros, and displays progress.
read -p "Please confirm you'd like to shred these files (y/n): " confirm_shred
if [[ "$confirm_shred" == "y" || "$confirm_shred" == "Y" ]]; then
	shred -z -v -n 25 "$file1" "$file2" "$file3" "$file4" "$file5"
	echo "Files have been securely shredded!"


# Deletes files after overwritting them.
read -p "Please confirm you'd like to delete the files (y/n): " confirm_Deletion
if [[ "$confirm_Deletion" == "y" || "$confirm_Deletion" == "Y" ]]; then
	rm "$file1" "$file2" "$file3" "$file4" "$file5"
	echo "Files have been permanently deleted!"
else
	echo "Shredding cancelled."
fi
else
	echo "Deletion cancelled."
fi

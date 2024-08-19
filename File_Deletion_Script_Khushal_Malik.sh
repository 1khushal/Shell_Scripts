#!/bin/bash

#***************************************************************************
# File_Name        : File_Deletion_Script_Khushal_Malik                    *
# Description      : Script to delete the previous day's files             *
# Created_By       : Khushal Malik                                         *
# Date_Of_Creation : 19.Aug.2024                                           *
#**************************************************************************

# Set paths to the directories where the files will be deleted
# Modify these paths according to your environment
path1="/path/to/first/directory"  # Directory containing .zip files
path2="/path/to/second/directory" # Directory containing .log files
path3="/path/to/third/directory"  # Directory containing .txt files

# Delete .zip files in the first directory that were modified in the last 2 days
# -type f specifies that only files are searched
# -iname '*.zip' specifies that only .zip files are targeted
# -mtime -2 finds files modified in the last 2 days
# exec rm {} \; deletes the files found
find "$path1" -type f -iname '*.zip' -mtime -2 -exec rm {} \;

# Delete .log files in the second directory that were modified in the last 2 days
find "$path2" -type f -iname '*.log' -mtime -2 -exec rm {} \;

# Delete .txt files in the third directory that were modified in the last 2 days
find "$path3" -type f -iname '*.txt' -mtime -2 -exec rm {} \;

# Note: Ensure you have the correct permissions and have tested the script in a safe environment before using it in production.

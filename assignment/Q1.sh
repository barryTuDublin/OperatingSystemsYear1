#!/bin/bash

while true
do
    clear
    echo "* Bash Commands *"
    echo "1. List files"
    echo "2. Show free disk space"
    echo "3. Show system path"
    echo "4. Display command history"
    echo "5. Backup files"
    echo "6. Exit"
    echo -n "Enter your choice [1-6]: "
    read choice
    
    case $choice in
        1) ls ;;
        2) df ;;
        3) echo $PATH ;;
        4) history ;;
        5) echo -n "Enter directory name: "
           read dirname
           mkdir BackupFolder
           cp -r $dirname BackupFolder
           ls BackupFolder ;;
    6) exit ;;
        *) echo "Invalid choice. Press enter to try again."
           read ;;
    esac
done
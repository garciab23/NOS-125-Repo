# !/bin/bash
# Created by Bryan Garcia
# Student NOS 125 SP2023

# This script will create a menu

echo
echo "#####################################################################"
echo "#####################################################################"
echo "#####################################################################"
echo "#################       #####################       #################"
echo "#################       #####################       #################"
echo "#################       #####################       #################"
echo "################################## ##################################"
echo "#################################   #################################"
echo "################################     ################################"
echo "############################### #   # ###############################"
echo "#####################################################################"
echo "#####################################################################"
echo "#####################################################################"
echo "#####################################################################"
echo "#####################################################################"
echo "#####################################################################"
echo "#####################################################################"
echo "###############    ###############################    ###############"
echo "##################    #########################    ##################"
echo "#####################    ###################    #####################"
echo "########################                     ########################"
echo "#####################################################################"
echo "#####################################################################"
echo "              #########################################              "
echo

main_menu() {
        clear
        echo "Hello, this script will provide options for folder/file creation/delection"

        echo "Please select an option:"
        echo "enter 1 - Create Folders"
        echo "enter 2 - Create Files"
        echo "enter 3 - Delete Everything"
        echo "enter 4 - Exit"
        read -p "Please make a selection " ans

        echo "you selected $ans"

        case $ans in
        1)
                echo "Starting folder creation"
                folder_function
                ;;
        2)
                echo "Starting file creation"
                file_function
                ;;
        3)
                echo "Starting deletion of everything"
                sudo rm -rf ~/data/*
                ;;
        4)
                echo "Exiting script"
                exit
                ;;
        *)      echo "Invalid input"
                sleep 2
                main_menu
                ;;
        esac
}

folder_function() {

        # Number of folders to create
        read -p "Enter the number of folders to be created: " folder_num

        # Create folders
        if [ -z "$(ls -A ~/data/*)" ]; then
                echo "Directory is empty"
                for n in $(seq 1 $folder_num); do
                        mkdir -p ~/data/folder$n
                done
        else
                read -p "Directory is not empty, would you like to overwrite the folders: [Y/N]" user_answer
                case $user_answer in
                [yY])
                        for n in $(seq 1 $folder_num); do
                                sudo rm -rf ~/data/folder$n
                        done

                        for n in $(seq 1 $folder_num); do
                                mkdir -p ~/data/folder$n
                        done
                        ;;
                [nN])
                        main_menu
                        ;;
                esac
        fi
        main_menu

}

file_function() {

        # Number of files to create
        read -p "Enter the number of files to be created: " file_num

        # Location of files to create
        ls -a ~/data
        echo
        read -p "Enter the location of where to create the files: " file_loc

        # Checking for existing files and creating files
        if [ -z "$(ls -A ~/data/$file_loc)" ]; then
                echo "Folder is empty"
                for i in $(seq 1 $file_num); do
                        dd if=/dev/zero of=~/data/$file_loc/file$i.txt bs=1M count=10
                done
        else
                read -p "Folder is not empty, would you like to overwrite the files?: [Y/N]" user_response
                case $user_response in
                [yY])
                        for i in $(seq 1 $file_num); do
                                sudo rm -rf ~/data/$file_loc/file$i.txt
                        done

                        for i in $(seq 1 $file_num); do
                                dd if=/dev/zero of=~/data/$file_loc/file$i.txt bs=1M count=10
                        done
                        ;;
                [nN])
                        main_menu
                        ;;
                esac
        fi
        echo "Files and folders created successfully."
        main_menu
}

main_menu

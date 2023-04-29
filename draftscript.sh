# !/bin/bash
# Created by Bryan Garcia
# Student NOS 125 SP2023

# This script will create a menu
#clear
#echo "Hello, this script will provide options for folder/file creation/delection"

#echo "#####################################################################"
#echo "#####################################################################"
#echo "#####################################################################"
#echo "#################       #####################       #################"
#echo "#################       #####################       #################"
#echo "#################       #####################       #################"
#echo "################################## ##################################"
#echo "#################################   #################################"
#echo "################################     ################################"
#echo "############################### #   # ###############################"
#echo "#####################################################################"
#echo "#####################################################################"
#echo "#####################################################################"
#echo "#####################################################################"
#echo "#####################################################################"
#echo "#####################################################################"
#echo "#####################################################################"
#echo "###############    ###############################    ###############"
#echo "##################    #########################    ##################"
#echo "#####################    ###################    #####################"
#echo "########################                     ########################"
#echo "#####################################################################"
#echo "#####################################################################"
#echo "              #########################################              "

# Number of folders to create
read -p "Enter the number of folders to be created: " folder_num

# Create folders
for n in $(seq 1 $folder_num); do
        mkdir -p ~/data/folder$n
done

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
        read -p "Folder is not empty, would you like to overwrite?: [Y/N]" user_response
        case $user_response in
        [yY])
                sudo rm -rf ~/data/$file_loc/file$*.txt
                for i in $(seq 1 $file_num); do
                        dd if=/dev/zero of=~/data/$file_loc/file$i.txt bs=1M count=10
                done
                ;;
        [nN])
                exit
                ;;
        esac
fi
echo "Files and folders created successfully."

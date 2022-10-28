#!/bin/bash

# This will create a help function to display options for running the script.

VERSION=$(echo "1.2")

help() 
{
	# Display Help message
	echo "Add whatever description of the script functions on this line."
	echo 
	echo "Syntax: <script_name> [-g|h|v|V]"
	echo "options:"
	echo "-g    Run general script."
	echo "-h    Print this Help message."
	echo "-v    Run verbose mode on script"
	echo "-V    Print the version of script"
}

function usage(){
    echo "Syntax: <script_name> [-g|h|v|V]"
	echo "options:"
	echo "-g    Run general script."
	echo "-h    Print this Help message."
	echo "-v    Run verbose mode on script"
	echo "-V    Print the version of script"
}

function main(){
    if [[ "$option" == "v" ]]; then
        echo "Hello world! This is a verbose message!"
    elif [[ "$option" == "g" ]]; then
        echo "Hello world!"
    fi
}

function version(){
    echo "hello2 version ${VERSION}"
}

#####################################################################################
# Main program of the script
#####################################################################################
#####################################################################################
# This will process the input options for the script. Add options as needed.

# Get options for script

while getopts ":hvgV" option; do
	case $option in
		h) # display help message
		   help
		   exit;;
        v) # increase verbosity
           main
           ;;
        g) # print general message
           main
           ;;
        V) # print version
           version
           ;;
        \?) # if an option is given that doesn't exist
           usage
           exit;;
	esac
done
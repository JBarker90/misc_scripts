#!/bin/bash

# This will create a help function to display options for running the script.

help() 
{
	# Display Help message
	echo "Add whatever description of the script functions on this line."
	echo 
	echo "Syntax: <script_name> [-g|h|v|V]"
	echo "options:"
	echo "g    Run general script."
	echo "h    Print this Help message."
	echo "v    Run verbose mode on script"
	echo "V    Print the version of script"
}

help

echo "Hello World!"

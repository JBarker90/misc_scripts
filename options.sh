#!/bin/bash

# This script is to mess around and learn more about creating options in a script.

# Here are test options

while getopts ":a:b:" opt; do
	case $opt in
		a) arg1="$OPTARG";;
		b) arg2="$OPTARG";;
		\?) echo "Invalid option -$OPTARG" >&2;;
	esac
done

printf "Argument 1 is %s\n" "$arg1"
printf "Argument 2 is %s\n" "$arg2"

#!/bin/bash

# This bash script can be used to check if a DKIM key exists for a domain and generate one if needed.
# It can also find the DKIM public key file and output the DKIM value in a DNS record format.
# Example:
#   Type:	 TXT
#   Host:	 default._domainkey.domain.com
#   Value:	 v=DKIM1; k=rsa; p=<Key_Value>;

DOMAIN=$1
DKIM_KEY=$(cat /home/jonathan/sample.txt 2>/dev/null)

help(){
    # Displays Help message
    echo "This bash script can be used to check if a DKIM key exists for a domain and generate one if needed."
	echo "It can also find the DKIM public key file and output the DKIM value in a DNS record format."
	echo 
	echo "Syntax: <dkim.sh> [-h|c|f] [<domain>]"
	echo "options:"
	echo "-h    Print this Help message."
	echo "-c    Create a DKIM Key for a specific domain."
	echo "-f    Finds DKIM key on server and Formats it in DNS record values."
}

function usage(){
    echo "Syntax: <dkim.sh> [-h|c|f] [<domain>]"
	echo "options:"
	echo "-h    Print this Help message."
	echo "-c    Create a DKIM Key for a specific domain."
	echo "-f    Finds DKIM key on server and Formats it in DNS record values."
}

function dkim_gen(){
    if [[ $(hostname -s) == "JBARKER"-* ]]; then
        echo "Your domain name is ${DOMAIN} and you are on a mac!"
    else
        echo "It appears you are somewhere else."
    fi
}

function dkim_find(){
    if [[ -e "/home/jonathan/sample.txt" ]]; then
        echo -e "\nMessage Test: ${DKIM_KEY}"
    else
        echo "It appears this file is missing. Try running: <dkim.sh> -c [<domain>]"
    fi
}

if (( $# == 0 )); then
    usage
fi

#####################################################################################
# Main program of the script
#####################################################################################
#####################################################################################
# This will process the input options for the script. Add options as needed.

# Get options for script

while getopts "hc:f:" option; do
    case $option in
        h) # Displays help message
            help
            exit;;
        c) # Creates DKIM Key
            dkim_gen
            ;;
        f) # Finds DKIM key and Formats in DNS value
            dkim_find
            ;;
        \?) # If an option is given that doesn't exist
            usage
            exit;;
    esac
done

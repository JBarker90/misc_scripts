#!/bin/bash

# This bash script can be used to check if a DKIM key exists for a domain and generate one if needed.
# It can also find the DKIM public key file and output the DKIM value in a DNS record format.
# Example:
#   Type:	 TXT
#   Host:	 default._domainkey.domain.com
#   Value:	 v=DKIM1; k=rsa; p=<Key_Value>;

help(){
    # Displays Help message
    echo "This bash script can be used to check if a DKIM key exists for a domain and generate one if needed."
	echo "It can also find the DKIM public key file and output the DKIM value in a DNS record format."
	echo 
	echo "Syntax: <dkim.sh> [-h|c|f]"
	echo "options:"
	echo "-h    Print this Help message."
	echo "-c    Create a DKIM Key for a specific domain."
	echo "-f    Finds DKIM key on server and Formats it in DNS record values."
}


#####################################################################################
# Main program of the script
#####################################################################################
#####################################################################################
# This will process the input options for the script. Add options as needed.

# Get options for script

while getopts ":hc:f:" option; do
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
    esac
done
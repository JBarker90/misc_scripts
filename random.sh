#!/bin/bash

if [[ -e "/home/jonathan/test_dir/sample.txt" ]]; then
    cat -n /home/jonathan/test_dir/sample.txt
else
    echo "This file path does NOT exist. You may need to create one or check your file path."
fi
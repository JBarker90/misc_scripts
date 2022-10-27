#!/bin/bash

if [[ $(hostname -s) != "JBARKER-"* ]]; then
    echo "False, this IS your laptop!"
else
    echo "You are not in the right place!"
fi
#!/bin/bash
if [[ $(hostname -s) == ^JBARKER-* ]]; then
    echo "You are on a cloud server."
fi
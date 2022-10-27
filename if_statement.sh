#!/bin/bash
if [[ $(hostname -s) == "cloudhost-"* ]]; then
    echo "You are on a cloud server."
else
    echo "You are on a physical server."
fi
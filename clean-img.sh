#!/bin/bash

echo "Warning! This script deletes all files in the 'img' directory." 
echo "Press CTRL-C to cancel"
echo "Press any other key to continue"
read -n 1 -s

rm -fr img/*

echo "Deleted all files in the 'img' directory." 


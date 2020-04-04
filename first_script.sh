#!/bin/bash

# Example of bash script. Saves text on an file.
# Author: Diogo

date=$(date +%d/%m/%Y)
read -p "Digite: " text

echo $date: $text >> teste.txt
echo text saved: $text

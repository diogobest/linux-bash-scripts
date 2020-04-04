#!/bin/bash

# First script
# Author: Diogo

echo $(date): $@ >> teste.txt
echo text saved: $@
banana="teste4.txt teste3.txt"
touch $banana
echo arquivo criado $banana
# $1 variable used as first argument passed on the command line.
# For example: ./first_script.sh first_variable. Will add the 'first_variable'
# on the last line of teste.txt

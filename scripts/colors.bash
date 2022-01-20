#!/bin/bash

# colors
#
# Description:
# Prints all the available colors for text
# in the command line.
#
# Usage:
# ./colors.bash
#

for i in {0..255} ; do
    printf "\x1b[38;5;${i}mcolour${i}\n"
done


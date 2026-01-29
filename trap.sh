#!/bin/bash

set -e 3ERR


trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

echo "Hellow World"
echo "I am learning shell"
echoo "printing erro shell"
echo "no error in this"
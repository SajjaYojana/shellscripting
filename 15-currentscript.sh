#!/bin/bash

C="DEvops from Current Script"

echo "Before calling the other script,course: $C"
echo "Process ID of current shell script: $$"

./16-otherscript.sh

echo "After calling the other script,course: $C"
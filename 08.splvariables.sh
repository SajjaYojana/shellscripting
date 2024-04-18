#!/bin/bash

echo "All variables: $@"
echo "Number of variables paased: $#"
echo "Script Name: $0"
echo "Current Working Directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "Process Id of the current shell script: $$"
sleep 60 &
echo "Process ID of last background commnd: $!"
#!/bin/bash

COURSE="Devops from Current Script"
echo "Before calling other script, Course : $COURSE"
echo "Process ID of current shell script : $$"
#source ./other-script.sh
source ./other-script.sh
echo "After calling other script, Course : $COURSE"


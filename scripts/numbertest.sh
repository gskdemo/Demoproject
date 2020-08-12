#!/bin/bash
#Doing a number test
PER=$1
if [ "$PER" -gt 65 ]; then
 echo "Student result: First division"
elif [ "$PER" -gt 55 ]; then
 echo "Student result: Second division"
elif [ "$PER" -gt 45 ]; then
 echo "Student result: Third division"
else
 echo "Student result: Failed"
fi

#!/bin/bash
#Doing a number test
PER=$1
if [ ! "$PER" ]; then
 echo "please give the number"
 exit
fi
if [ "$PER" -gt 100 -o "$PER" -lt 0 ]; then
 echo "Please give the number between 0 to 100"
 exit
fi
if [ "$PER" -gt 65 -a "$PER" -le 100 ]; then
 echo "Student result: First division"
elif [ "$PER" -gt 55 -a "$PER" -le 65 ]; then
 echo "Student result: Second division"
elif [ "$PER" -gt 45 -a "$PER" -le 55 ]; then
 echo "Student result: Third division"
else
 echo "Student result: Failed"
fi

#!/bin/bash
#To detect if we are root user or not
RUNUSER=`/usr/bin/whoami`
if [ "$RUNUSER" == 'root' ]; then
 echo "You are a ROOT user"
else
 echo "You are a $RUNUSER user"
fi

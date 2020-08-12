#!/bin/bash
#this is for file test example
#check permission for /etc/passwd and /etc/shadow
if [ -f '/etc/passwd' ]; then
 #true
 echo 'the file /etc/passwd is present'
fi

if [ -r '/etc/shadow' ]; then
 #true
 echo 'You have read permission on this file'
else
 #false
 echo 'You do not have read permission on this file'
fi

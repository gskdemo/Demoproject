#!/bin/bash
#To create users and set passwords if does not exist
#Task 1
USERNAME=$1
USERPASS=$2
#Task1 
if [ ! "$USERNAME" ]; then
 echo "Please enter a USERNAME"
 exit
fi
#Task2
if [ ! "$USERPASS" ]; then
 echo "Password is not given going with the default password"
 USERPASS='redhat'
fi
#Task3
RUNUSER=`/usr/bin/whoami`
if [ "$RUNUSER" != 'root' ]; then
 echo "You must be a Root User"
 exit
fi
#Task4
/usr/bin/id $USERNAME
if [ $? -eq 0 ]; then
 echo "The user $USERNAME already exists"
 exit
fi
#Task 4i
/sbin/useradd $USERNAME
if [ $? -ne 0 ]; then
 echo "we have a serious problem with OS"
 exit
fi
#Task4ii
echo "$USERPASS" | /usr/bin/passwd --stdin "$USERNAME"
if [ $? -ne 0 ]; then
 echo "We have some problem in the OS"
 exit
fi
#Task5
chage -d 0 $USERNAME

#Task6
echo "The user $USERNAME is created successfully"
 

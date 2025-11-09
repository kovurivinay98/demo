#!/bin/bash
userid=$(id -u)

if [ $userid -eq 0 ]
then
 echo "you are root user"
dnf install nginx -y
else
 echo "you are not root user"
fi
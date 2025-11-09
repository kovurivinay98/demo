#!/bin/bash
userid=$(id -u)

if [ $userid -eq 0 ]
then
echo "you are root user"
else
 dnf install nginx -y
echo "you are not root user"
fi
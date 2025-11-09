#!/bin/bash
userid=$(id -u)
if [ $userid -eq 0 ]
 then
   echo "Your are root user"
    dnf list installed apache
     if [ $? -ne 0 ]
      then
        dnf install apache -y
          if [ $? -eq 0 ]
             then 
                echo "Installed successfully"
             else
                echo "Not Installed succesfully"
            fi
       else
        echo "nginx already installed"
    fi
 else
   echo "You are not root user"
fi
#!/bin/bash
userid=$(id -u)
if [ $userid -eq 0 ]
 then
   echo "Your are root user"
    dnf list installed tomcat
     if [ $? -ne 0 ]
      then
        dnf install tomcat -y
          if [ $? -eq 0 ]
             then 
                echo "Installed successfully"
             else
                echo "Installation failed"
            fi
       else
        echo "nginx already installed"
    fi
 else
   echo "You are not root user"
fi
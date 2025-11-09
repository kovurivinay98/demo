userid=$(id -u)
if [ $userid -eq 0 ]
 then
   echo "Your are root user"
    dnf list installed ngnix -y
 else
   echo "You are not root user"
#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi

echo "Installation Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing Nginx ... FAILURE"
    exit 1
else
    echo "Installing Nginx ... Success"
fi

dnf install mysql -y 

if [ $? -ne 0 ]; then
    echo "Installing Mysql ... FAILURE"
    exit 1
else
    echo "Installing Mysql ... Success"
fi

dnf install node.js -y

if [ $? -ne 0 ]; then
    echo "Installing node.js ... FAILURE"
    exit 1
else
    echo "Installing node.js ... Success"
fi

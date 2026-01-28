#!/bin/bash

dnf install nginx -y

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi

echo "Installation Nginx"
dnf install nginx -y
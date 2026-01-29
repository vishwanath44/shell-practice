#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo "$R Please run this script with root user access $N" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 ... $R FAILURE $N" | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2 ... $G Success $N" | tee -a $LOGS_FILE
    fi
}

for package in $@ # sudo sh 14.loops.sh nginx mysql nodejs
do
    dnf install $package -y &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now"
        dnf install $package -y &>>$LOGS_FILE
        VALIDATE $? "$package installation"
    else
        echo -e "$package already installed ... $Y skipping $N"
    fi
done
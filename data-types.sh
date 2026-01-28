#!/bin/bash

NUM1=100
NUM2=vishwa

SUM=$(($NUM1+$NUM2))

echo "Sum is: $SUM"

# Array
FRUITS=("Apple" "Banana" "Orange")

echo "Fruits are: ${FRUITS[@]}"

echo "First are: ${FRUITS[0]}"

echo "Second are: ${FRUITS[1]}"

echo "Third are: ${FRUITS[2]}"
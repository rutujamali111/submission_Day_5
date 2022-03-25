#!/bin/bash -x

value=$(( RANDOM%2 ))

if [ $value -eq 1 ]

then

echo "its head"

else

echo "its tail"

fi




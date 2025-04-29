#!/bin/bash

a=4
b=5
c=4

if [ $a -gt $b ]; then
	echo "a is greater than b"
elif [ $a -eq $c ]; then
	echo "a is equal to c"
else
	echo "a is a numeric value"
fi

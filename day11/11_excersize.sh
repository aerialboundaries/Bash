#!/bin/bash

sum=0

while read p
do
	(( sum += "${p}" )) 2> /dev/null

done < number.txt

echo "Total is ${sum}"



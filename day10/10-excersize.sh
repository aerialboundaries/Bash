#!/bin/bash

ans=$((RANDOM % 100 + 1))
count=1

while true
do
	read -p "Guess Number > " guess
	if (( ${ans} > ${guess} )); then
		echo "Bigger"
		(( count++ ))
		continue
	elif ((${ans} < ${guess} )); then
		echo "Smaller"
		(( count++ ))
		continue
	elif ((${ans} == ${guess} )); then
		echo "You are correct!"
		echo "You took ${count} times"
		break
	else
		echo "Something wrong happened"
		break
	fi
done


#!/bin/bash

color="${1}"

echo "${color}"

#test
if test "${color}" == "Blue" || test "${color}" == "Red"; then
	echo "Color is Blue or Red"
fi

#[]
if [ "${color}" == "Blue" ] || [ "${color}" == "Gray" ]; then
	echo "Color is Blue or Gray"
fi

#[[]]

if [[ "${color}" == "Blue"  ||  "${color}" == "Gray" ]]; then
	echo "Color is Blue or Gray"
fi

year=$(date "+%Y")
if (( "${year}" > 2000 || "${year}" <= 2100 )); then
	echo "21 Century"
fi


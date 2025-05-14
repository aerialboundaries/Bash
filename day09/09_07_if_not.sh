#!/bin/bash

day=$(date '+%d')
echo $day
# echo $day # 08

if ! test "${day}" -eq 08; then
	echo "day is not 1"
fi

if [ ! "${day}" -eq 23 ]; then
	echo "[] if process"
fi


if [[ ! "${day}" -eq 23 ]]; then
	echo "[] if process"
fi

if ! (( "${#}" == 0 )); then
	echo "Exists args"
fi


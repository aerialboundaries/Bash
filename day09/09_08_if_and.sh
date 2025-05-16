#!/bin/bash

name="${1}"
age="${2}"

# if test "${name}" == "Taro" && test "${age}" -gt 20; then
# if [ "${name}" == "Taro" ] && [ "${age}" -gt 20 ]; then
# if [ "${name}" == "Taro" -a "${age}" -gt 20 ]; then
if [[ "${name}" == "Taro" && "${age}" -gt 20 ]]; then
	echo "Name = Taro and greater than 20"
fi

year=$( date "+%Y" )
year=2000
if (( "${year}" % 400 == 0 || "${year}" % 4 == 0 && "${year}" % 100 != 0 )); then
	echo "It's reap year"
else
	echo "It's NOT reap year"
fi


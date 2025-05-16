#!/bin/bash

months=("January" "February" "March")

# Accessing all elements
echo "${months[@]}"

echo "${months}"

# Accessing each element

var="January: ${months[0]}, February: ${months[1]}, March:${months[2]}"
echo "${var}"

# Adding emements / deleting elements
months+=("April" "May")
echo "${months[@]}"

months=("${months[@]}" "June")

echo "${months[@]}"

unset month[1]
months[0]="1gatu"

echo "${months[@]}"

echo "${#months[@]}"
name="Taro"
echo "${#name}"

echo "${#months[0]}"

declare -a array1=("A" "B" "C")

array2=("D" "E" "F")

# Concatinating arrays
array3=("${array1[@]}" "${array2[@]}")

echo "${array3[@]}"
echo "${array3[@]:2:2}"
echo "${months[2]:1:3}"


#!/bin/bash

sales=0
expense=0
declare -A a_account
declare -A a_date
declare -A a_product

while read p
do
	array=$(echo "${p}" | sed "s/,/ /g")

done < "./input/input.csv"


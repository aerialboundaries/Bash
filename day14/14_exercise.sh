#!/bin/bash


file_path=$(realpath $0)
base_dir=$(dirname "{file_path}")
input_dir="${base_dir}"/input
output_dir="${base_dir}"/output

sales_date=0
code=0
product=0
amount=0
sales_amount=0
sales_cost=0

while read p
do
#	array=$(echo "${p}" | sed "s/,/ /g")
#	echo "${array}"

code=$(echo "${p}" | cut -d "," -f 2)
amount=$(echo "${p}" | cut -d "," -f 5)

if [[ "${code}" == "売上" ]]; then
	sales_amount=$((sales_amount += "${amount}"))
	#echo "${amount}"
elif [[ "${code}" == "費用" ]]; then
	((sales_cost += ${amount}))
	#echo "${amount}"
fi

done < "${input_dir}/input.csv"

echo "合計" > "${output_dir}/output.txt"
echo "売上: " "${sales_amount}" >> "${output_dir}/output.txt"
echo "費用: " "${sales_cost}" >> "${output_dir}/output.txt"

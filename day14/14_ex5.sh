#!/bin/bash


file_path=$(realpath $0)
base_dir=$(dirname "{file_path}")
input_dir="${base_dir}"/input
output_dir="${base_dir}"/output
output_file=$(date '+%Y%m%d').txt

code=0
product=0
amount=0
sales_amount=0
sales_cost=0


# sum by product
product=0
amount=0
sales_amount=0
sales_cost=0

sort -t , -k 3 "${input_dir}/input.csv" > "${input_dir}/input_sort_by_product.csv"
echo "品目ごとの合計"
echo "品目、売上、費用"

while read p
do
	new_product=$(echo "${p}" | cut -d "," -f 3)
	code=$(echo "${p}" | cut -d "," -f 2)
	amount=$(echo "${p}" | cut -d "," -f 5)

	if [[ "${product}" != "${new_product}" ]]; then
		if [[ "${product}" != 0 ]]; then
			echo "${product} ${sales_amount} ${sales_cost}"
		fi
		product="${new_product}"
		if [[ "${code}" == "売上" ]]; then
			sales_amount="${amount}"
		elif [[ "${code}" == "費用" ]]; then
			sales_cost="${amount}"
		fi
	elif [[ "${code}" == "売上" ]]; then
		((sales_amount += "${amount}"))
	elif [[ "${code}" == "費用" ]]; then
		((sales_cost += "${amount}"))
	fi

done < "${input_dir}/input_sort_by_product.csv" 



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


# sum by date
amount=0
sales_date=0
sales_amount=0
sales_cost=0

sort -t , -k 1 "${input_dir}/input.csv" > "${input_dir}/input_sort_by_date.csv"
echo "日付、売上、費用"

while read p
do
	new_sales_date=$(echo "${p}" | cut -d "," -f 1)
	code=$(echo "${p}" | cut -d "," -f 2)
	amount=$(echo "${p}" | cut -d "," -f 5)

	if [[ "${sales_date}" != "${new_sales_date}" ]]; then
		if [[ "${sales_date}" != 0 ]]; then
			echo "${sales_date} ${sales_amount} ${sales_cost}"
		fi
		sales_date="${new_sales_date}"
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

done < "${input_dir}/input_sort_by_date.csv" 



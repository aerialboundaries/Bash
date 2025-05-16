#!/bin/bash

file_path="$(realpath $0)"
base_path="$(dirname ${file_path})"
output_path="${base_path}"/output_2

for i in {1..60}
do
file_date=$(date '+%Y%m%d' -d "${i} days ago")
touch "${output_path}/tmpfile_${file_date}.txt" -d "${file_date}"
done


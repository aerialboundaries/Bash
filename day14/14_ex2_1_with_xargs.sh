#!/bin/bash

file_path="$(realpath $0)"
base_path="$(dirname ${file_path})"
output_path="${base_path}"/output_2

for i in {1..60}
do
echo $(date '+%Y%m%d' -d "${i} days ago") | xargs -I % touch -d '%' "${output_path}/tmpfile_"%".txt"
done


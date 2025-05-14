#/bin/bash

echo "1+3" # No calculation

echo "$(expr 2 + 3)"
echo "$((2 + 3))"

result="$((4 * 5))"
echo "${result}"

echo "$(expr 1 - 3)"
echo "$((2 - 5))"

echo "$(expr 3 \* 4)"
echo "$((3 * 4))"

echo "$(expr 12 / 2)"
echo "$((9 / 4))"

echo "$(expr 12 % 2)"
echo "$((12 % 5))"


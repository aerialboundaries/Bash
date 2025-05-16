#/bin/bash

# Standard input
read name

echo "${name}"

read -p "Message input: " message

echo "${message}"

read -sp "input password: " password
echo "${password}"

# Array
read -a sports
echo "${sports[@]}"

#!/bin/bash

name="Taro"

age=18

sentence="He said \"Hi, My name is ${name}.  I'm ${age} years's old\""

echo "${sentence}"

sentence='He is ${age}'

echo "${sentence}"

readonly CONSTANT_VAR="constant"

echo "${CONSTANT_VAR}"

var="constant ${CONSTANT_VAR}"

age=99

# CONSTANT_VAR="new constant"

unset age
echo "age is ${age}"
unset CONSTANT_VAR


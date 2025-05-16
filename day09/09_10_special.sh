#!/bin/bash

# if exists var
if [[ -z "${my_var}" ]]; then
	echo "my_var deos not exist"
fi

if [[ -n "${1}" ]]; then
	echo "The 1st arg exists"
fi

name="Taro"
if [[ "${name}" == T* ]]; then
	echo "Starts with T"
fi


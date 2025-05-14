#!/bin/bash

if [[ -e "file" ]]; then
	echo "file exists"
fi

if [[ -f "test" ]]; then
	echo "test exists"
fi

if [[ -d "test" ]]; then
	echo "test dir exists"
fi

if [[ -w "wfile" ]]; then
	echo "can write"
fi


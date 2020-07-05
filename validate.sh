#!/bin/bash
set -e

if [[ $# -lt 1 ]];
    then echo -e "No directories to scan and validate; Please provide as \n\t validate .  \n\t\t or \n \t validate /Users/local/yamlfiles"
	exit 1
fi

for var in "$@"
do
	for file in "$var"/*
	do
		if [[ $file == *.yaml ]] || [[ $file == *.yml ]]; then
			echo "Validating the $file"
			swagger-cli validate $file
		fi
	done    
done

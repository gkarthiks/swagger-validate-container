#!/bin/bash
set -e

YAML_TYPE="*.yaml"
YML_TYPE="*.yml"
JSON_TYPE="*.json"

if [[ $# -lt 1 ]];
    then echo -e "No directories to scan and validate; Please provide as \n\t validate .  \n\t\t {{or}} \n \t validate [[YAML or JSON files location]]"
	exit 1
fi


for var in "$@"
do
    echo "$var"
	for file in "$var"/*
	do
		if [[ $file == $YAML_TYPE ]] || [[ $file == $YML_TYPE ]] || [[ $file == $JSON_TYPE ]]; then
			echo "Validating the $file"
			swagger-cli validate $file
		fi
	done    
done
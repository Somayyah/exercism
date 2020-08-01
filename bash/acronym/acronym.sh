#!/usr/bin/env bash

main () {
	IFS=' -,_*'
	read -ra string_array<<<"$1"
	for i in "${string_array[@]}"; do
		char="${i:0:1}"
		printf "${char^}"
	done
	echo	
}

main "$@"

#!/usr/bin/env bash

black=0
brown=1
red=2
orange=3
yellow=4
green=5
blue=6
violet=7
grey=8
white=9

main () {
	first="$1"
	second="$2"
	if [[ -z ${!first} || -z ${!second} ]];then
		echo *"invalid color"*
		exit 1
	else
		echo "${!first}${!second}" 
	fi
}

main "$@"

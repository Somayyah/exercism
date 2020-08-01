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

declare -A values=( [default]="" [000]="kilo" [000000]="mega" [000000000]="giga")

main () {
	if ! [[ -v "$1" && -v "$2" && -v "$3" ]];then
		echo "*invalid color*"
		return 1
	else
		first="$1"
		second="$2"
		third="$3"
		ind=$((10**third))
		zeroes="${!second//[^0]}${ind//1}"
		number_of_zeroes=${#zeroes}
		remained_zeroes=$((number_of_zeroes%3))
		postfix="${zeroes:$remained_zeroes}"
		final_part=${values[${postfix:-"default"}]}
		
		echo "${!first//0}${!second//[0]}${zeroes:0:$remained_zeroes} ${final_part}ohms"
	fi
}

main "$@"

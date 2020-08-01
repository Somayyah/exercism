#!/usr/bin/env bash

main () {
	result=""
	declare -a factor=([3]="Pling" [5]="Plang" [7]="Plong")
	for e in "${!factor[@]}";do
		(( $1%$e == 0 )) && result+="${factor[$e]}"
	done
	[[ -z "$result" ]] && echo "$1" || echo "$result"
}


main "$@"

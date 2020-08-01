#!/usr/bin/env bash

main () {
	if [[ -z $1 || "$1" =~ \. || "$1" =~ [a-zA-Z] ]];then
echo "Usage: leap.sh <year>"
exit 1
	else
		(( !($1%4) && ( $1%100 || !($1%400)) )) && echo "true" || echo "false"
	fi
}

if [[ "$#" -ne 1 ]];then
	echo "Usage: leap.sh <year>"
	exit 1
else
	main "$@"
fi

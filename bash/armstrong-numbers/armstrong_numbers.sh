#!/usr/bin/env bash

main () {
	ans=false
	length="${#1}"
	case $length in
		1) ans=true # One digit numbers are always armstrong numbers 
			;;
		2) ans=false  # Two digit numbers can't be Armstrong Numbers
			;;
		*) armstrong_number=0
			for (( i = 0; i < $length ; i++));do
				digit="${1:i:1}"
        		((armstrong_number += digit**length))
			    if (( $armstrong_number > $1 ));then
        			ans=false
          			break
        		fi
      		done
      		(( $armstrong_number == $1)) && ans=true
			;;
	esac
	echo "$ans"

}


main "$@"

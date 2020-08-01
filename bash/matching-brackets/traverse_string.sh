#!/bin/bash

main(){
	string="$1"
	ans="true"
	start_ptr=0
	end_ptr=0
	#while (( $end_ptr < ${#string} )); do
	for (( i = 0; i < ${#string}; ));do
		if [[ ${string:start_ptr:1} == "+" ]];then
			while (( $((${string:end_ptr:2}${string:start_ptr:2})) != 0 ));do
				end_ptr=$((end_ptr+2))
				i=$((i+2))
			done
			substring="${string:start_ptr:$((end_ptr+2))}"
			echo $substring
			if (( "$((substring))" != 0 ));then
				ans="false"
			       	break
			fi
			start_ptr=$((end_ptr+2))
		else
			ans="false"
			break
		fi
	done 
	echo $ans
}




main "$@"

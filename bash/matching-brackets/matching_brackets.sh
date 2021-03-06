#!/usr/bin/env bash

declare -A brackets=(
	["["]="+1"
  	["("]="+2"
	["{"]="+3"
  	["]"]="-1"
  	[")"]="-2"
  	["}"]="-3"
)

main () {
	string="${1//[^\[\{\(\[\}\)\]]}"
	(( ${#string}%2 != 0)) && echo "false" || {
		for (( i=0; i<${#string}; i++ )); do
			char="${string:$i:1}"
			if [[ "$char" =~ [^-+123] ]]; then
				replaced_with=${brackets[${char}]}
				string=${string//${char}/${replaced_with}} 
			fi	
		done
		string_len=${#string}
		middle_index=$((string_len/2))
		first_half=${string:0:middle_index}
		second_half=${string:middle_index}
		(( $((string)) == 0 && $((first_half)) >= $((second_half)) )) && echo "true" || echo "false"
	}
}

main "$@"

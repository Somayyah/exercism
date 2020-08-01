#!/usr/bin/env bash

function square_of_sum(){
	number="$1"
	echo "$(((number*(number+1)/2)**2))"
}
function sum_of_squares(){
	number="$1"
	echo "$((number*(number+1)*(2*number+1)/6))"
}

function difference(){
	difference="$(($(square_of_sum $1) - $(sum_of_squares $1)))"
	echo "$difference" 
}

eval "$1 $2"

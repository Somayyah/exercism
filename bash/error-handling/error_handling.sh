#!/usr/bin/env bash

main () {
	if (( $# != 1 ));then
		echo "Usage: error_handling.sh <person>"
		return 1
	else
		echo "Hello, $1"
	fi

}

main "$@"


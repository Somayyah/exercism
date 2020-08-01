#!/usr/bin/env bash

main () {
        string="${1//[^\[\{\(\[\}\)\]]}"
        string_len=${#string}
        (( $string_len%2 != 0)) && echo "false" || {
                [[ "$string}" =~ \((?:[^)(]+|\((?:[^)(]+|\([^)(]*\))*\))*\)
 ]] && echo "true" || echo "false"
        }       

}

main "$@"


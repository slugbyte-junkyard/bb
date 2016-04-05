\define SHEBANG \#!/bin/bash
\SHEBANG
\include "extract_functions.sh"

\ifndef MAIN
\define MAIN

# define global constants
export _FUNCTIONS=()

main(){
  extract_functions "$1" "$2"
  echo "$(tput setaf 3)${_FUNCTIONS[@]}"
}

main "$1" "$2"
\endif

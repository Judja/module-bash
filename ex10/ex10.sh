if ! [[ -f $1 ]]; then exit 1; fi
for arg in $*; do echo $(awk 'END { print NR }' $arg) $arg; done
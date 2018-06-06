if [ "$#" -ne 4 ]; then
  exit 1
fi

printf "$2 "
grep -c $2 $1
grep -n $2 $1 | cut -d ':' -f 1

printf "$3 "
grep -c $3 $1
grep -n $3 $1 | cut -d ':' -f 1

printf "$4 "
grep -c $4 $1
grep -n $4 $1 | cut -d ':' -f 1

exit 0
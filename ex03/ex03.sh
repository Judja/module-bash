if [ "$#" -ne 4 ]; then
  exit 1
fi

file=$1
shift

for arg in $@; do
  printf "$arg "
  grep -c $arg $file
  grep -n $arg $file | cut -d ':' -f 1
done
if [ "$#" -lt 1 ]; then
  exit 1
fi

str=""
flag=$1

shift
count=$#
for arg in $@; do
  if [[ $1 =~ ^-?[0-9]+$ ]]; then
    if [[ $flag == "-o" && $(($arg%2)) -eq 0 ]]; then
      continue
    fi
    if [[ $flag == "-e" && $(($arg%2)) -eq 1 ]]; then
      continue
    fi
    str+=$arg
    str+="+"
  else
    echo "Error.."
    exit 1
  fi
done
str+="0"

case $flag in
  "-s" | "-o" | "-e" )
    echo $str | bc
    ;;
  "-m" )
    str="("$str")"
    str+="/"$count
    echo $str | bc
    ;;
  * )
    echo "Error.."
    exit 1
    ;;
esac

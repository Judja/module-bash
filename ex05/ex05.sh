if [ "$#" -lt 1 ]; then
  exit 1
fi

str=""
flag=$1

shift
count=$#
while test ${#} -gt 0
do
  if [[ $1 =~ ^-?[0-9]+$ ]]; then
#    echo $1
    if [[ $flag == "-o" && $(($1%2)) -eq 0 ]]; then
      shift
      continue
    fi
    if [[ $flag == "-e" && $(($1%2)) -eq 1 ]]; then
      shift
      continue
    fi
    str+=$1
    str+="+"
    shift
  else
    echo "Error.."
    exit 1
  fi
done
str+="0"

case $flag in
  "-s" )
    echo $str | bc
    ;;
  "-m" )
    str="("$str")"
    str+="/"$count
    echo $str | bc
    ;;
  "-o" )
    echo $str | bc
    ;;
  "-e" )
    echo $str | bc
    ;;
  * )
    echo "Error.."
    exit 1
    ;;
esac

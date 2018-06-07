if [[ $# == 0 || $# > 1 ]]; then
  echo "Too many(few) arguments"
  exit 1
fi

if ! [ -f $1 ]; then
  echo "Error.."
  exit 1
fi


var=""

var+=$(grep -o 0 "$1" | wc -l)
var+=" zeroes, "
var+=$(grep -o 1 "$1" | wc -l)
var+=" ones, "
var+=$(grep -o 2 "$1" | wc -l)
var+=" twoes, "
var+=$(grep -o 3 "$1" | wc -l)
var+=" threes, "
var+=$(grep -o 4 "$1" | wc -l)
var+=" fours, "
var+=$(grep -o 5 "$1" | wc -l)
var+=" fives, "
var+=$(grep -o 6 "$1" | wc -l)
var+=" sixs, "
var+=$(grep -o 7 "$1" | wc -l)
var+=" sevens, "
var+=$(grep -o 8 "$1" | wc -l)
var+=" eights, "
var+=$(grep -o 9 "$1" | wc -l)
var+=" nines"
echo "$var"

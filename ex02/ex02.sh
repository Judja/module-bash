var=""
for i in $(echo $1 | tr ";" "\n")
do
  var=$(ls -R | grep $i)
  if [[ -n $var ]]; then
    echo $var | tr " " "\n"
  else
    echo "the searched PATH is unexisting"
  fi
done

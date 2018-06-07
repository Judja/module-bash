if [[ $# == 0 ]]; then
  exit 1
fi
if [[ $1 == 0 ]]; then
  exit 1
fi
head -"$1" resourses/surnames.txt | grep -v Q-Chem | sed "s/ - /  /" | sed "s/.$//"
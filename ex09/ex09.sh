#!bin/bash
   arg=$1
   case "$arg" in
     "-u"| "--url")
       grep -o -E "https:\/\/([[:alnum:]]|\.|\/)+" $2
       ;;
     "-e" | "--email")
       grep -o -E  "[[:alnum:]]+\@[[:alpha:]]+\.[[:alpha:]]+" $2
       ;;
  esac
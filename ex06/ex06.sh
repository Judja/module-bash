#!/bin/bash
com=$1
while test ${#} -gt 1
do
  shift
  eval $com "$1"
done


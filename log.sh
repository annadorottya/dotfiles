#!/bin/bash

read=0
readlines=0
OPTIND=1
while getopts d:f:r flag
do
    case "${flag}" in
        d) date=${OPTARG};;
        f) file=${OPTARG};;
        r) read=1;;
    esac
done
shift "$((OPTIND-1))"
if [ -z "$file" ]
then
	echo "No file specified."
	exit 1
fi
if [ "$read" -eq "1" ]
then
   tail $HOME/Notes/$file.txt
   exit 0;
fi
if [ -z "$date" ]
then
	date=$(date +%F)
fi
echo "$date: $@" >> $HOME/Notes/$file.txt
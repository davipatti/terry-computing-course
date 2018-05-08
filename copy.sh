#!/bin/bash

# Common problem
# Have some large number of files and want to do something to all of them

# Check there are some 
case $# in   # $# is the number of command line arguments
	0) echo "Hey, give me some files" >&2
exit 1  # exit with status other than 1
;;
esac

# "$@" is the robust way to loop through command line arguments
for i in "$@"
do
	cp $i $i.orig
done

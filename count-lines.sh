#!/bin/bash

case $# in
	0) echo "No command line arguments" >&2
exit 1
;;
esac

for i in "$@"
do
	# Give wc the file on stdin, doesn't give the filename
	# "wc -l $i" would give output like:
	# "	17 move.sh"

	# $() stores output of inside the parens as variable
	lineCount=$(wc -l < $i)
	echo $lineCount > $i.wc
	echo "File $i has $lineCount lines"
done > LINE-COUNT-SUMMARY

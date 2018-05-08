#!/bin/bash

case $# in
	0) echo "No command line arguments" >&2
exit 1
;;
esac

for i in "$@"
do
	case $i in 
		*.wc)
			# base=$(echo $i | sed 's/\.wc$//')
			# or
			base=$(echo $i | cut -f 1 -d.)

			newfile=$base.new

			if test -f $newfile
				then
				echo "New file $newfile already exists, skipping"
			else
				cp $i $newfile
			fi
		;;
		*) echo "Unrecognised filename $i" >&2
		;;
	esac
done

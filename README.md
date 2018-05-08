# Random things I learnt from Terry

Last day of his summer python course.

`split`

Split files up.

`$CD_PATH`

When you run cd, if current directory does not contain the target, then check CD_PATH for target and if present CD there.

`man pages`

Convention. Argument in square brackets is optional.

`echo`

Use echo to print commands before running them when developing shell scripts to make sure it will do what you think it will.

`#!/bin/bash -x`

This will just print commands in the script instead of running them.

(Terry fairly sure this is correct flag but not 100%).

`make`

If you don't give any arguments, it does the first target in the file.

`glob`

~~~python
from glob import glob
print glob('*.c')
~~~

`parallel`

~~~bash
for i in x???
do
echo "wc $i > output"
done
~~~

~~~bash
parallel --bar 'wc {} > /dev/null' ::: x??
~~~

`zcat`

Cats a compressed file.
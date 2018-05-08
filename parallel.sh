#!/bin/bash

# Cant print command and pipe to parallel

for i in x??
do
	echo "wc $i > output"
done | parallel --bar

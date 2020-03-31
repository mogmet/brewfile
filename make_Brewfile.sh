#!/bin/bash

if [ -e Brewfile ]; then
	echo "Brewfile already exists. Please rename or remove it."
	exit
fi

for i in $(brew list)
do
	echo "brew $i"
	echo "brew \"$i\"" >>Brewfile
done

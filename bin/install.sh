#!/bin/bash

to_install= install_makefile drop_makefile 
if [ ! -d ~/bin ]
then
	mkdir ~/bin
fi

for sub in "$to_install"
do
	if [ -d "$sub" ]
	then
		cp -r "$sub" ~/bin
	else
		cp "$sub" ~/bin
	fi
done


#!/bin/bash

to_install="install_makefile drop_makefile gitignore.template .Makefile"
if [ ! -d ~/bin ]
then
	mkdir ~/bin
fi

for sub in ${to_install}
do
	echo "Installing ${sub}"	
	if [ -d "$sub" ]
	then
		cp -r "$sub" ~/bin
	else
		cp "$sub" ~/bin
	fi
done


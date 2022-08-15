#!/bin/bash
echo "let's try scripting again"
bankyjay=fineboy
echo "bankyjay is $bankyjay"
if [ -d "configt" ]
then
	echo "checking the files in the directories"
	config_out=$(ls configt)
else
	echo "creating the directory right away"
	mkdir configt
	cd configt
	touch output.txt

fi
echo "let's see what's in $config_out"



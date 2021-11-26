#!/bin/bash

COUNTER=0
mkdir sequence

for item in *; do
	if [[ "$item" == *.jpg ]];
	then
	  let COUNTER++
	  filename=$(printf "%.8d.jpg" $COUNTER)
	  cp "$item" "sequence/$filename"
		echo $filename
	else
		echo "not Found"
	fi	
done


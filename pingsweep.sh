#!/bin/bash

if [[ $1 == "-h" ]]; then
	echo = "Help"
elif [[ $1 == "-p" ]]; then
	echo = "sweeping"
else
	echo "usage: hi"
fi

base="onyxnode"

for i in {1..200}
do
	echo = "$base$i"
	ping -c 1 $base$i >> ping.log
done

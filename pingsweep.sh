#!/bin/bash

base="onyxnode"

usage () {
echo "Usage: ./pingsweep.sh <-h|-p>"
}

ping_sweeper () {
local total=0
local found=0
for i in {1..200}
do
        echo "$base$i"
        ping -c 1 -w 1 $base$i >> ping.log
	if [ $? -eq 0 ]; then
		echo "Node ${i} found."
		found=$((found+1))
	else
		echo "Node ${i} not found."
	fi
	total=$((total +1))
done
}

main () {
if [[ $# > 1 ]]; then
	usage
elif [[ $1 == "-h" ]]; then
	usage
elif [[ $1 == "-p" ]]; then
	echo = "Sweeping..."
	ping_sweeper
else
	usage
fi
}

main "$@"

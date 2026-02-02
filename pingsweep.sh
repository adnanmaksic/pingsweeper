#!/bin/bash

base="onyxnode"

usage () {
echo "Usage: ./pingsweep.sh <-h|-p>"
}

ping_sweeper () {
for i in {1..200}
do
        echo = "$base$i"
        ping -c 1 -w 1 $base$i >> ping.log
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

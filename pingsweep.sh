#!/bin/bash
bash = "onyxnode"

ping_sweeper () {
for i in {1..200}
do
        echo = "$base$i"
        ping -c 1 $base$i >> ping.log
done
}

if [[ $1 == "-h" ]]; then
	echo = "Help"
elif [[ $1 == "-p" ]]; then
	echo = "Sweeping..."
	ping_sweeper
else
	echo "Usage: ./pingsweep.sh <-h|-p>"
fi

#!/bin/bash

base="onyxnode"

for i in {1..200}
do
	echo = "$base$i"
	ping -c 1 $curr >> ping.log
done

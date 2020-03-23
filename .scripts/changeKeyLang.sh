#!/bin/bash

langList=(tr us)
len=${#langList[*]}
lang=$(setxkbmap -print -verbose 10|awk '/layout/ { print $2 }')
for i in ${!langList[*]}
do	
	if [ "$lang" = "${langList[$i]}" ]
	then
		if [ $i = $(($len-1)) ]
		then 
			toSet=${langList[0]}
		else
			toSet=${langList[$i+1]}
		fi
		setxkbmap -layout $toSet && notify-send "Keyboard Layout changed to $toSet!"

	fi
done


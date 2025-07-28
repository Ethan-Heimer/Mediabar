#!/usr/bin/zsh

# This is a comment - it's ignored by the interpreter
status=$(playerctl status -s)

if [[ ${status} = "Playing" ]]; then
	echo 
elif [[ ${status} = "Paused" ]]; then
	echo 
else
	echo 
fi

exit 0

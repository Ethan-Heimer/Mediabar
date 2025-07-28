#!/usr/bin/zsh

# This is a comment - it's ignored by the interpreter
status=$(playerctl status -s)

if [[ ${status} = "Playing" || ${status} = "Paused" ]]; then
	echo $(playerctl metadata --format '{{duration(position)}}')
else
	echo --:--
fi

exit 0

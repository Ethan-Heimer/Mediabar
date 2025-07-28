#!/usr/bin/zsh

# This is a comment - it's ignored by the interpreter
fill="—"
empty="-"
indecator="|"

count=0
output=""
status=$(playerctl status -s)
volume=0
if [[ ${status} = "Playing" ]]; then
	volume=$(playerctl metadata --format "{{(volume * 10) }}")
	volume=$(awk "BEGIN {print int($volume)}")
	volume=$((volume+0))
fi

emptylength=$((10-volume))

if [ ${volume} -gt 0 ]; then
	while [ $count -le $((volume-2)) ]
	do
		output="${output}-"
		((count+=1))
	done

	output="${output}${indecator}"
	count=0
fi

while [ $count -le $((emptylength-1)) ]
do
	output="${output}${empty}"
	((count+=1))
done

echo ${output}
echo ${volume}

exit 0

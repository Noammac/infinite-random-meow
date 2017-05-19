#!/bin/bash
echo "To stop the program, press the \"q\" button"

while true
	do
		amp=`shuf -i 25-200 -n 1`
		pitch=`shuf -i 0-99 -n 1`
		speed=`shuf -i 0-450 -n 1`
		meow=`yes "meow " | head -n $(shuf -i 1-18 -n 1)`
		# echo "amp = $amp, pitch = $pitch, speed = $speed"
		# echo $(echo -e "${meow}" | tr "\n" " ")
		espeak -a $amp -p $pitch -s $speed "$meow"
done &

while_pid=$!

while true
    do
        read -n 1 -s
        if [ "$REPLY" == "q" ]
            then
                break
        else
            continue
        fi
done

kill $while_pid

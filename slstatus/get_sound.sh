mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{ print $2 }')

if [ $mute == "no" ]; then
	echo " $(pactl get-sink-volume @DEFAULT_SINK@ | awk '{ print $5 }')"
else
	echo " $(pactl get-sink-volume @DEFAULT_SINK@ | awk '{ print $5 }')"
fi

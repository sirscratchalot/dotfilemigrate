if [ $1 == '-' ]
then
    echo "DASHING!"
    for i in $(seq 0 10);do pactl set-sink-mute $i toggle;done
    exit 0
fi
for i in $(seq 0 10);do pactl set-sink-volume $i $1;echo $i $1;done

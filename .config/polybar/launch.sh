killall -q polybar

polybar_proc=$(pgrep -u $UID -x polybar)

for i in ${polybar_proc}; do
	kill -9 $i
done

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar main &
sleep 1
polybar second &

echo "Bars launched..."

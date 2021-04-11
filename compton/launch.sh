#!/usr/bin/env sh

# Terminate already running compton
killall -q compton

# Wait until the processes have been shut down
while pgrep -x compton >/dev/null; do sleep 1; done

# Launch compton
compton --config /home/taylank/.config/compton/compton.conf &



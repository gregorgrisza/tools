#!/bin/bash

# Restart Pulse, VPN client, so can connect again as usually asfter connection it's in broken state


for pid in `ps aux | grep -E "[0-9] /usr/local/pulse/pulse(Ui|svc)" | awk '{print $2}'`
do
    sudo kill -9 $pid
done

rm -f /home/greg/.pulse_secure/pulse/pulseUi.lock

/usr/local/pulse/pulseUi &

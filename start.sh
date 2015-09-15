#!/bin/sh
# Wait for osm-bright-end

while [ ! -f /var/lib/start/osm-bright-end ]
do
  echo "renderd still waiting for osm-bright to complete.."
  sleep 2
done

#start the daemon
sleep 60
echo "renderd is starting"
exec $START_CMD

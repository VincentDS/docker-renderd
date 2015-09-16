#!/bin/sh
# Wait for osm-bright-end

while [ ! -f /var/lib/start/osm-bright-end ] || [ ! -f /var/lib/start/osm2pgsql-end ]
do
  echo "renderd still waiting for osm2pgsql & osm-bright to complete.."
  sleep 2
done

#start the daemon
sleep 10
echo "renderd is starting"
exec $START_CMD
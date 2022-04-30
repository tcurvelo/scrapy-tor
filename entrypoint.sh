#!/bin/bash

# Start tor and privoxy services
runsvdir service &
sleep 1

# Wait for Tor circuit to be established before executing the command
sv -w 60 check ./service/tor && \
    exec "$@" \
    || echo "Could not connect to Tor network" && exit -1

#!/bin/bash

# set proxies envs for runtime only
export http_proxy=http://localhost:3128
export https_proxy=http://localhost:3128

# Start tor and privoxy services
runsvdir service &
sleep 1

# Wait for Tor circuit to be established before executing the command
sv -w 60 check ./service/tor && \
    exec "$@" \
    || echo "Could not connect to Tor network" && exit -1

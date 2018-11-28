#!/usr/bin/env bash

RUNNING=$(docker ps | grep homeassistant)

if [ -z "$RUNNING" ]; then
  echo "Home assistant is not running"
  $(docker start home-assistant)
elif [ -n "$RUNNING" ]; then
  echo "HA is up"
fi

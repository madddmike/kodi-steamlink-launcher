#!/bin/bash

sleep 10

while pgrep steamlink &>/dev/null; do
  sleep 5
done

sudo service xbmc restart

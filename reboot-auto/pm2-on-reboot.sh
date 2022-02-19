#!/bin/bash

sleep 2  # Waits 2 seconds.
sudo pm2 start /opt/te5t/bin/www --watch

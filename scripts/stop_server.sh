#!/bin/bash
isExistApp=`pgrep pm2`
if [[ -n  $isExistApp ]]; then
    # sudo pm2 kill
    sudo pm2 stop node-app
    # you can remove the crontab as well
fi
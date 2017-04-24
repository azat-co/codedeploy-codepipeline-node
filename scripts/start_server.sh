#!/bin/bash
# this will restart app/server on instance reboot
crontab -l | { cat; echo "@reboot pm2 start /var/www/slow-hello-world.js -i 0 --name \"node-app\""; } | crontab -
# actually start the server
sudo pm2 start /var/www/slow-hello-world.js -i 0 --name "node-app"


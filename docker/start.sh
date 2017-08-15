#!/bin/bash

ruby render_template.rb

su -s /bin/bash www-data -c "mkdir -p /tmp/lock"
su -s /bin/bash www-data -c "mkdir -p /tmp/cache"

exec apache2ctl -f /tmp/httpd.conf -D FOREGROUND

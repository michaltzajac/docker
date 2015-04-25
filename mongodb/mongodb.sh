#!/bin/sh

exec /sbin/setuser mongodb /usr/bin/mongod -f /etc/mongod.conf >>/var/log/mongodb/start.log 2>&1

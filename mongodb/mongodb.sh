#!/bin/sh

exec /sbin/setuser mongodb /usr/bin/mongod >>/var/log/mongodb.log 2>&1

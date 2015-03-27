FROM            phusion/baseimage:0.9.16
MAINTAINER      Michał Zając <michal.t.zajac@gmail.com>
RUN             apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN             echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" |  tee /etc/apt/sources.list.d/mongodb-org-3.0.list
RUN             apt-get update -y
RUN             apt-get install -y mongodb-org=3.0.1 mongodb-org-server=3.0.1 mongodb-org-shell=3.0.1 mongodb-org-mongos=3.0.1 mongodb-org-tools=3.0.1
RUN             sed -i '/bind_ip/d' /etc/mongod.conf
RUN             mkdir -p /data/db && chown mongodb:mongodb /data/db
RUN             mkdir -p /etc/service/mongodb
ADD             mongodb.sh /etc/service/mongodb/run
RUN             apt-get clean && rm -rf /vat/lib/apt/lists/* /tmp/* /var/tmp/*
ENTRYPOINT      ["/sbin/my_init"]
EXPOSE          27017
VOLUME          /data/db

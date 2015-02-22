FROM            centos:centos7
MAINTAINER      Michal Zajac <parmezan@gmail.com>
ADD             mongodb.repo /etc/yum.repos.d/
RUN             yum install -y mongodb-org
RUN             sed -i -e 's:fork=true:fork=false:' /etc/mongod.conf
RUN             sed -i '/bind_ip/d' /etc/mongod.conf
RUN             sed -i '/logpath/d' /etc/mongod.conf
USER            mongod
#CMD             mongod -f /etc/mongod.conf && tail -f /var/log/mongodb/mongod.log
ENTRYPOINT      ["mongod"]
CMD             ["-f", "/etc/mongod.conf"]
EXPOSE          27017

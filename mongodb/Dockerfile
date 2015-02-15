FROM            centos:centos7
MAINTAINER      Michal Zajac <parmezan@gmail.com>
ADD             mongodb.repo /etc/yum.repos.d/
RUN             yum install -y mongodb-org
RUN             sed -i -e 's:fork=true:fork=false:' /etc/mongod.conf
RUN             sed -i -e 's:bind_ip=127.0.0.1:bind_ip=0.0.0.0:' /etc/mongod.conf
USER            mongod
CMD             mongod -f /etc/mongod.conf
EXPOSE          27017

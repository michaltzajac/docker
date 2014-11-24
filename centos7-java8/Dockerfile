FROM            centos:centos7
MAINTAINER      Michal Zajac <michal.t.zajac@gmail.com>
ADD             jdk-8u25-linux-x64.rpm /tmp/
RUN             yum install -y /tmp/jdk-8u25-linux-x64.rpm
RUN             rm /tmp/jdk-8u25-linux-x64.rpm
ENV             JAVA_HOME /usr/java/default/


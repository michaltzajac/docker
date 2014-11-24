FROM            mzajac/centos7java:8u25
MAINTAINER      Michal Zajac <parmezan@gmail.com>
ADD             apache-tomcat-8.0.15.tar.gz /opt/
RUN             mkdir -p /data/webapps
RUN             rm /opt/apache-tomcat-8.0.15/conf/server.xml
ADD             server.xml /opt/apache-tomcat-8.0.15/conf/
ENTRYPOINT      /opt/apache-tomcat-8.0.15/bin/catalina.sh run

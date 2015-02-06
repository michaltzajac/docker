FROM            mzajac/centos-java:8u25
MAINTAINER      Michal Zajac <parmezan@gmail.com>
RUN             yum install -y tar
RUN             curl -o /tmp/tomcat.tar.gz http://ftp.ps.pl/pub/apache/tomcat/tomcat-8/v8.0.15/bin/apache-tomcat-8.0.15.tar.gz
RUN             tar -C /opt/ -xf /tmp/tomcat.tar.gz
RUN             rm /tmp/tomcat.tar.gz
RUN             mkdir -p /data/webapps
RUN             rm /opt/apache-tomcat-8.0.15/conf/server.xml
ADD             server.xml /opt/apache-tomcat-8.0.15/conf/
CMD             /opt/apache-tomcat-8.0.15/bin/catalina.sh run
EXPOSE          8080
VOLUME          ["/data/webapps"]

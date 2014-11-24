FROM            sionsmith/oracle-java8
MAINTAINER      Michał Zając <mzajac@objectivity.co.uk>

ADD             tomcat.tar.gz /opt/
RUN             sed -i 's:appBase="webapps":appBase="/data/webapps":' /opt/apache-tomcat-7.0.56/conf/server.xml
RUN             mkdir /data
RUN             mkdir /data/webapps
RUN             mkdir /data/is24
ENV             JAVA_OPTS '-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 -Dcom.sun.management.jmxremote= -Dcom.sun.management.jmxremote.port=1099 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false'
EXPOSE          8080 5005 1099
VOLUME          ["/data/webapps", "/data/is24"]
ENTRYPOINT      /opt/apache-tomcat-7.0.56/bin/catalina.sh run

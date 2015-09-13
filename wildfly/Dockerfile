FROM            mzajac/java8:8u60
MAINTAINER      Michal Zajac <michal.t.zajac@gmail.com>

RUN             (cd /tmp && curl -O http://download.jboss.org/wildfly/9.0.1.Final/wildfly-9.0.1.Final.tar.gz)
RUN             (cd /opt && tar xf /tmp/wildfly-9.0.1.Final.tar.gz)
RUN             rm /tmp/wildfly-9.0.1.Final.tar.gz
RUN             (cd /tmp && curl -O https://jdbc.postgresql.org/download/postgresql-9.4-1202.jdbc42.jar)
RUN             apt-get update && apt-get install -y libaio1

RUN             mkdir /etc/service/wildfly
ADD             wildfly.sh /etc/service/wildfly/run
RUN             chmod 755 /etc/service/wildfly/run

#ADD             wildfly-8.2.0.Final.tar.gz /opt/
#ADD             postgresql-9.3-1102.jdbc41.jar /tmp/
#EXPOSE          8080                       
#RUN             echo "admin=46f8d6885834b69e95eb6ad08470c2ef" >> /opt/wildfly-8.2.0.Final/standalone/configuration/mgmt-users.properties
#RUN             echo "admin=" >> /opt/wildfly-8.2.0.Final/standalone/configuration/mgmt-groups.properties
#RUN             mkdir -p /data/deployments 
#RUN             sed -i -e 's:path="deployments" relative-to="jboss.server.base.dir":path="/data/deployments":' /opt/wildfly-8.2.0.Final/standalone/configuration/standalone-full.xml 
#ADD             config.sh /tmp/            
#RUN             chmod 755 /tmp/config.sh   
#RUN             /tmp/config.sh             
#RUN             rm /tmp/config.sh          
#VOLUME          /data/deployments
#CMD             /opt/wildfly-8.2.0.Final/bin/standalone.sh -b 0.0.0.0 -bmanagement=0.0.0.0 --server-config=standalone-full.xml

EXPOSE          8080 9990

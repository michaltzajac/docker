FROM            mzajac/centos-java:8u25
MAINTAINER      Michal Zajac <michal.t.zajac@gmail.com>
ADD             wildfly-8.2.0.Final.tar.gz /opt/
ADD             postgresql-9.3-1102.jdbc41.jar /tmp/
EXPOSE          8080 9990
RUN             echo "admin=46f8d6885834b69e95eb6ad08470c2ef" >> /opt/wildfly-8.2.0.Final/standalone/configuration/mgmt-users.properties
RUN             echo "admin=" >> /opt/wildfly-8.2.0.Final/standalone/configuration/mgmt-groups.properties
RUN             mkdir -p /data/deployments
RUN             sed -i -e 's:path="deployments" relative-to="jboss.server.base.dir":path="/data/deployments":' /opt/wildfly-8.2.0.Final/standalone/configuration/standalone-full.xml 
ADD             config.sh /tmp/
RUN             chmod 755 /tmp/config.sh
RUN             /tmp/config.sh
RUN             rm /tmp/config.sh
VOLUME          /data/deployments
CMD             /opt/wildfly-8.2.0.Final/bin/standalone.sh -b 0.0.0.0 -bmanagement=0.0.0.0 --server-config=standalone-full.xml

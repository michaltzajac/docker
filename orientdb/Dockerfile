FROM            mzajac/centos-java:8u25
MAINTAINER      Michal Zajac <michal.t.zajac@gmail.com>
RUN             yum install -y wget tar
RUN             wget 'http://www.orientechnologies.com/download.php?email=unknown@unknown.com&file=orientdb-community-2.0.3.tar.gz&os=linux' \
                     -O /opt/orientdb-community-2.0.3.tar.gz
RUN             cd /opt; tar xf orientdb-community-2.0.3.tar.gz
ENTRYPOINT      ["/opt/orientdb-community-2.0.3/bin/server.sh"]
EXPOSE          2480 2424

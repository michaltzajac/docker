FROM            mzajac/java8:8u60
MAINTAINER      Michał Zając <michal.t.zajac@gmail.com>

RUN             (cd /opt && curl -O http://downloads.jboss.org/hornetq/hornetq-2.4.0.Final-bin.tar.gz)
RUN             (cd /opt && tar xf hornetq-2.4.0.Final-bin.tar.gz)
RUN             (cd /opt && rm hornetq-2.4.0.Final-bin.tar.gz)
RUN             (apt-get update && apt-get install -y libaio1)
RUN             mkdir /etc/service/hornetq
ADD             hornetq.sh /etc/service/hornetq/run
RUN             chmod 755 /etc/service/hornetq/run

EXPOSE          5445 5545

FROM        phusion/baseimage:0.9.16
MAINTAINER  Michał Zając <michal.t.zajac@gmail.com>
RUN         add-apt-repository -y ppa:webupd8team/java
RUN         apt-get update -y
RUN         echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN         apt-get install -y oracle-java8-installer=8u40+8u33arm-1~webupd8~0
ENV         JAVA_HOME=/usr/lib/jvm/java-8-oracle/

ENTRYPOINT  ["/sbin/my_init"]
RUN         apt-get clean && rm -rf /vat/lib/apt/lists/* /tmp/* /var/tmp/*

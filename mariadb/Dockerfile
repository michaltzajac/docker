FROM            centos:centos7
MAINTAINER      Michal Zajac <parmezan@gmail.com>
ADD             MariaDB.repo /etc/yum.repos.d/
RUN             yum install -y MariaDB-server MariaDB-client

CMD             /usr/bin/mysqld_safe
EXPOSE 3306

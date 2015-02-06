FROM            centos:centos7
MAINTAINER      Michal Zajac <parmezan@gmail.com>
RUN             yum install -y http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
RUN             yum install -y mysql-community-server
RUN             mysql_install_db --user=mysql
RUN             touch /var/log/mysqld.log
RUN             chown mysql:mysql /var/log/mysqld.log
USER            mysql
CMD             cd /usr ; /usr/bin/mysqld_safe
EXPOSE 3306

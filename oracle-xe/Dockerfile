FROM wnameless/oracle-xe-11g
MAINTAINER Michał Zając <michal.t.zajac@gmail.com>
RUN echo "CREATE USER mzajac IDENTIFIED BY kodex;" | /u01/app/oracle/product/11.2.0/xe/bin/sqlplus system/oracle
RUN echo "GRANT CONNECT,RESOURCE,CREATE VIEW TO mzajac;" | /u01/app/oracle/product/11.2.0/xe/bin/sqlplus system/oracle

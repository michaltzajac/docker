FROM            centos:centos7
MAINTAINER      Michal Zajac <parmezan@gmail.com>
RUN             yum install -y http://yum.postgresql.org/9.3/redhat/rhel-7-x86_64/pgdg-centos93-9.3-1.noarch.rpm
RUN             yum install -y postgresql93-server postgresql93-contrib
RUN             localedef -c -i pl_PL -f UTF-8 pl_PL.UTF-8
USER            postgres
RUN             /usr/pgsql-9.3/bin/initdb -E UTF-8 -D /var/lib/pgsql/9.3/data
RUN             echo "host  all     all     0.0.0.0/0           md5" >> /var/lib/pgsql/9.3/data/pg_hba.conf
RUN             echo "listen_addresses = '*'" >> /var/lib/pgsql/9.3/data/postgresql.conf
CMD             /usr/pgsql-9.3/bin/pg_ctl start -D /var/lib/pgsql/9.3/data/ && tail -f /var/log/pgsql
EXPOSE          5432


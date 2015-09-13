#!/bin/sh

WILDFLY_HOME=/opt/wildfly-9.0.1.Final

sleep 10
echo "module add --name=org.postgresql --resources=/tmp/postgresql-9.4-1202.jdbc42.jar --dependencies=javax.api,javax.transaction.api" | $WILDFLY_HOME/bin/jboss-cli.sh --connect
connectecho "/subsystem=datasources/jdbc-driver=postgresql:add(driver-name=postgresql,driver-class-name=org.postgresql.Driver,driver-module-name=org.postgresql,driver-xa-datasource-class-name=org.postgresql.xa.PGXADataSource)" | $WILDFLY_HOME/bin/jboss-cli.sh --connect


if [[ ! -z $ADMIN_PASSWORD ]]; then
    echo "Adding admin user"
fi


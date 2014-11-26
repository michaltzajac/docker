#!/bin/sh

/opt/wildfly-8.2.0.Final/bin/standalone.sh --server-config=standalone-full.xml &
PID=$!
sleep 10
echo "module add --name=org.postgresql --resources=/tmp/postgresql-9.3-1102.jdbc41.jar --dependencies=javax.api,javax.transaction.api" | /opt/wildfly-8.2.0.Final/bin/jboss-cli.sh --connect
echo "/subsystem=datasources/jdbc-driver=postgresql:add(driver-name=postgresql,driver-class-name=org.postgresql.Driver,driver-module-name=org.postgresql,driver-xa-datasource-class-name=org.postgresql.xa.PGXADataSource)" | /opt/wildfly-8.2.0.Final/bin/jboss-cli.sh --connect
echo "KILLING Wildfly"
kill $PID

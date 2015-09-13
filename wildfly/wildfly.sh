#!/bin/sh

WILDFLY_HOME=/opt/wildfly-9.0.1.Final
#export JAVA_OPTS="${JAVA_OPTS} -Djboss.bind.address=0.0.0.0"

$WILDFLY_HOME/bin/standalone.sh -b=0.0.0.0 -bmanagement=0.0.0.0 -server-config=standalone-full.xml > /var/log/wildfly.log 2>&1 &
PID=$!

ls $WILDFLY_HOME/configured > /dev/null 2>&1
if [ $? != 0 ]; then
    echo "Configuring wildfly"

    if [ ! -z $ADMIN_PASSWORD ]; then
        echo "Adding user admin"
        $WILDFLY_HOME/bin/add-user.sh -u admin -s -p $ADMIN_PASSWORD
    fi


    netstat -tln | grep :9990 > /dev/null 2>&1
    while [ $? != 0 ]; do
        echo "not running, waiting one second"
        sleep 1;
        netstat -tln | grep :9990 > /dev/null 2>&1
    done

    JBOSS_CLI="$WILDFLY_HOME/bin/jboss-cli.sh --connect"

    echo "module add --name=org.postgresql --resources=/tmp/postgresql-9.4-1202.jdbc42.jar --dependencies=javax.api,javax.transaction.api" | $JBOSS_CLI
    echo "/subsystem=datasources/jdbc-driver=postgresql:add(driver-name=postgresql,driver-class-name=org.postgresql.Driver,driver-module-name=org.postgresql,driver-xa-datasource-class-name=org.postgresql.xa.PGXADataSource)" | $JBOSS_CLI
    echo "/socket-binding-group=standard-sockets/socket-binding=messaging:add(port=5445)" | $JBOSS_CLI
    echo "/subsystem=messaging/hornetq-server=default/remote-acceptor=netty:add(socket-binding=messaging)" | $JBOSS_CLI
    echo "reload" | $JBOSS_CLI

    touch $WILDFLY_HOME/configured
    echo "Wildfly configured"
else
    echo "Already confiugred"

fi

#exec $WILDFLY_HOME/bin/standalone.sh --server-config=standalone-full.xml

wait $PID

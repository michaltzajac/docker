#!/bin/bash

HORNETQ_HOME=/opt/hornetq-2.4.0.Final
export CLUSTER_PROPS="-Dhornetq.remoting.netty.host=0.0.0.0"

cd $HORNETQ_HOME/bin
exec ./run.sh

#!/bin/bash

set -e

start_pcscd()
{
  service pcscd start
}

start_shodo()
{
  $JAVA_HOME/bin/java -jar $SHODO_HOME/shodo.jar > $HOME/.log/shodo.log 2>&1 &

  SHODO_PID=$!
  ps $SHODO_PID > /dev/null || { cat $HOME/.log/shodo.log && exit -1; }
}

mkdir -p $HOME/.log

start_pcscd
start_shodo

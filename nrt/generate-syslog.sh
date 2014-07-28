#!/bin/bash
logger -p auth.warn -i Auth error for user brock
for i in $(seq 0 ${RANDOM:1:1})
do
  service ntpd restart
done
for i in $(seq 0 ${RANDOM:1:1})
do
  logger -p kern.warn -i Disk subsystem error
done
logger -p auth.warn -i User hdfs authentication

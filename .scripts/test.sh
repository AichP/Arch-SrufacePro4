#!/bin/bash
variable=`ps -ef | grep "port 10 -" | grep -v "grep port 10 -" | awk '{printf $12}'`
echo $variable

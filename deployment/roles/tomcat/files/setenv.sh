#!/bin/bash

export JAVA_OPTS='-Xms512M -Xmx1024M -XX:MaxPermSize=512M'
export JAVA_OPTS="$JAVA_OPTS -Djava.security.egd=file:/dev/./urandom"

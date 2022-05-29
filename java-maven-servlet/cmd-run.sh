#!/bin/bash
podman run \
       --name java-maven-servlet \
       --volume=./src/test/shared:/usr/local/tomcat/shared/classes \
       --publish 8080:8080 \
       java-maven-servlet:latest
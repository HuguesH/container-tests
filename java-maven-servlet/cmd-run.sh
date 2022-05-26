#!/bin/bash
podman run \
       --name java-maven-servlet \
       --publish 8080:8080 \
       java-maven-servlet:latest
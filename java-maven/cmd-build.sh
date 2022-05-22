#!/bin/bash
mvn clean clean build
cp ./src/container/* ./target
cd target
podman build -t java-maven .

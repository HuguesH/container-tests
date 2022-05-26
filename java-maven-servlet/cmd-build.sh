#!/bin/bash
# Prerequis : JAVA et MAVEN
#mvn clean clean package
# Prerequis : docker ou podman
mkdir -p ./target/container
#Copy unpacked Tomcat
mkdir -p ./target/container/tomcat/
cp -r ./target/dependency/apache-tomcat-*/bin ./target/container/tomcat
cp -r ./target/dependency/apache-tomcat-*/conf ./target/container/tomcat
cp -r ./target/dependency/apache-tomcat-*/lib ./target/container/tomcat
cp -r ./target/dependency/apache-tomcat-*/logs ./target/container/tomcat
cp -r ./target/dependency/apache-tomcat-*/temp  ./target/container/tomcat
cp ./target/dependency/apache-tomcat-*/LICENSE  ./target/container/tomcat
cp ./target/dependency/apache-tomcat-*/RELEASE-NOTES ./target/container/tomcat
#Copy Docker config
cp -r ./src/container/ ./target/
#Copy WebApp
unzip -o "./target/java-maven-servlet-*.war" -d "./target/container/java-maven-servlet"
cd target/container
podman build -t java-maven-servlet .

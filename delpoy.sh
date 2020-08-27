#!/bin/bash
apt update
apt install maven default-jdk tomcat8 -y
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
cd boxfuse-sample-java-war-hello
mvn clean package
cd target
cp hello-1.0.war /var/lib/tomcat8/webapps
service tomcat8 restart

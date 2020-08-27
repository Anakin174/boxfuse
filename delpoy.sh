#!/bin/bash
apt update
apt install maven default-jdk tomcat8 git -y
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
mvn -f /boxfuse-sample-java-war-hello/pom.xml clean package


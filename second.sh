#!/bin/bash

yum -y install wget
echo "Install Java"
yum -y install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64
echo "Create user/group"
groupadd tomcat
useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
echo "Install Tomcat"
cd /opt/
wget http://us.mirrors.quenda.co/apache/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz
tar -xzvf apache-tomcat-9.0.30.tar.gz
mv apache-tomcat-9.0.30/* tomcat/
chown -hR tomcat:tomcat tomcat
echo "Run Tomcat"
/opt/tomcat/bin/startup.sh

#!/bin/bash
echo "Install epel repo"
yum install epel-release -y
echo "Install Nginx"
yum install nginx -y
systemctl start nginx
systemctl enable nginx

#firewall-cmd --permanent --zone=public --add-service=http 
#firewall-cmd --permanent --zone=public --add-service=https
#firewall-cmd –reload
echo "Copy tomcat config"
cp /vagrant/nginx/tomcat.conf /etc/nginx/conf.d/tomcat.conf

systemctl restart nginx
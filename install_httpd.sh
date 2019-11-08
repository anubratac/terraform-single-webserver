#!/bin/sh
yum update -y 
yum install httpd -y
systemctl start httpd
systemctl enable httpd
touch /var/www/html/index.html
chown ec2-user /var/www/html/index.html
echo "ByteCubed challenge ${HOSTNAME}" > /var/www/html/index.html

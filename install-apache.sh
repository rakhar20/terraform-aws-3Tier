#!?bin/bash

yum update-y
yun installl -y httpd
systemstl start httpd
systemctl enable https 
echo "<html><body><h1>Web tier"</h1></body></html>" > /var/www/html/index.html
#!/bin/bash
yum update -y
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd mariadb aws-cli
systemctl start httpd
systemctl enable httpd
cd /var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
cp wordpress/wp-config-sample.php wordpress/wp-config.php
sed -i 's/database_name_here/wordpressdb/' wordpress/wp-config.php
sed -i "s/username_here/${db_username}/" wordpress/wp-config.php
sed -i "s/password_here/${db_password}/" wordpress/wp-config.php
sed -i "s/localhost/${db_host}/" wordpress/wp-config.php
systemctl restart httpd
aws sns publish --topic-arn "${sns_topic_arn}" --message "WordPress installation completed on $(hostname)" --region ${region}


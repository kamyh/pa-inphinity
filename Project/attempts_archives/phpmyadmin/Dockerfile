FROM ubuntu:14.04

RUN apt-get update

# Install sshd
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

# Set password to 'admin'
RUN printf admin\\nadmin\\n | passwd

# Install MySQL
RUN apt-get install -y mysql-server mysql-client libmysqlclient-dev
# Install Apache
RUN apt-get install -y apache2
# Install php
RUN apt-get install -y php5 libapache2-mod-php5 php5-mcrypt

# Install phpMyAdmin
RUN mysqld & \
	service apache2 start; \
	sleep 5; \
	printf y\\n\\n\\n1\\n | apt-get install -y phpmyadmin; \
	sleep 15; \
	mysqladmin -u root shutdown

RUN sed -i "s#// \$cfg\['Servers'\]\[\$i\]\['AllowNoPassword'\] = TRUE;#\$cfg\['Servers'\]\[\$i\]\['AllowNoPassword'\] = TRUE;#g" /etc/phpmyadmin/config.inc.php 
RUN sed -i '/upload_max_filesize/s/= *2M/=150M/' /etc/php5/apache2/php.ini
RUN sed -i '/memory_limit/s/= *128M/=150M/' /etc/php5/apache2/php.ini
RUN sed -i '/post_max_size/s/= *8M/=150M/' /etc/php5/apache2/php.ini
#RUN service apache2 restart

EXPOSE 22
EXPOSE 80
EXPOSE 3306

CMD mysqld_safe & \
	service apache2 start; \
	/usr/sbin/sshd -D

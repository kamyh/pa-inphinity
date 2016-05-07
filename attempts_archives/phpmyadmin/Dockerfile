FROM debian@sha256:a9c958be96d7d40df920e7041608f2f017af81800ca5ad23e327bc402626b58e

ENV PMA_SECRET          blowfish_secret
ENV PMA_USERNAME        pma
ENV PMA_PASSWORD        password
ENV PMA_NO_PASSWORD     0
ENV PMA_AUTH_TYPE       cookie
ENV MYSQL_USERNAME      mysql
ENV MYSQL_PASSWORD      password
ENV MYSQL_PORT_3306_TCP_ADDR      127.0.0.1
ENV MYSQL_PORT_3306_TCP_PORT      3306

RUN apt-get update
RUN apt-get install -y mysql-client
RUN apt-get install -y wget
RUN apt-get install -y php5
RUN apt-get install -y bzip2
RUN apt-get install -y php5-mysql
RUN apt-get install -y php5-fpm

ENV PHPMYADMIN_VERSION 4.5.0.2

RUN wget https://files.phpmyadmin.net/phpMyAdmin/${PHPMYADMIN_VERSION}/phpMyAdmin-${PHPMYADMIN_VERSION}-english.tar.bz2 \
 && tar -xvjf /phpMyAdmin-${PHPMYADMIN_VERSION}-english.tar.bz2 -C / \
 && rm /phpMyAdmin-${PHPMYADMIN_VERSION}-english.tar.bz2 \
 && mv /phpMyAdmin-${PHPMYADMIN_VERSION}-english /www

ADD sources/config.inc.php /
ADD sources/create_user.sql /
ADD sources/phpmyadmin-start /usr/local/bin/
ADD sources/phpmyadmin-firstrun /usr/local/bin/

RUN chmod +x /usr/local/bin/phpmyadmin-start
RUN chmod +x /usr/local/bin/phpmyadmin-firstrun

EXPOSE 80

CMD phpmyadmin-start

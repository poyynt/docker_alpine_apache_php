FROM ptorbatii/alpine_apache

LABEL maintainer="ptorbatii@gmail.com" license="APSL"

RUN set -xe \
	&& apk add apache2-proxy php7-fpm \
	&& apk add php7-intl php7-openssl php7-dba php7-sqlite3 php7-pear php7-tokenizer php7-litespeed php7-gmp php7-phalcon php7-sodium php7-mysqlnd php7-enchant php7-xmlrpc php7-xmlreader php7-pdo_mysql php7-recode php7-opcache php7-gettext php7-json php7-xml php7-iconv php7-curl php7-shmop php7-odbc php7-phar php7-zip php7-tidy php7-soap php7-mysqli php7-simplexml php7-xmlwriter php7-ctype php7-gd


COPY httpd.conf /etc/apache2/httpd.conf
COPY run_services.sh run_services.sh

CMD ./run_services.sh




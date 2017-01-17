FROM php:apache
MAINTAINER Kaisar Arkhan (Yuki) <ykno@protonmail.com>

ADD moonmoon /var/www/html

RUN cd /var/www/html && \
    apt-get update && apt-get install -y git unzip cron && \
    curl https://getcomposer.org/composer.phar -o composer.phar && \
    php composer.phar install && \
    rm -rf composer.phar install.php admin/ tests/ *.yml *.json \
           README.markdown LICENSE VERSION && \
    apt-get autoremove -y git unzip

VOLUME /var/www/html/custom

ADD crontab /etc/cron.d/autoupdate

CMD cron && apache2-foreground

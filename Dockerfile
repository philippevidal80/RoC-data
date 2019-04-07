FROM ubuntu 
RUN apt-get update \
    && apt-get -y install apache2 \
    && apt-get -y install apache2-utils \
    && apt-get -y install git \
    && apt-get clean \
    && cd /var/www/html/ \
    && rm -rf index.html \
    && git clone -b add-images https://github.com/philippevidal80/RoC-data.git .
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]

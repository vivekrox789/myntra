FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN apt -y install curl
COPY index.html /var/www/html/
COPY index.css /var/www/html/
COPY images/ /var/www/html/images/
ENTRYPOINT apachectl -D FOREGROUND

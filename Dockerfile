FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get -y install apache2
COPY ports.conf /etc/apache2
COPY index.html /var/www/html/
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
RUN useradd -ms /bin/bash hillel_devops
EXPOSE 8080


FROM ubuntu:14.04


RUN apt-get update && apt-get install -y apache2 libxml2-dev libapache2-mod-proxy-html &&\
    a2enmod headers &&\
	a2enmod status &&\
	a2enmod ssl &&\
	a2enmod lbmethod_byrequests slotmem_shm &&\
    a2enmod proxy &&\
    a2enmod proxy_http &&\
    a2enmod proxy_balancer

ADD installation/000-default.conf /etc/apache2/sites-available/
ADD installation/000-ssl.conf /etc/apache2/sites-enabled/
ADD installation/htpasswd /etc/apache2/htpasswd
ADD installation/start.sh /
RUN chmod 775 /start.sh

EXPOSE 80

ENTRYPOINT ["/start.sh"]
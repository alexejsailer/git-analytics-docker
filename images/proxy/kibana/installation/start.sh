#!/bin/bash

sed -i -e "s/192.168.56.101/node1/g" /etc/apache2/sites-available/000-default.conf
sed -i -e "s/192.168.56.102/node2/g" /etc/apache2/sites-available/000-default.conf

apachectl start
while [ "$END" == '' ]; do
	sleep 10
	trap "/etc/init.d/apache2 stop && END=1" INT TERM
done

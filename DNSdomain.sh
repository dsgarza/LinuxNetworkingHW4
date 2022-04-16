#!/bin/bash

echo "Script will only work if DHCP & NAMED services are up and running!"

sleep 2

echo "Also make sure the previously configured example.org is working!"

sleep 2

systemctl stop named.service

echo "Please enter your new domain name:"

read x

cp /var/named/example.org.db /var/named/$x.db

cp /var/named/example.org.rev /var/named/$x.rev

cp /etc/named.conf /etc/named.conf.example

sed -i s/example.org/$x/g /var/named/$x.db

sed -i s/example.org/$x/g /var/named/$x.rev

sed -i s/example.org/$x/g /etc/named.conf

echo "Please review the changes manually to ensure they are correct!"

systemctl start named.service

dig @localhost ns1.$x

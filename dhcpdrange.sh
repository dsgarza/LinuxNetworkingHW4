#!/bin/bash

echo "Please enter the start of your IP range:"

read x

echo "Please enter the end of your IP range:"

read y

sed -i "1 a\ range $x $y;" dhcpd.conf

cat dhcpd.conf

echo "Range implemented successfully!"

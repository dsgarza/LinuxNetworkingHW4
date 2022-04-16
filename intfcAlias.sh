#!/bin/bash

sudo ifconfig ens224:0 20.30.40.2 netmask 255.255.255.0
sudo ifconfig ens224:1 20.30.40.23 netmask 255.255.255.0
sudo ifconfig ens224:2 20.30.40.25 netmask 255.255.255.0
sudo ifconfig ens224:3 20.30.40.80 netmask 255.255.255.0

sudo service network restart

sudo ifconfig

#!/bin/bash

# currently post install, needs install steps adding

a2enmod rewrite

apt install php-pear
pear install Net_SMTP
pear install mail

# php enable mods - write to /etc/php/7.0/mods-available/
# then phpendmod

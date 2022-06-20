#!/bin/bash

sudo su 
if [ -d /var/www/html/build ] 
then
    rm -rf /var/www/html/build
fi

mv /helloworld/reactjs /etc/nginx/sites-available/
if [ $? -eq 0 ] 
then
   cd /etc/nginx/sites-enabled/

if [ $? -eq 0 ]
then
    ln -s /etc/nginx/sites-available/reactjs .
fi
fi

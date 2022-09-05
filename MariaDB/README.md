# MariaDB

Database credentials:

**user: root**

**password: mariadb.2022**

Other details:

**port: 3306**

**url: http://127.0.0.1:81/phpmyadmin**

## Run This Container

First you need to run the container, if you don't have it, then following will download its image and then run the container

Windows:

        winpty docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:3306:3306 \
        --name mariadb -ti mariadb bash

Linux and Mac:

        docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:3306:3306 \
        --name mariadb -ti mariadb bash

## Start Services

When the container is running, you need to enter it and start its services.

        docker attach mariadb
        /root/start.sh

Now try to surf to the url given above! You should see the PHPMyAdmin login.
# MariaDB

Database credentials:

**user: root**

**password: mariadb.2022**

Other details:

**host: localhost**

**port: 3306**

**URL: http://127.0.0.1:81/phpmyadmin**

## Run This Container

First you need to run the container, if you don't have it, then following will download its image and then run the container

Windows:

        winpty docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:3306:3306 \
        --name mariadb -ti mikaelhelin/debian_mariadb bash

Linux and Mac:

        docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:3306:3306 \
        --name mariadb -ti mikaelhelin/debian_mariadb bash

## Start Services

When the container is running, you need to enter it and start its services.

Windows:

        winpty docker attach mariadb
        /root/start.sh

Linux and Mac:

        docker attach mariadb
        /root/start.sh

Now try to surf to the url given above! You should see the PHPMyAdmin login. Login and do whatever you like to do.

## Testing Sample Data

Surf into the URL and then login.

When you have logged in:

* Click the Databases tab,
* enter "food" as 'Database Name' into the field,
* click the Create-button,
* click the Import tab,
* click on browse and upload **food.sql**.
* Click the Go-button.
  
And now you have uploaded some sample data. Continue to do whatever exersice you like. Pherhaps try to export to different format, delete the database and then import?


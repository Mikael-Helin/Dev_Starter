# **Running MariaDB and Web-GUI on Docker (custom image)**

The purpose with this image, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

It is the LAMP stack on a single image. The pros and cons compared to a build from official images are the following:

**Pros:**
1. Everything is in one image that works.
2. Less to configure.

**Cons:**
1. It is not an official image.
2. Cumbersome to change root password, which you may for example do in phpMyAdmin.
3. Harder to re-configure.

This is a Debian Linux image with MariaDB configured. This image also has a Web-GUI client, phpMyAdmin, to access MariaDB, so you will not need to bloat your computer by installing yet another client, in this case you do not need to install some MySQL/MariaDB client.

## **1.1. Using Official Images**

If you want to use a build from the offical images, then have a look here https://github.com/Mikael-Helin/Dev_Starter/tree/main/LAMP_official

___

## **2. How To Acess?**

Database credentials:

**user: root**

**password: mariadb.2022**

Other details:

**database host: localhost**

**database port: 3306**

**Web-GUI URL: http://localhost:81/phpmyadmin**

Login into Web-GUI, phpMyAdmin, and login with user and password.
___

## **3. Pre-Requestives**

Have a terminal installed on your system.

Have Docker or Docker Desktop installed on your system.

See section 1-2 in https://github.com/Mikael-Helin/Dev_Starter

___

## **4. Run This Container**

It is recommended that you fulfill the pre-requestives (see section 3).

If you don't have the needed image, then the following command will download the needed image and after that run the container from the image.

But if you already have the needed image, then the same following command will just run the container from the already downloaded image.

Windows:

        winpty docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:3306:3306 \
        --name mariadb -ti mikaelhelin/debian_mariadb bash

Linux and Mac:

        docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:3306:3306 \
        --name mariadb -ti mikaelhelin/debian_mariadb bash

___

## **5. Starting the  Services**

First you need to run the container (see section 4).

When the container is running, then you need to

* enter the container and
* inside the container start its services.

This is how you do it in 2 lines:

Windows:

        winpty docker attach mariadb
        /root/start.sh

Linux and Mac:

        docker attach mariadb
        /root/start.sh

Now try to surf to the url given above! You should see the phpPgAdmin login. Login and do whatever you like to do. Maybe you want to change the root password? Add and remove users?

If any service crashes, then run those commands above again.
___

## **6. Testing with Sample Data**

You should have completed sections 3-5.

When you have logged in into phpMyAdmin:

* Click the Databases tab,
* enter "food" as 'Database Name' into the field,
* click the Create-button,
* click the Import tab,
* click on browse and upload **food.sql**.
* Click the Go-button.
  
And now you have uploaded some sample data. Continue to do whatever exersice you like to do. Pherhaps try to export to different format, delete the database and then import the exported database?

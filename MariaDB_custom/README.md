# **Running MariaDB and Web-GUI on Docker**

## **1. What is this?**

Pros:
1. Everything in one Image that works.
2. Less to configure.

Cons:
1. Is not official image.
2. Cumbersome to change password, which you can for example do in phpMyAdmin.
3. Harder to re-configure.

It is a Debian Linux image with MariaDB configured. This image also has a Web-GUI client to access MariaDB, so you will not need to bloat your computer with installing another client.

The purpose with this image, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1.1. Using Official Images**

Pros:
1. Are official images.
2. Passwords are sent in as environment variables.
3. Takes less space.

Cons:
1. May break after updates when images don't match anymore.

Why not then take official MariaDB image? Using the offical images is actually easy and straighforward and takes less space. You are free to use the official image and work with it but sometimes the official images may break and then you come back here, since you know here we have the image that works.

If you want to use the offical images, then have a look here https://github.com/Mikael-Helin/Dev_Starter/tree/main/MariaDB_official

___

## **2. How To Acess?**

Database credentials:

**user: root**

**password: mariadb.2022**

Other details:

**host: localhost**

**port: 3306**

**URL: http://127.0.0.1:81/phpmyadmin**

___

## **3. Pre-Requestives**

Have Bash installed on your system.

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

This is how you do it:

Windows:

        winpty docker attach mariadb
        /root/start.sh

Linux and Mac:

        docker attach mariadb
        /root/start.sh

Now try to surf to the url given above! You should see the PHPMyAdmin login. Login and do whatever you like to do.

If any service crashes, then run those commands above again, those here in section 5.
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
  
And now you have uploaded some sample data. Continue to do whatever exersice you like. Pherhaps try to export to different format, delete the database and then import?

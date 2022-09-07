# **Running PostgeSQL and Web-GUI on Docker**

## **1. What is this?**

It is a Debian Linux image with PostgreSQL configured. This image also has a Web-GUI client to access PostgreSQL, so you will not need to bloat your computer with installing another client.

Why not take then official postgres image? You are free to use the official image and work with it but then it is also not configured.

The purpose with this image, is to let junior and aspiring developers get started with as little fuzz as possible.

___

## **2. How To Acess?**

Database credentials:

***user: postgres***

***password: postgres.2022***

Other details:

***host: localhost***

***port: 5432***

***URL: http://127.0.0.1:81/phppgadmin***
___

## **3. Pre-Requestives**

Have Bash installed on your system.

Have Docker or Docker Desktop installed on your system.

See (link)

___

## **4. Run The Container**

It is recommended that you fulfill the pre-requestives (see section 3).

If you don't have the needed image, then the following command will download the needed image and after that run the container from the image.

But if you already have the needed image, then the same following command will just run the container from the image.

Windows:

        winpty docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:5432:5432 \
        --name postgres -ti mikaelhelin/postgres_mariadb bash

Linux and Mac:

        docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:5432:5432 \
        --name postgres -ti mikaelhelin/postgres_mariadb bash

___

## **5. Starting the Services**

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

___

## **6. Access the Services**

(*The information needed in this section you find in section 2.*)

Is everything up and runnig? You can test! Now try to surf to the url given above! You should see the PHPMyAdmin login... if you do then it works.

Login and do whatever you like to do.

If any service crashes, then run those commands above again, those in section 5.

___

## **7. Testing with Sample Data**

You should have completed sections 3-6.

When you have logged in into PHPMyAdmin:

* Click the "Databases" tab,
* enter "food" as "Database Name" into its field,
* click the **Create** button,
* click the **Import** tab,
* click on **browse** and then upload **food.sql**.
* Click the **Go** button.
  
And now you have uploaded some sample data. Continue to do whatever exersice you like. Pherhaps try to export your data to different format. Try delete the database and then import the export? *Warning: Importing converted export might not be as straightforward as you think.*

# **Running PostgeSQL and Web-GUI on Docker (custom image)**

The purpose with this image, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

It is a Debian Linux image with PostgreSQL configured. This image also has a Web-GUI client, phpPgAdmin, to access PostgreSQL, so you will not need to bloat your computer by installing another client.

**Pros:**

1. Everything is in one image that works.
2. Less to configure.

**Cons:**

1. It is not an official image.
2. Cumbersome to change root password, which you may for example do in phpMyAdmin.
3. Harder to re-configure.

This is a Debian Linux image with MariaDB configured. This image also has a Web-GUI client, phpMyAdmin, to access MariaDB, so you will not need to bloat your computer by installing yet another client, in this case you do not need to install some PostgreSQL client.
___

## **2. How To Acess?**

Database credentials:

**user: postgres**

**password: postgres.2022**

Other details:

**host: localhost**

**port: 5432**

**Web-GUI URL: http://127.0.0.1:82/phppgadmin**
___

## **3. Pre-Requestives**

Have Bash installed on your system.

Have Docker or Docker Desktop installed on your system.

See section 1-2 in https://github.com/Mikael-Helin/Dev_Starter

___

## **4. Run The Container**

It is recommended that you fulfill the pre-requestives (see section 3).

If you don't have the needed image, then the following command will download the needed image and after that run the container from the image.

But if you already have the needed image, then the same following command will just run the container from the image.

Windows:

        winpty docker run -d -p 0.0.0.0:82:80 -p 0.0.0.0:5432:5432 \
        --name postgres -ti mikaelhelin/debian_postgres bash

Linux and Mac:

        docker run -d -p 0.0.0.0:82:80 -p 0.0.0.0:5432:5432 \
        --name postgres -ti mikaelhelin/debian_postgres bash

___

## **5. Starting the Services**

First you need to run the container (see section 4).

When the container is running, then you need to
* enter the container and
* inside the container start its services.

This is how you do it:

Windows:

        winpty docker attach postgres
        /root/start.sh

Linux and Mac:

        docker attach postgres
        /root/start.sh

Now try to surf to the url given above! You should see the phpPgAdmin login. Login and do whatever you like to do. Maybe you want to change the root password? Add and remove users?

If any service crashes, then run those commands above again.
___

## **6. Testing with Sample Data**

You should have completed sections 3-5.

When you have logged in into phpPgAdmin:

* Click the **PostgreSQL** under "Servers",
* enter the credentials from section 2.

Now you are in, so let us import some sample data

* click the **Schemas** just below "postgres" on the view to the left,
* click on **Create Schema** and enter **todos** into the "Name" field and then click **Create**
* click on the **SQL** tab,
* click on the **Browse** button, select the **dump.sql** file and press **Execute** button.
* Click the **todos** and then **browse** and hopefully you see a table.

You can open **dump.sql** with a text editor, try it!

And now you have uploaded some sample data. Continue to do whatever exersice you like. Pherhaps try to export your data to different format? Try delete the database and then import the export? *Warning: Importing converted export might not be as straightforward as you think.*

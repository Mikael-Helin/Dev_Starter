# **Running PostgeSQL and Web-GUI on Docker (custom image)**

## **1. What is this?**

This is a Debian Linux image with PostgreSQL installed and configured. This image also has a Web-GUI client, phpPgAdmin, to access PostgreSQL, so you will not need to bloat your computer by installing yet another client, in this case you do not need to install some PostgreSQL client. Further, Apache2 and PHP are installed.

**Pros:**

1. Everything is in one image that works out of the box.
2. Less to configure.

**Cons:**

1. It is not an official image.
2. Cumbersome to change root password, which you may for example do in phpPgAdmin.
3. Harder to re-configure.

### **1.1. PAMP**

Myself, I thought you use this image for postgreSQL only. If you want web content for this image, then you can place the web content in the folder **/var/www/html** inside the container or then you map the folder **/var/www/html** to some folder on the host.

___

## **2. How to Acess?**

Database credentials:

**user: postgres**

**password: postgres.2022**

Other details:

**host: localhost**

**port: 5432**

**Web-GUI URL: http://localhost:82/phppgadmin**

**Web content: http://localhost:82**

___

## **3. Pre-Requestives**

Have a terminal installed on your system.

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

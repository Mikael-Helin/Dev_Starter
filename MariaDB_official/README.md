# **Running MariaDB and Web-GUI on Docker (using official images)**

The purpose of this example, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

Pros:
1. Are official images.
2. Passwords are sent in as environment variables.
3. Takes less space.

Cons:
1. May break after updates when images don't match anymore.

These images have MariaDB and phpMyAdmin as Web-GUI, so you will not need to bloat your computer by installing yet another client.

## **1.1. Using Custom Image**

Pros:
1. Everything in one Image that works.
2. Less to configure.

Cons:
1. Is not official image.
2. Cumbersome to change password, which you can for example do in phpMyAdmin.
3. Harder to re-configure.

Why not then take the custom MariaDB image? Using the offical images is actually easy and straighforward and takes less space. You are free to use the custom image too. If you want to use the custom image, then have a look here https://github.com/Mikael-Helin/Dev_Starter/tree/main/MariaDB_custom

___

## **2. How To Acess?**

Database credentials:

**user: root**

**password: mariadb.2022**

Other details:

**database host: localhost**

**database port: 3306**

**Web-GUI URL: http://localhost:81**

Login into Web-GUI with server **mariadb_host** and then use MariaDB root credentials.
___

## **3. Pre-Requestives**

Have Bash installed on your system.

Have Docker or Docker Desktop installed on your system.

See section 1-2 in https://github.com/Mikael-Helin/Dev_Starter

___

## **4. Run This Container**

It is recommended that you fulfill the pre-requestives (see section 3).

If you don't have the needed images, then the following command will download the needed images and after that run the container from these images.

But if you already have the needed images, then the same following command will just run the container from the already downloaded images.

If you want, you can choose another root password, it is up to you.

Windows:

        winpty docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:3306:3306 \
        -e MARIADB_ROOT_PASSWORD=mariadb.2022 \
        --name mariadb -ti mikaelhelin/debian_mariadb bash

Linux and Mac:

        docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:3306:3306 \
        -e MARIADB_ROOT_PASSWORD=mariadb.2022 \
        --name mariadb -ti mikaelhelin/debian_mariadb bash

___

## **5. Starting the  Services**

First you need to run the container (see section 4).

1. Download the docker-compse.yml file
2. Open a terminal in the same folder where you have the docker-compse.yml file.
3. In the terminal type

        docker-compose up

Now try to surf to the url given above! You should see the phpMyAdmin login. Login and do whatever you like to do.

### **5.1. Want to change password?**

This is the most simple way to change the password: Open the docker-compse.yml file with your text editor and change the password before you run docker-compose.

Otherwise, you may create users with password when you logged into phpMyAdmin, which is a bit more cumbersome.
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
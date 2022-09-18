# **Running MariaDB on Docker (official image)**

The purpose of this example, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

Instructions for the official image of MariaDB. It has no Web-GUI. You choose root password by passing in environment varaibles. You may want to use LAMP official image (https://github.com/Mikael-Helin/Dev_Starter/tree/main/LAMP_official) first and then later in the development stage this image?

___

## **2. How to Acess?**

Database credentials:

**user: root**

**password: mariadb.2022**

Other details:

**database host: localhost**

**database port: 3306**
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

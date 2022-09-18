# **Running MariaDB on Docker (official image)**

The purpose of this example, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

Here are instructions for running the official image of MariaDB. This image has no Web-GUI. You choose root password by passing in environment varaibles. You may want to use LAMP official image (https://github.com/Mikael-Helin/Dev_Starter/tree/main/LAMP_official) in the beginning of the development stage and then later in the development stage you may want to instead use the image on this page?

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

All computers:

        docker run -d -p 0.0.0.0:3306:3306 \
        -e MARIADB_ROOT_PASSWORD=mariadb.2022 \
        --name mariadb mariadb

___

## **5. Starting the Service**

MariaDB is already running. But if you need to test...

All computers:

        docker exec mariadb ps aux | grep maria

after running that command you should see if **mariadbd** has its own process. If it has, then MariaDB is running.

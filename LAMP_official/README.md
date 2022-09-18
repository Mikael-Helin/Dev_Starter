# **Running MariaDB and Web-GUI on Docker (official images)**

The purpose with this image, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

It is the LAMP stack built from multiple images. The pros and cons compared to my custom made image are the following:

**Pros:**
1. It is a build from official images.
2. Your chosen root password is sent in as an environment variable into the container.
3. Takes less space.

**Cons:**
1. May break after updates when scripts don't match images anymore.
2. Additional configuration needed for LAMP development. (That configuration is not shown in the guide)

These images have MariaDB and phpMyAdmin as Web-GUI, to access MariaDB, so you will not need to bloat your computer by installing yet another client, in this case you do not need to install some MySQL/MariaDB client.


## **1.1. Using Custom Image**

If you want to use the custom image, then have a look here https://github.com/Mikael-Helin/Dev_Starter/tree/main/LAMP_custom

___

## **2. How to Acess?**

Database credentials:

**user: root**

**password: mariadb.2022**

Other details:

**database host: localhost**

**Web-GUI database host: mariadb**

**database port: 3306**

**Web-GUI URL: http://localhost:81**

Login into Web-GUI, phpMyAdmin, and login with user and password.
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

You can change the MariaDB root password in the docker-compose.yml file. **Open a terminal in the same folder where you have the docker-compose.yml file. Then in the terminal type:**

All computers:

        docker-compose up

___

## **5. Root Login fails? (optional)**

When you login, set server as **mariadb** (not localhost) and then login with the given credentials.

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
  
And now you have uploaded some sample data. Continue to do whatever exersice you like. Pherhaps try to export to different format, delete the database and then import the exported database?

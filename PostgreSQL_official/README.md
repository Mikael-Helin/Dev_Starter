# **Running PostgreSQL on Docker (official image)**

The purpose of this example, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

Here are instructions for running the official image of PostgreSQL. This image has no Web-GUI. You choose root password by passing in environment varaibles. You may want to use PAMP official image (https://github.com/Mikael-Helin/Dev_Starter/tree/main/PAMP_official) in the beginning of the development stage and then later in the development stage you may want to instead use the image on this page?

___

## **2. How to Acess?**

Database credentials:

**user: postgres**

**password: postgres.2022**

Other details:

**database host: localhost**

**database port: 5432**
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

        docker run -d -p 0.0.0.0:5432:5432 \
        -e POSTGRES_PASSWORD=postgres.2022 \
        --name postgres postgres

## **5. Azure Data Studio**

Using PSQL in Docker container is not straightforward, however there is another solution.

By using the PostgreSQL extension in Azure Data Studio you may connect to the database.

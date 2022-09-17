# **Running MongoDB on Docker (official image)**

The purpose with this image, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

It is the official Docker image for MongoDB. It has no GUI client, so if you want a GUI client, then MongoDB Compass is suggested.

Link: https://www.mongodb.com/products/compass

## **2. How to Access?**

Database credentials:

**user: root**

**password: mongodb.2022**

Other details:

**host: localhost**

**mongodb port: 27017**
___

## **3. Pre-Requestives**

Have a terminal installed on your system.

Have Docker or Docker Desktop installed on your system.

See section 1-2 in https://github.com/Mikael-Helin/Dev_Starter

___

## 3. Run This Container

Open a terminal and type

All computers::

		docker run -d --name mongodb \
		-e MONGO_INITDB_ROOT_USERNAME=root \
		-e MONGO_INITDB_ROOT_PASSWORD=mongodb.2022 \
		mongo

and there we go.

In that CLI you can alter the MONGO_INITDB_ROOT_USERNAME and its password MONGO_INITDB_ROOT_PASSWORD to your liking.

Use Compass to import or export any data.

Good Luck!

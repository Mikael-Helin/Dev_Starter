# **Running MongoDB on Docker**

If you want a GUI client, then MongoDB Compass is suggested.

Link: https://www.mongodb.com/products/compass

## **1. INFO**

Database credentials:

**user: root**

**password: mongodb.2022**

Other details:

**host: localhost**

**mongodb port: 27017**

___

## 2. Run MongoDB

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

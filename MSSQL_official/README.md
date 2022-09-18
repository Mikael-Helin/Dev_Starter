# **MSSQL on Docker (official image)**

The purpose with this image, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

This is instructions on how to run Microsoft SQL 2022 Server in a Linux container. The Docker image used here is the official image.

## **2. How to Access?**

Database credentials:

**user: SA**

**password: Str9ng_Pwd**

Other details:

**host: localhost**

**port: 1433**

___

## **3. Pre-Requestives**

Have a terminal installed on your system.

Have Docker or Docker Desktop installed on your system.

See section 1-2 in https://github.com/Mikael-Helin/Dev_Starter
___

## **4. Run This Container**

The information I got from Microsoft website, didn't work for me, lot of bogus stuff in that documentation. https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver16&pivots=cs1-bash

After fiddeling around, following is what worked for me on Docker Desktop for Windows *(remove winpty if you are on Linux or Mac)*.

First you need to run the container. If you don't have the image then docker will download it. As soon as you have the image, Docker will run corresponding container.

Windows:

        winpty docker run -e ACCEPT_EULA=Y \
        -e MSSQL_SA_PASSWORD=Str9ng_Pwd \
        -p 1433:1433 --name sql1 --hostname sql1 \
        -d mcr.microsoft.com/mssql/server:2022-latest

Linux and Mac:

        docker run -e ACCEPT_EULA=Y \
        -e MSSQL_SA_PASSWORD=Str9ng_Pwd \
        -p 1433:1433 --name sql1 --hostname sql1 \
        -d mcr.microsoft.com/mssql/server:2022-latest

That is all, and you are done! :-)

But if you insist? You can proceed to test if MSSQL is running.
___

## **5. Testing to enter MSSQL CLI inside the container**

When the container is running, it actually starts MSSQL. This is actually one way how you can test if MSSQL is running, by entering the MSSQL CLI.

Windows:

        winpty docker exec -it sql1 bash
        /opt/mssql-tools/bin/sqlcmd -S localhost \
        -U SA -P Str9ng_Pwd


Linux and Mac:

        docker exec -it sql1 bash
        /opt/mssql-tools/bin/sqlcmd -S localhost \
        -U SA -P Str9ng_Pwd

___

## **6. Testing MSSQL with SQL Server Management Studio**

You may want to skip this section and use Azure Data Studio as described in section 5.

Download SQL Server Management Studio (SSMS) from here (windows only). https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16

And when you installed and started SSMS do the following:

* Click "Connect" then "Database Engine...",
* enter **localhost** as "Server Name" into its field,
* choose **SQL Server Authentication** in the drop-down for "Authentication",
* enter **SA** as "Login" in its field,
* enter **Str9ng_Pwd** as "Password" in its field, 
* finally click the **Connect**-button.
  
You're in!


## **7. Testing MSSQL with SQL Server Management Studio**

Azure Data Studio exists for Windows, Mac and Linux.

You may download and install Azure Data Studio. Link: https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver16

After installing Azure Data Studio (on Windows), this is how I accessed MSSQL. Start Azure Data Studio and then

* Click on **Create a connection**,
* Check **parameters**,
* enter **localhost** in its "Server" field
* select **SQL Login** for "Authentication type",
* enter **SA** in its "User name" field,
* enter **Str9ng_Pwd** in its "Password" field,
* and finally click on the **Connect** button.

Are you in? I hope so... it worked for me.

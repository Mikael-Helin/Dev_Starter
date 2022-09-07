# **MSSQL on Docker**

Database credentials:

**user: SA**

**password: Str9ng_Pwd**

Other details:

**host: localhost**

**port: 1433**

___

## **1. Pre-Requestives**

Have Bash installed on your system.

Have Docker or Docker Desktop installed on your system.

See section 1-2 in https://github.com/Mikael-Helin/Dev_Starter
___

## **2. Run The Container**

The information I got from Microsoft website, didn't work for me, lot of bogus stuff in that documentation. Link: https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver16&pivots=cs1-bash

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

## **3. Testing to enter MSSQL CLI inside the container**

When the container is running, it actually starts MSSQL. This is actually one way how you can test if MSSQL is running.

Windows:

        winpty docker exec -it sql1 bash
        /opt/mssql-tools/bin/sqlcmd -S localhost \
        -U SA -P Str9ng_Pwd


Linux and Mac:

        docker exec -it sql1 bash
        /opt/mssql-tools/bin/sqlcmd -S localhost \
        -U SA -P Str9ng_Pwd

___

## **4. Testing MSSQL with SQL Server Management Studio**

You may download SQL Server Management Studio (SSMS) from here. Link: https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16

And when you started SSMS do following:

* Click "Connect" then "Database Engine...",
* enter **localhost** as "Server Name" into its field,
* choose **SQL Server Authentication** in the drop-down for "Authentication",
* enter **SA** as "Login" in its field,
* enter **Str9ng_Pwd** as "Password" in its field, 
* finally click the **Connect**-button.
  
You're in!


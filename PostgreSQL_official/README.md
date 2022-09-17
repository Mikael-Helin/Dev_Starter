# **Running PostgeSQL and Web-GUI on Docker**

The purpose with this image, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

Pros:

    Are official images.
    Passwords are sent in as environment variables.
    Takes less space.

Cons:

    May break after updates when images don't match anymore.

These images have PostgreSQL and phpPgAdmin as Web-GUI, so you will not need to bloat your computer with installing yet another client.

### **1.1 Using Custom Image**

Pros:

    Everything in one Image that works.
    Less to configure.

Cons:

    Is not official image.
    Cumbersome to change password, which you can for example do in phpPgAdmin.
    Harder to re-configure.

Why not then take the custom PostgreSQL image? Using the offical images is actually easy and straighforward and takes less space. You are free to use the custom image too. If you want to use the custom image, then have a look here https://github.com/Mikael-Helin/Dev_Starter/tree/main/PostgreSQL_custom
___

## **2. How To Acess?**

Database credentials:

***user: postgres***

***password: postgres.2022***

Other details:

***host: localhost***

***port: 5432***

***URL: http://127.0.0.1:82/phppgadmin***
___

## **3. Pre-Requestives**

Have Bash installed on your system.

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

___

## **6. Access the Services**

(*The information needed in this section you find in section 2.*)

Is everything up and runnig? You can test! Now try to surf to the url given above! You should see the PHPMyAdmin login... if you do then it works.

Login and do whatever you like to do.

If any service crashes, then run those commands above again, those in section 5.

___

## **7. Testing with Sample Data**

You should have completed sections 3-6.

When you have logged in into PHPMyAdmin:

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

# **Running PERN with a ToDo example (custom image)**

The purpose with this image, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

This is a small modification on a PERN tutorial from FreeCodeCamp.org. The modifications are made so that you can test PERN dev containers. But if you prefer, you skip the example and just start with your own PERN project with these same containers. After quite extensive looking on the best javascript drivers to connect to PostgreSQL, I found out that FreeCodeCamp.org had the most simple working code to connect to PostgreSQL. There are many solutions out there, also many of them that do not work. Looking at the example in these containers, may save you some time and effort.

https://www.youtube.com/watch?v=ldYcgPKEZC8

Do expect troubleshooting. We may only hope these containers work well out for you!

___

## **2. Pre-Requestives**

Have a terminal installed on your system.

Have Docker or Docker Desktop installed on your system.

Postman API is a nice to have for testing and troubleshooting. https://www.postman.com/

See section 1-2 in https://github.com/Mikael-Helin/Dev_Starter

___

## **3. Run These Containers**

It is recommended that you fulfill the pre-requestives (see section 2).

If you don't have the needed image, then the following command will download the needed image and after that run the container from the image.

But if you already have the needed image, then the same following command will just run the container from the already downloaded image.

Open a terminal in the location where you have the **docker-compose.yml** file. Then type

All machines:

        docker-compose up

___

## **4. Test and Configure the Containers**

Requires all 3 containers to be running. See section 3.

### **4.1. Test if the PostgreSQL Container is Running as it Should (optional)**

We use the custom PostgreSQL container made by me. You find it and its login credentials here: https://github.com/Mikael-Helin/Dev_Starter/tree/main/PAMP_custom

If you manage to login into http://localhost:82/phppgadmin and it works, then you can proceed to next section.

___

### **4.2. Initiate the PostgreSQL Database**

By unknown reasons

        winpty attach <containerId>

does not work on Windows, I have Windows 10 Pro, so instead we must use

        winpty docker exec -ti <containerId> bash

which is the same thing just written in another way.

OK, first we must find the **containerID**, either you type

        docker ps

in your terminal or then you have a look in Docker Desktop for the container named **postgres** and find its containerId from there.

        winpty docker exec -ti c5 bash
        su postgres
        psql -U postgres -a -f /var/www/init_database1.sql
        psql -U postgres -d perntodo -a -f /var/www/init_database2.sql
        exit
        exit
        exit

As you might have guessed, **c5** is the containerId in my case. These id's are different everytime, so please check yours.

___

### **4.3. Testing the PostgreSQL Connection From Outside (optional)**

If you want, you may test to connect with Azure Data Studio... or with something else. If you didn't fail, then you are ready for the next step.

**Test for what?**\
PhpPgAdmin is on localhost in the container, Azure Data Studio is outside the container. You might want to test the access to PostgreSQL from the outside.

___

### **4.4. Configure and Start the API Server**

You must configure the connection from Express to PostgreSQL. Currently line 9 in the file **PERN/api/index.js** contains the IP number **192.168.0.20**. In my case, neither **localhost** nor **127.0.0.1** worked, so I had to take the IP number given by DHCP from my home router, which in my case is 192.168.0.20. Your computer probably has another IP address in your LAN network, you find your IP with help of typing **ipconfig** in the terminal, if you are on Windows. For Mac? I do not know but for Linux it may help with **ip a** or **hostname -I**.

Next, type in your terminal (remove winpty if you are not on Windows):

        winpty docker exec -ti 58 bash
        cd /var/www
        npm install
        node index.js

and type that thing above with the correct containerId.

___

### **4.5. Test the API Server (optional)**

With Postman you can test if the API server works as expected.

https://www.postman.com/

Test **POST** to http://localhost:8080/todos with the **raw** text

        { "description": "I am here!" }

and with **JSON** marked!

___

### **4.6. Start and Test the Frontend**

Again, open a new terminal... don't forget to findout the correct containerID

        winpty docker exec -ti 28 bash
        cd /var/www
        npm install
        npm start

Surf to http://localhost and it should work.

___

## **5. Troubleshooting**

I had many issues to set this up. The hardest part was to figure out how to connect from Express to PostgreSQL. It took me 2 work days to figure out only that little thing.

Things I found out:
1. You may need to uninstall npm packages and reinstall them, even if they are the same version.
2. You may need to use another IP than localhost or 127.0.0.1 for PostgreSQL to connect.
3. Docker on Windows is not the same as Docker on Linux.
4. Git Bash is far away from being compilant to the original.
5. Hot reload for React or Nodemon, only work when they want to work. I have no control of that little child. Do you?
6. It is about luck and patience.


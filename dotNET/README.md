# **Running .NET core in Docker (custom image)**

The purpose with this image, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

This image has the .NET core with a Hello World example written in C#. It is based on Debian Bullseye image.

___

## **2. Pre-Requestives**

Have a terminal installed on your system.

Have Docker or Docker Desktop installed on your system.

See section 1-2 in https://github.com/Mikael-Helin/Dev_Starter

___

## **3. Run This Container**

It is recommended that you fulfill the pre-requestives (see section 2).

If you don't have the needed image, then the following command will download the needed image and after that run the container from the image.

But if you already have the needed image, then the same following command will just run the container from the already downloaded image.

Windows:

        winpty docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:3306:3306 \
        --name mariadb -ti mikaelhelin/debian_mariadb bash

Linux and Mac:

        docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:3306:3306 \
        --name mariadb -ti mikaelhelin/debian_mariadb bash

And when you are inside the container, let's inspect the Hello World program, compile it and run it.

All computers:

        cd /root
        cat hello.cs
        mono-csc hello.cs
        mono hello.exe


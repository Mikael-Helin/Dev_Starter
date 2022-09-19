# **Running NodeJS with NVM on Docker (custom image)**

The purpose with this image, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

It is an Ubuntu Jammy image with NodeJS and NVM pre-installed. The tools wget, curl and nano are also installed.

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

        winpty docker run -d -p 0.0.0.0:8080:8080 \
        --name nodejs -ti mikaelhelin/ubuntu_nodejs bash

Linux and Mac:

        docker run -d -p 0.0.0.0:81:80 -p 0.0.0.0:3306:3306 \
        --name nodejs -ti mikaelhelin/ubuntu_nodejs bash

To check the nodejs installation, type

Windows:

        winpty docker attach nodejs
        node -v

Linux and Mac:

        docker attach nodejs
        node -v


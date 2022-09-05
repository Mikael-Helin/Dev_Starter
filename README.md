# 1. Dev_Starter

The purpose with this repo, is to help you get started with web and database development with as little fuzz as possible. What we have here, are docker images with the databases PostgreSQL and MariaDB including their WebGUIs under Apache2.

Later, there might be docker images with NodeJS, MSSQL as well .NET for Linux.

So, the purpose, is to help you get started with your coding without installation and configuration hassle. You just return here after the meeting/lesson and this guide won't be too hard to follow for you.

It is assumed, you have some knowledge what is git and docker, however you do not really fully need to know how to use docker _(and honestly I don't evem know it myself ;-))_. There are plenty of Docker tutorials on YouTube, here I just want get you started, not primarly to teach you new stuff.

## 2. Pre-Requestives

You need git and you need docker installed. Visual Studio code is a nice to have. Below are links with information on Windows installations. These installation should be straigtforward and easy for you.

Docker Desktop exists for Windows and Mac, but not for Linux, but if you know how to use Linux, you might be alright to live without Docker Desktop for Linux as well(?). Most of the work is done command line anyway, to be without Docker Desktop is not end of the world.

(ToDo) Visual Studio code is good to have... after we figured out how to use VS code with Docker we update this Readme. Link: https://code.visualstudio.com/

Git for Windows: https://gitforwindows.org/

Docker Desktop (Windows): https://docs.docker.com/desktop/install/windows-install/

Docker Desktop (Mac): https://docs.docker.com/desktop/install/mac-install/

_Troubleshoot: When I tried to install Docker Desktop on Windows then I had an issue. The issue was that WSL2 did not install corectly. In my case, I found a working troubleshoot to install WSL2 in following link: https://docs.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package_

## 3. Test Your Docker Installation

Check if your Docker Desktop works. Here is my super quick guide.

1. Open Docker Desktop from the Start menu.
2. In git bash type

		docker run -d -p 80:80 docker/getting-started
3. Look in Docker Desktop, do you see the image "docker/getting-started:latest"? You should...
4. Browse to localhost with your web browser. If you see a guide.... yeah, it works!

You may wish to instead follow the real guide "Exploring Docker Desktop with a quick example". Link: https://www.docker.com/blog/getting-started-with-docker-desktop/

## 4. Help, help.. I am on Linux!

So far, what I have seen, Docker Desktop makes it easy to start, stop and easy to list and delete containers and images. If you are on Linux, you might try to figure out how to list images and containers and then figure on how to start adn stop them etc. The rest, is command line anyway - for all operating systems.

## 5. Winpty??

Sometimes on Windows you need to type winpty before docker, like this

Windows:

		winpty docker <some stuff>

Linux (and Mac?):

		docker <some stuff>

## 6. The Dev Containers

For more instuctions, please proceed to their folders.
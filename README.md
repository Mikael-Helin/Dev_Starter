# Dev Starter

The purpose with this repo, is to help you get started with web and database development with as little fuzz as possible. What we have here, are docker images with the databases PostgreSQL and MariaDB including their WebGUIs under Apache2.

Later, there might be docker images with NodeJS, MSSQL as well .NET for Linux.

So, the purpose, is to help you get started with your coding without installation and configuration hassle. You just return here after the meeting/lesson and this guide won't be too hard to follow for you.

It is assumed, you have some knowledge what is git and docker, however you do not really fully need to know how to use docker _(and honestly I don't evem know it myself ;-))_. There are plenty of Docker tutorials on YouTube, here I just want get you started, not primarly to teach you new stuff.

## 1. Pre-Requestives

You need git and you need docker installed. Visual Studio code is a nice to have. Below are links with information on Windows installations. These installation should be straigtforward and easy for you.

Docker Desktop exists for Windows and Mac, but not for Linux, but if you know how to use Linux, you might be alright to live without Docker Desktop for Linux as well(?). Most of the work is done command line anyway, to be without Docker Desktop is not end of the world.

(ToDo) Visual Studio code is good to have... after we figured out how to use VS code with Docker we update this Readme. Link: https://code.visualstudio.com/

Git for Windows: https://gitforwindows.org/

Docker Desktop (Windows): https://docs.docker.com/desktop/install/windows-install/

Docker Desktop (Mac): https://docs.docker.com/desktop/install/mac-install/

_Troubleshoot: When I tried to install Docker Desktop on Windows then I had an issue. The issue was that WSL2 did not install corectly. In my case, I found a working troubleshoot to install WSL2 in following link: https://docs.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package_

## 2. Test Your Docker Installation

Check if your Docker Desktop works. Here is my super quick guide.

1. Open Docker Desktop from the Start menu.
2. In git bash type

		docker run -d -p 80:80 docker/getting-started
3. Look in Docker Desktop, do you see the image "docker/getting-started:latest"? You should...
4. Browse to localhost with your web browser. If you see a guide.... yeah, it works!

You may wish to instead follow the real guide "Exploring Docker Desktop with a quick example". Link: https://www.docker.com/blog/getting-started-with-docker-desktop/

## 3. Help, help.. I am on Linux!

So far, what I have seen, Docker Desktop makes it easy to start, stop and easy to list and delete containers and images. If you are on Linux, you might try to figure out how to list images and containers and then figure on how to start adn stop them etc. The rest, is command line anyway - for all operating systems.

## 4. FAQ

### 4.1 Winpty??

Sometimes on Windows you need to type winpty before docker, like this

Windows:

		winpty docker <some stuff>

Linux (and Mac?):

		docker <some stuff>

### 4.2 Run multiple containers?

There are other ways, but here we just keep it simple.

Open a new terminal for each container. You run docker in separate terminals. Then you enter from host terminal into the container terminal to start services. If you exit the container terminal then the container stops... a stopped container has no services... so you cannot exit if you want to runt services... therefore you need multiple host terminals.

Just keeping it simlpe so far. No swarms or clusters, not even innocent ampersands.

## 5. Current Dev Containers

This is what we have

* MariaDB with Apache2 and PHPMyAdmin on Debian Bullseye.
* PostgreSQL with Apache2 and phppgadmin on Debian Bullseye.

and this is what we wish we had

* NodeJS and React development images.
* MSSQL under Ubuntu.
* MongoDB under Ubuntu.
* .NET SDK under Ubuntu.
* A ToDo list sample with NodeJS and PostgreSQL.

_For more instuctions, please proceed to respective container folders._
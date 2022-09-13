# **Dev Starter**

## **0. Purpose (optinal)**

### **0.1 The purpose is to get you quickly started**

The purpose with this repo, is to help you get started with web and database development with as little fuzz as possible. The purpose is to get you started without undestanding concepts in nitty gritty detail. This is not some educational page, so you may find these example too short or incomplete, which they are by purpose. If you find so, then you have to search for answers elsewhere, there purpose with these examples is nothing but about getting you **easily** started without configuration and installation hassle on your computer.

### **0.2 What images do we currently have?**

Scroll down to section 5 below and see.

### **0.3 What images may we have in the future?**

Scroll down to section 5 below and see.

### **0.4 What should you know before getting started?**

It is assumed, you have some knowledge what is git and docker, however you do not really fully need to know how to use docker _(and honestly I don't even know that myself ;-))_. There are plenty of Docker tutorials on YouTube, here I just want to get you up started, not primarly teaching you new stuff. So we only focus on what you initially need and it ends there.

___

## **1. Pre-Requestives and Installations**

You need git and you need docker installed. Visual Studio code is a nice to have. Below are links with information on Windows installations. These pre-requestive installation should be straigtforward and easy for you to follow. The docker stuff is not self-evident, but this guide still helps you.

### **1.1 Git and Bash**

#### **1.1.1 How to install Git and Bash on Linux or Mac?**

Search online.

#### **1.1.2 How to install Git and Bash on Windows?**

Note that Git and Bash are completely separate, but they are called Git Bash on Windows. The Git Bash is not fully compatible with the original Bash in UNIX/Linux/BSD but still it is worth to install.

Link: https://gitforwindows.org/

### **1.2 Docker Desktop**

Docker Desktop exists for Windows and Mac, but not for Linux, but if you know how to use Linux, it might be alright to live without Docker Desktop for Linux as well(?). Most of the work is done by CLI anyway, to be without Docker Desktop is therefore not end of the world for Linux users.

#### **1.2.1 Windows**

Link: https://docs.docker.com/desktop/install/windows-install/

_Troubleshoot: When I tried to install Docker Desktop on Windows 10 Pro then I had an issue. The issue was that WSL2 did not install corectly. In my case, I found a working troubleshoot to install WSL2 in following link: https://docs.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package_

#### **1.2.2 Mac**

Link: https://docs.docker.com/desktop/install/mac-install/

#### **1.2.2 Linux**

Link: https://docs.docker.com/desktop/install/linux-install/

### **1.3 Visual Studio Code**

(ToDo) Visual Studio code is good to have... after we figured out how to use VS code with Docker I will update this Readme again.

Link: https://code.visualstudio.com/

___

## **2. Test Your Docker Installation (optional)**

It is recommended that you complete section 1 above.

To check if your Docker Desktop works. Here is my super quick guide (which you may skip if you want to follow the official guide instead, see link to official guide below).

My guide:

1. Open Docker Desktop from the Start menu.
2. In git bash type

		docker run -d -p 80:80 docker/getting-started
		
3. Look in Docker Desktop, do you see the image "docker/getting-started:latest"? You should...
4. Browse to localhost with your web browser. If you see a guide.... yeah, it works!

Official guide:

1. You may wish to instead follow the real guide "Exploring Docker Desktop with a quick example".\
2. Link: https://www.docker.com/blog/getting-started-with-docker-desktop/

You may now skip to section 5.

## **3. Help, help.. I am on Linux! (optional)**

So far, what I have seen, Docker Desktop makes it easy to start, stop and easy to list and delete containers and images by clicking with the mouse here and there.

If you are on Linux, you might try to figure out how to do these commands on CLI?

Examples to study elsewhere:

		docker image ls
		docker images
		docker ps
		docker start ...
		docker stop ...

___

## **4. FAQ (optional)**

### **4.1 Winpty??**

Sometimes on Windows you need to type winpty before docker, like this:

Windows:

		winpty docker <some stuff>

Linux and Mac:

		docker <some stuff>

If you forget to type windpty, docker will highly likely explain that to you in its error message.

### **4.2 Run multiple containers?**

There are other ways to run multiple containers, but here we just keep it simple and there aren't many continers we need to run.

1. Open a new terminal for each container.
2. Maybe(?) you should run each docker image in **separate terminal**.
3. From each host terminal enter into the container terminal to start services... when if needed.
   1. Postgres does not start by itself, neither MySQL.
   2. MSSQL starts by itself, so you do not need to enter the container terminal to start MSSQL as service.
4. **Remark:** If you exit the container terminal then the container stops... a stopped container has no services... so you cannot exit if you want to keep run services... therefore you need multiple host terminals as told in point 2.

Just keeping it simlpe so far. No swarms or clusters, not even innocent ampersands. When you need tens, hundreds or you name it number of thousands of containers, then there are other better approaches.

### **4.3 I cannot start service or the container**

Host and guests have separate network. But assumed you want to enter guests from host as well guests...

... Maybe there are multiple containers using the same host port? You can only have 1 service for each port on your host.

For example:

* phpPgAdmin uses port 80 in the container but I chose port **82** on the host.
* PHPMyAdmin uses port 80 in the container but I chose port **81** on the host.
* node or nodemon has port 80 in its container and also port **80** in the host.

Notice how we avoid collissions on the host ports by having 1-1 mapping.. 1 port for 1 service only.

___

## **5. Current Dev Containers**

This is what we so far have

* LAMP server = MariaDB with Apache2 + PHP and PHPMyAdmin on Debian Bullseye.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/MariaDB
* PAMP server = PostgreSQL with Apache2 + PHP and phppgadmin on Debian Bullseye.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/PostgreSQL
* MSSQL on Linux.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/MSSQL
* MongoDB on Ubuntu Focal.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/MongoDB
* ERN development image. ERN = Express + React + NodeJS.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/ERN
* Multiple PERN images with a ToDo sample. PERN = PostgreSQL + ERN.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/PERN

and this is what we wish to have.. later

* Redis
* .NET SDK on Ubuntu.
* R with Shiny with C++ and Fortran packages.
* Python with Machine Learning.
* Julia development environment.
* Latex with compiling environment.

_For more instuctions, please proceed to respective container folders._
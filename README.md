# **Dev Starter**

## **0. Purpose**

### **0.1 The purpose is to get you quickly started**

1. Get quickly started.
2. Minimal configuration and installation.
3. Minimal examples.
4. Not about educating. You have to teach yourself after getting started.

The purpose with this repo, is to help you get started with web, database and software development with as little fuzz as possible. The purpose is to get you started without undestanding several concepts in detail. This is not some educational page, so you may find examples too short or incomplete, which they are by purpose.

### **0.2 What images do we currently have?**

Scroll down to section 5 below to see.

### **0.3 What images may we have in the future?**

Scroll down to section 5 below to see.

### **0.4 What should you know before getting started?**

1. Know how to use Git.
2. Know what is Docker but not neccessarly know how to use Docker.

It is assumed, you have some knowledge what is Git and Docker, however you do not really fully need to know how to use Docker 

_(Honestly I don't even know myself how to use Docker ;-))_.

There are plenty of Docker tutorials on YouTube, here I just want to get you up started, not primarly teaching you new stuff. So we only focus on what you initially need and the help ends there.

___

## **1. Pre-Requestives and Installations**

Installations

1. Git and Bash
   1. Called Git Bash for Windows.
   2. For Linux and Mac, Git and Bash are separate.
2. Docker
   1. It is Docker Desktop for Mac and Windows.
   2. For Linux it is just Docker.
3. Good to have: Visual Studio Code.
   1. Runs on all computers.

You need Git and you need Docker installed. Visual Studio code is a nice to have. Below are links with information on installations on Windows. These pre-requestive installation should be straigtforward and easy for you to complete. The Docker stuff in this repo is not always self-evident, but this guide still helps you get forward.

### **1.1 Git and Bash**

What is Git? Git is software used for distributed version control.

What is a terminal? A terminal may also be called console or shell.  For Linux and Mac when we say terminal we refer to any termial or console. In the terminal what you type may by some people be called CLI (Command Line Interface). CLI usually refer to a set of commands designated to be written in a terminal. Hope you are not confused by separate interpretations of CLI. Here in these repo when we say terminal we mostly refer to Bash.

Note that Git and Bash are completely separate programs, but they are called "Git Bash" on Windows. For Windows there is Command Prompt and PowerShell. I still reccommend you to use Git Bash as terminal for Windows. The Git Bash for Windows is not fully compatible with the original Bash in UNIX/Linux/BSD but still it is worth to use and worth to install, simply because you want as little mess and fuzz as possible.

#### **1.1.1 How to install Git and Bash on Linux or Mac?**

Bash is already installed by default on your system.

To install Git, search online.

#### **1.1.2 How to install Git and Bash on Windows?**

Link: https://gitforwindows.org/

### **1.2 Docker Desktop**

Docker Desktop exists for Windows and Mac, but not for Linux, but if you know how to use Linux, it might be alright to live without Docker Desktop for Linux as well(?). Most of Docker is used by CLI anyway, so lacking Docker Desktop is not some fundamental lack.

So far, what I have seen, Docker Desktop makes it easy to start, stop and easy to list and delete containers and images by clicking with the mouse here and there.

If you are on Linux, you might try to figure out how to do these commands on CLI?

Examples to study elsewhere:

		docker image ls
		docker images
		docker ps
		docker start ...
		docker stop ...

When you understood those basic commands, then you can use the instead of Docker Desktop.

#### **1.2.1 Windows**

Link: https://docs.docker.com/desktop/install/windows-install/

_Troubleshoot: When I tried to install Docker Desktop on Windows 10 Pro then I had an issue. The issue was that WSL2 did not install corectly. In my case, I found a working troubleshoot to install WSL2 in following link: https://docs.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package_

#### **1.2.2 Mac**

Link: https://docs.docker.com/desktop/install/mac-install/

#### **1.2.2 Linux, Docker only**

Link: https://docs.docker.com/desktop/install/linux-install/

### **1.3 Visual Studio Code**

Visual Studio code is good to have.

Link: https://code.visualstudio.com/

There are 2 different ways you access and write your code together with Docker.
1. You mount a folder (the folder with your code) as a volume outside the Docker container, or then
2. you allow VS code access the inside of the Docker container. For this you need to install an extension. Link: https://www.youtube.com/watch?v=8gUtN5j4QnY

Whichever means you access the code, it is meant that the software inside the container also has access to your code. For example, you do not have Python installed on your machine but you do have Python installed in a container, which in turn runs your code wherever you have chosen to place your code.
___

## **2. Test Your Docker Installation (optional)**

It is recommended that you complete section 1 above.

To check if your Docker Desktop works. Here is my super quick guide (which you may skip if you want to follow the official guide instead, see link to official guide below).

My guide:

1. Open Docker Desktop from the Start menu.
2. Open a terminal from any random location you like (don't know what is a terminal? Then read this guide from start), then type


		docker run -d -p 80:80 docker/getting-started


3. Look in Docker Desktop, do you see the image "docker/getting-started:latest"? You should see it...
4. Browse to localhost with your web browser. If you see a guide.... yeah, it works!

Official guide:

1. You may wish to instead follow the real guide "Exploring Docker Desktop with a quick example".
2. Link: https://www.docker.com/blog/getting-started-with-docker-desktop/

If you are on Linux or Mac you may skip to section 5.

If you are on Windows you may skip to section 4.

## **3. FAQ (optional)**

### **3.1 Winpty??**

Sometimes on Windows you need to type winpty before docker, like this:

Windows:

		winpty docker <some stuff>

Linux and Mac:

		docker <some stuff>

If you forget to type winppty, docker will highly likely explain that to you in its error message.

### **3.2 Run multiple containers?**

There are other ways to run multiple containers, but here we just keep it simple and there aren't many continers we need to run. No swarms or clusters. When you need tens, hundreds or you name it number of thousands of containers, then there are other better approaches to run swarms or clusters than in this document.

### **3.3 You cannot start some service or container?**

Host and guests have separate network. Now assuming you want to enter guests from other guests and the host... but it does not work, then maybe there are multiple containers using the same host port? You can only have 1 service for each port on your host.

For example:

* phpPgAdmin uses port 80 inside the container but I chose port **82** on the host.
* PHPMyAdmin uses port 80 inside the container but I chose port **81** on the host.
* node or nodemon has port 80 inside its container and also port **80** in the host.

Notice how we avoid collissions on the host ports by having 1-1 mapping.. 1 port for 1 service only.

___

## **4. Current Dev Containers**

_For more instuctions, please proceed to respective container folders._

### **4.1. Images that we currently have**

#### **4.1.1. Single image containers**

* (Custom) PAMP server = PostgreSQL with Apache2 + PHP and phpPgAdmin on Debian Bullseye.
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/PAMP_custom
* (Official) PostgreSQL\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/PostgreSQL_official
* (Custom) LAMP server = MariaDB with Apache2 + PHP and PHPMyAdmin on Debian Bullseye.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/LAMP_custom
* (Official) MySQL\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/MySQL_official
* (Official) MSSQL on Linux.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/MSSQL_official
* (Official) MongoDB on Ubuntu Focal.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/MongoDB_official

#### **4.1.2 Multi image conatiners**

* (Official) PAMP server = PostgreSQL with Apache2 + PHP and phpPgAdmin.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/PAMP_official
* (Official) LAMP server = MariaDB with Apache2 + PHP and phpMyAdmin.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/LAMP_official

### **4.2. Images we might build in the future**

#### **4.2.1 Future single image containers**

* ERN development image. ERN = Express + React + NodeJS.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/ERN
* Redis
* .NET SDK on Ubuntu.
* Rshiny with compiled libraries.
* Python with Machine Learning.
* Julia development environment.
* Latex with compiling environment.

#### **4.1.2 Future multi image conatiners**

* Multiple PERN images with a ToDo sample. PERN = PostgreSQL + ERN.\
Link: https://github.com/Mikael-Helin/Dev_Starter/tree/main/PERN

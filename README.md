# Dev_Starter

The purpose with this repo, is to help you get started with development with as little fuzz as possible. What we have here, are docker images with the databases PostgreSQL and MariaDB including their WebGUIs.

Later, there might be docker images with NodeJS, MSSQL and .NET for Linux.

## Pre-Requestives

You need git and you need docker installed. Below are links with information on Windows installation. The installation should be straigtforward.

Docker Desktop exists for Windows and Mac, but not for Linux. 

Good to have if we figure out how to use VS code with Docker: https://code.visualstudio.com/

Git for Windows: https://gitforwindows.org/

Docker Desktop (Windows): https://docs.docker.com/desktop/install/windows-install/

Docker Desktop (Mac): https://docs.docker.com/desktop/install/mac-install/

When I tried to install Docker Desktop on Windows then I had some issues. The issue was that WSL2 did not install corectly. In my case, I found a working troubleshoot to install WSL2 in following link: https://docs.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package

## Test Your Docker Installation

Check if your Docker Desktop works. Here is my super quick guide.

1. Open Docker Desktop from the Start menu.
2. In git bash type
		docker run -d -p 80:80 docker/getting-started
3. Look in Docker Desktop, do you see the image "docker/getting-started:latest"? You should...
4. Browse to localhost with your web browser. If you see a guide.... it works!

You may instead follow the real guide "Exploring Docker Desktop with a quick example"
https://www.docker.com/blog/getting-started-with-docker-desktop/

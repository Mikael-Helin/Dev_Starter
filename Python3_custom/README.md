# **Running Python from Docker (custom image)**

The purpose of this example, is to let junior and aspiring developers get started with as little fuzz as possible.

## **1. What is this?**

Here are instructions for running Python from a Docker image. You can run local Python code without installing Python locally on your machine, the Python interpreter is inside the image and the Python code is outside the image.

The verion of Python is 3.9. The image is from Debian Bullseye.

___

## **2. Pre-Requestives**

Have Bash installed on your system.

Have Docker or Docker Desktop installed on your system.

See section 1-2 in https://github.com/Mikael-Helin/Dev_Starter

## **3. Examples**

### **3.1. Convert a CSV**

In Scandinavia and Germany, CSV files are separated by semi-colon. When programming, it is usually better to have a CSV file separated by coma, which is the coding default.

My problem, is that it is overly complex to change delimeters with help of Excel or Open/Libre Office, so instead, let us do this task with few lines of Python code.

This example requires you to have a semi-colon separated CSV file, for example the file semicolon.csv. Then this example also requires you have the file test1.py. Please download.

Our Python script test1.py does the following

1. Reads a file into a string.
2. Splits the string with respect to semi-colon - it splits into a list of strings.
3. Joins a list of strings with respect to coma - it merges into a single string.
4. Writes the single string to disk, which is the re-formatted CSV.

Here we go!

Windows:

        docker run --name python3 mikaelhelin/debian_python3
        docker exec python3 /usr/bin/python3 test1.py

You may now open the file coma.csv and compare it with semicolon.csv. Do you see any difference?

### **3.1. Simple Scraper**

Our Pythonscript test2.py does the following

1. Visits www.bredbandskollen.se.
2. Waits a minute.
3. Reads the values from the HTML.
4. Prints the read values on screen.

        docker run mikaelhelin/debian_python3 /usr/bin/python test2.py

You should get, latency, download speed and uploadspeed printed to the screen.

## **4. Troubleshooting**

Why not use official image? Because their instructions looks complex. Cannot get started with as little fuzz as possible.

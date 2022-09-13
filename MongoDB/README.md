# **Running MongoDB with a Simple Web-GUI on Docker**

MongoDB has an official image and it can be found here: https://hub.docker.com/_/mongo

This time, we will do a bit different than for the other examples. Here we use docker-compose and we run 2 containers that interact.

Open the docker-compose.yml file with your text editor, there you can see the settings we have chosen. You can change them to whatever you want, for example, you may change the password in the settings.

Database credentials:

**user: root**

**password: mongodb.2022**

Other details:

**host: localhost**

**mongodb port: 27017**

**web-GUI port: 83**

___

## 1. Docker-Compose: Start Two Containers and Their Services

1. Open Git Bash where you have the docker-compose.yml file.
2. Create a Docker network for mongodb.
3. Run the docker-compose.yml file.

All computers::

        docker create network mongodb_network
        docker-compose up

4. Surf with your web browser to http://localhost:83.

___

## **2. Testing Sample Data**

### **2.1. MongoDB-Express has Issues**

Exporting Data Sucks in MongoDB-Express!

From the web-GUI you should be able to import and export data. You can test that.

1. In the field for "Database Name" enter **companies** and click on **Create Database**.
2. Click on **View** for "Companies".
3. Click on **Import** and upload "companies.json".

If you export data from MongoDB-Express then that same exported data cannot be imported back. The exported data must be "cleaned" from all **_id** keys before it can be imported.

To solve this issue, we would need a scraper!

## **2.2. Azure Data Studio (does not login)**

Azure Data Studio has an extension named "Azure Cosmos DB ADS Extension". If you install it, then in **Connections** tab on the left-hand side menu gives a possible **Connection Type** named "Mongo Account" on the right-hand side menu. So, fill in the details

1. **Connection Type** is "Mongo account".,
2. **Hostname:port or ...** is "localhost:27017",
3. **Authenication type** is "Basic",
4. **Username** is "root",
5. **Password** is "mongodb.2022",
6. Press **Connect**.

This does not connect, probably I need something configured? I prefer not to install Compass or Atlas.

## **2.3. VS Code is Cool**

### **2.3.1. Extension: MongoDB for VS Code**

The extension is made by MongoDB team. This works, but not flawlessly!

1. Installing the "MongoDB for VS Code" extension on Visual Studio code is straighforward.
2. Entering the connection credentials in Visual Studio code works... Horray!
3. When you have connected you click on **Create Playground**,
   
A playground with some example code opens..

4. then you click on the green **Play** button to run the example code.. try find the **Play** button.. and Click!

And when you clicked on the **Play** button, you get a new window in VS Code with the "Playground Result". This result is in JSON format.

To proceed, what we need are 2 things:
* Modify the example code to read the data from file and then do the "insertMany", which is equivalent to an import.
* Modify the example code to read a whole Database from MongoDB and show it as a result, or maybe save it onto file.

which feels cumbersome.

### **2.3.2. Extension: Mongo Runner**

OK, next extension.. Mongo Runner. I installed it. This extension is made by Joey Yi Zhao.


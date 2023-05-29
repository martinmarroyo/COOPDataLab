# Welcome to
```
$$$$$$$\            $$\              $$\               $$\             
$$  __$$\           $$ |             $$ |              $$ |            
$$ |  $$ | $$$$$$\$$$$$$\   $$$$$$\  $$ |     $$$$$$\  $$$$$$$\        
$$ |  $$ | \____$$\_$$  _|  \____$$\ $$ |     \____$$\ $$  __$$\       
$$ |  $$ | $$$$$$$ |$$ |    $$$$$$$ |$$ |     $$$$$$$ |$$ |  $$ |      
$$ |  $$ |$$  __$$ |$$ |$$\$$  __$$ |$$ |    $$  __$$ |$$ |  $$ |      
$$$$$$$  |\$$$$$$$ |\$$$$  \$$$$$$$ |$$$$$$$$\$$$$$$$ |$$$$$$$  |      
\_______/  \_______| \____/ \_______|\________\_______|\_______/    
```
## What is DataLab? 

DataLab is a Docker-based data analytics labratory complete with: 
- A relational database (`Postgres`) and a UI tool (`pgAdmin`) to manage it  
- A `Python` development environment with some of the most common data analytics libraries pre-installed 
- A data visualization tool (`Metabase`) that can query the database, easily creating visuals and dashboards 
- Two sample datasets

It is a simple analytics stack, preloaded with data, that can be used to practice basic data skills or extended for many other use cases.   

## Why was this built?

This is an environment that enables learning and exploring data analytics concepts using common industry tools and infrastructure. It's meant to resemble a real-world data analytics stack - albeit a very simple one. It is "comprehensive enough" to simulate real-world data processing and analysis, accessible by novice users, and fully extensible for advanced users.

What motivated me to put this together was going through the process of learning and preparing for my first job in data analytics, as well as guiding my students to do the same now. When I was first learning and looking for a job, I was intimidated by the requirements for many of the "entry level" roles. Often, requirements asked for experience pretty much all over the stack - from spreadsheets to databases to data visualization tools, etc. It was a lot. After I got my first job and started teaching, I found that many of my students had similar experiences.

Being able to intelligently discuss the data analytics process from end-to-end helped me land my first job in the industry. I was only able to gain that insight after completing a project where I had to source my own data, process it, store it, and visualize it to create the end product using popular industry tools. When I later transitioned to data engineering, I used the same principle to land that job. Using these tools to simulate how I would work with data on the job gave me the confidence to use them in the real world.

Basically, this is meant to be a start for anyone who is interested in learning more about data analytics, whether you want to be an analyst, data scientist, or data engineer. It's free and relatively easy to use. It is my sincere hope that this can help you learn more about the industry and potentially help you get that first (or next) job.  

## How does it work?

> ### Prerequisite
>
> DataLab uses [Docker](https://docs.docker.com/get-started/overview/) to run the resources defined in the `docker-compose` file located in the `DataLab` folder. You will need to ensure that you have it installed on your system first before using DataLab. 
>
> [Click here to get Docker](https://docs.docker.com/get-docker/) for your system. 

There are three options for starting `DataLab`:

### Windows Users

1. Ensure that `Docker` is running on your system
2. Go to the `windows` folder of this repository
3. Click `launch-datalab.bat`

### Unix (Mac/Linux) Users

1. Ensure that `Docker` is running on your system
2. Navigate to the `unix` folder of this repository
3. Run the `launch-datalab.sh` script

You may need to set execution permissions on the script. To do so, in a terminal: 
```bash
# Inside of the `unix` folder
chmod +x launch-datalab.sh
./launch-datalab.sh
```

### All Users

1. Ensure that `Docker` is running on your system
2. Navigate to the `DataLab` folder inside of this reposity
3. Run the following command
```bash
docker compose up -d
```

## Available Services (Default)

### **Python/Jupyter Notebook**

#### Description
This is a Python environment that also runs a Jupyter Notebook server. It has common data analytics libraries already installed on it, like pandas, numpy, matplotlib, sci-kit learn, and seaborn. You can either write code in the Jupyter Notebook UI through your browser, or place source code in the `datalab-py/src` folder - anything put in this folder will also show on the container. Likewise, anything you do inside of the container in that folder will be available on your local machine. Anything that you create inside of the container that is not within the `src` folder will **not** persist after the container is shut down. So keep the work that you want to save in the `datalab-py/src` folder! 

There are also `csv` files on the container in the `src/data` folder that you can use. These are the same files used to populate the database.

Note: The `src` folder will be created automatically after you startup DataLab the first time.

#### Access
**Access the Jupyter Notebook UI**: http://localhost:8008/tree?token=datalab

**Enter the container terminal:**
```bash
docker exec -it pydev bash
```

**Start a Python shell:**
```bash
docker exec -it pydev python
```

### **Database/Postgres and Database Admin/pgAdmin**

#### Description
This is a Postgres (version 15) database that has some data preloaded into it. You can find the raw data in the `datalab-db/data` folder. There are several ways to interact with the data which will be covered in the next section. The `datalab-dbadmin` container is an instance of `pgAdmin` that is pre-configured with a connection to the database already.

#### Access
You have several options for accessing the data in the database:

**Use the `datalab-dbadmin` container (`pgAdmin`):**

- In your browser, go to http://localhost:8080
- Log in to pgAdmin:
```
Username: admin@datalab.com
Password: datalab
```
- On the left-hand side of the screen, under `Object Explorer`, you will see a group labeled `DL-Group 1`. Click on the arrow to trigger the dropdown menu, then select the `DataLab-DB` database. You will be prompted for a password, which is **`datalab`**. You can select the `Save Password` option so that you don't need to enter it again.

**Connect from a container defined in the `docker-compose.yaml` file:**

To connect to the database from any of the containers defined in DataLab (e.g. the Python container) use the following connection parameters:
```
Host: db
Port: 5432
Database Name: datalab-db
Username: datalab
Password: datalab
```

**Use a tool that is on your local machine:**

If you have a local installation of a tool like pgAdmin or DBeaver and you want to connect to the database, use the following parameters:
```
Host: localhost
Port: 5432
Database Name: datalab-db
Username: datalab
Password: datalab
```

### **Metabase**

#### Description
This is an instance of [Metabase](https://www.metabase.com/docs/latest/), which is an open source business intelligence/data visualization tool. It can connect directly to the DataLab database, query data, and create visualizations - all in one place. This optional tool was included for convenience and to also simulate other paid tools that are commonly used in the industry to try to replicate a similar workflow.

#### Access
In your browser, go to http://localhost:3000 

When you go to the Metabase instance for the first time, you will have to create an account and connect to the database. Follow the prompts to create your account, and when you come to the point where you can add a database connection, choose the `Postgresql` driver and use the following configuration to establish the connection:
```
Host: db
Port: 5432
Database Name: datalab-db
Username: datalab
Password: datalab
```
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

DataLab is a curated, open source, data analytics laboratory complete with: 
- A relational database (Postgres) and a UI tool (pgAdmin) to manage it  
- A Python development environment with the most common data analytics tools pre-installed 
- And a data visualization tool (Metabase) to work with the data 

The lab comes with two sample datasets for you to get started with. They can be loaded into the database using the `run-etl` convenience script. You may also add your own data to the database using Python libraries such as `sqlalchemy` or `psycopg2`, as well as via the pgAdmin interface.

DataLab is both extensible and flexible. You can add resources via Docker containers, and you can pick and choose whichever resources you want to use. Whether you just want to use the included data sets with your preferred spreadsheet program, or you want to experiment with other technologies, you can use the DataLab to help you test, explore, and learn.

Finally, since the DataLab uses Docker containers for resources, it can be run on just about any operating system. This means that you can use these tools without worrying about compatibility with your host system.

## Why was this built?

This is an environment for learning about and exploring data analytics concepts using common industry tools and infrastructure. It's meant to resemble a real-world data analytics stack - albeit a very simple one. It is "comprehensive enough" to simulate real-world data processing and analysis, accessible by novice users, and is fully extensible for advanced users.

What motivated me to put this together was going through the process of learning and preparing for my first job in data analytics, as well as guiding my students to do the same. When I was first learning and looking for a job, I was intimidated by the requirements for many of the "entry level" roles. Often, requirements asked for experience pretty much all over the stack - from spreadsheets, to databases, data visualization tools, etc. It was a lot. After I got my first job and started teaching, I found that many of my students had similar experiences.

In my experience, what helped me get that first job was being able to intelligently discuss the data analytics process from end-to-end. I was only able to gain that insight after completing a project where I had to source my own data, process it, store it, and visualize it to create the end product using popular industry tools. When I later transitioned to data engineering, I used the same principle to land that job. The common denominator for me was having access to those tools in an environment that was easy enough for me to set up.

Basically, this is meant to be a start for anyone who is interested in learning more about data analytics, whether you want to be an analyst, data scientist, or data engineer. It's free and relatively easy to use. It is my sincere hope that this can help you learn more about the field and potentially help you get that first (or next) job.  

## How does it work?

DataLab uses [Docker](https://docs.docker.com/get-started/overview/), an open source containerization program, to run the resources defined in the `docker-compose` file located in the `DataLab/config` folder. You will need to ensure that you have it installed on your system first before using DataLab. [Click here to get Docker](https://docs.docker.com/get-docker/) for your system. 

After Docker is installed on your system and the Docker Engine is running, you can use the `launch-datalab` convenience script for your system to start DataLab. Launchers are located in the `windows` folder for Windows users and the `unix` folder for Mac & Linux users.

See the `Getting Started` guide for a more details.

 
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

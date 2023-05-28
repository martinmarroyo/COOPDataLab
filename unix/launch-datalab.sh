#!/bin/bash
echo Starting DataLab
docker compose -f ../DataLab/docker-compose.yml up -d
# Start Jupyter Environment
wait
cat ../DataLab/welcome.txt
# Show links to resources
echo Welcome to DataLab, $USER!
echo Interact with the database: http://localhost:8080
echo Build Visualizations: http://localhost:3000
echo Jupyter Notebook: http://localhost:8008/tree?token=datalab
read
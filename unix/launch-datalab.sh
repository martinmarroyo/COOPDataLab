#!/bin/bash
echo Starting DataLab
docker compose -f ../DataLab/config/docker-compose.yml up -d
# Start Jupyter Environment
wait
docker exec -it -d python-da-env jupyter-notebook --ip 0.0.0.0 --no-browser --allow-root
cat ../DataLab/config/welcome.txt
# Show links to resources
echo Welcome to DataLab, $USER!
echo Interact with the database: http://localhost:8877
echo Build Visualizations: http://localhost:3000
echo Jupyter Notebook: http://localhost:8008/tree?token=datalab
read
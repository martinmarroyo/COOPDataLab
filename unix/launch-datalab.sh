#!/bin/bash
echo 'Starting DataLab'
# Start containers
docker compose -f ../DataLab/config/docker-compose.yml up -d
# Start Jupyter Environment
wait # For containers to finish loading
docker exec -it -d coop-da-python jupyter-notebook --ip 0.0.0.0 --no-browser --allow-root
cat ../DataLab/config/welcome.txt
# Show links to resources
echo
echo
echo Welcome to DataLab, $USER!
echo Interact with the database: http://localhost:8877
echo Build Visualizations: http://localhost:3000
echo Jupyter Notebook: http://localhost:8008/tree?token=coopda
echo
read
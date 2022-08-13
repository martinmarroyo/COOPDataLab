#!/bin/bash
echo "Starting the ETL Process..."
echo "Warning: all data in default schemas will be overwritten - are you sure you want to proceed (Y|N)?"
read response
if [ $response = 'y' ] || [ $response = 'Y' ]
then
    echo "Running the ETL Process..."
    docker exec -it coop-da-python python initial_etl.py
else
    echo "ETL Process did not run. Exiting program..."
    # Exit
fi
@ECHO off
ECHO "Starting the ETL Process..."
SET /p response="Warning: all data in default schemas will be overwritten - are you sure you want to proceed (Y|N)?"
IF %response%==y SET response=Y
IF %response%==Y (
    echo "Running the ETL Process..." && docker exec -it python-da-env python initial_etl.py
    ) ELSE (echo "ETL Process did not run. Exiting program...")
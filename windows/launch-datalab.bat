@ECHO off
REM Launches all DataLab resources
ECHO Starting DataLab
REM Start containers
PWD
CD ..
START /B /WAIT CMD /c "docker compose -f %cd%\DataLab\config\docker-compose.yml up -d"
REM Start Jupyter Environment
docker exec -it -d coop-da-python jupyter-notebook --ip 0.0.0.0 --no-browser --allow-root
REM Show links to resources
ECHO:
ECHO:
CAT %cd%\DataLab\config\welcome.txt
ECHO:
ECHO:
ECHO Welcome to DataLab, %username%!
ECHO Interact with the database: http://localhost:8877
ECHO Build Visualizations: http://localhost:3000
ECHO Jupyter Notebook: http://localhost:8008/tree?token=coopda
ECHO:
PAUSE
@ECHO off
REM Launches all DataLab resources
ECHO Starting DataLab
REM Start containers
PWD
CD ..
START /B /WAIT CMD /c "docker compose -f %cd%\DataLab\docker-compose.yml up -d"

REM Show links to resources
ECHO:
ECHO:
CAT %cd%\DataLab\welcome.txt
ECHO:
ECHO:
ECHO Welcome to DataLab, %username%!
ECHO Interact with the database: http://localhost:8080
ECHO Build Visualizations: http://localhost:3000
ECHO Jupyter Notebook: http://localhost:8008/tree?token=datalab
ECHO:
PAUSE
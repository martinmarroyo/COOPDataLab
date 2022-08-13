@ECHO off
REM Shuts down all DataLab resources
ECHO Shutting down DataLab...
CD ..
START /B /WAIT cmd /c "docker compose -f %cd%\DataLab\config\docker-compose.yml down"
ECHO All DataLab resources have been shutdown successfully.
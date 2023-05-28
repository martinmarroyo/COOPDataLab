#!/bin/bash
ECHO Shutting down DataLab...
docker compose -f ../DataLab/docker-compose.yml down
ECHO All DataLab resources have been shutdown successfully.
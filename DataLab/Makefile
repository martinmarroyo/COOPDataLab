up:
	docker compose up -d --build

down:
	docker compose down

sh:
	docker exec -it python-da-env bash

restart:
	docker compose up -d

rebuild:
	docker compose build --no-cache

sql:
	docker exec -it warehouse psql postgres://coop-da:coop_dataanalysis@localhost:55432/datalab-database

jupyter:
	docker exec -it -d python-da-env jupyter-notebook --ip 0.0.0.0 --no-browser --allow-root

etl:
	docker exec -it python-da-env python initial_etl.py
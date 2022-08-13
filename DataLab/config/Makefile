up:
	docker compose up -d --build

down:
	docker compose down

sh:
	docker exec -it coop-da-python bash

restart:
	docker compose up -d

rebuild:
	docker compose build --no-cache

sql:
	docker exec -it coop-database psql postgres://coop-da:coop_dataanalysis@localhost:5432/coop-da-database

jupyter:
	docker exec -it -d coop-da-python jupyter-notebook --ip 0.0.0.0 --no-browser --allow-root

etl:
	docker exec -it coop-da-python python initial_etl.py
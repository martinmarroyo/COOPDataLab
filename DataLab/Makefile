up:
	docker compose up -d --build

down:
	docker compose down

sh:
	docker exec -it pydev bash

restart:
	docker compose up -d

rebuild:
	docker compose build --no-cache

sql:
	docker exec -it db psql -U datalab -d datalab-db
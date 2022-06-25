SHELL := bash

POSTGRES_NAME = mvp_postgres
POSTGRES_VER = latest

.PHONY: db-up
postgres-up:
	docker run --rm -p 5432:5432 --name $(POSTGRES_NAME) -e POSTGRES_PASSWORD=mvp -e POSTGRES_USER=mvp -e POSTGRES_DB=mvp_db -d postgres:$(POSTGRES_VER)

#.PHONY: db-down
#postgres-down:
#	docker stop $(POSTGRES_NAME)

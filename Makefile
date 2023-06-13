DOCKER_COMPOSE = docker-compose up -d 
POSTMAN_COLLECTION ?=

.PHONY: rebuild
rebuild:
	docker-compose up -d --build

.PHONY: start
start: _start_api _start_db

.PHONY: stop
stop:
	docker-compose down

.PHONY: tests
tests:
	@echo "Running tests"
	docker-compose up postman

_start_api:
	$(DOCKER_COMPOSE) api

_start_db:
	$(DOCKER_COMPOSE) db

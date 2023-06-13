
.PHONY: rebuild
rebuild:
	docker-compose up -d --build

.PHONY: start
start:
	docker-compose up -d

.PHONY: stop
stop:
	docker-compose down

.PHONY: tests
tests:
	@echo "Add tests here"
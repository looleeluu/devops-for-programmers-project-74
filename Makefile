up:
	docker compose up

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit

ci:
	docker compose -f docker-compose.yml build app && make test && \
	docker compose -f docker-compose.yml up && \
	docker compose -f docker-compose.yml push app


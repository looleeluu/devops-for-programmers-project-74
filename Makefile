up:
	docker-compose up

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

ci:
	docker-compose -f docker-compose.yml build app && \
	docker-compose -f docker-compose.yml up && \
	docker-compose -f docker-compose.yml push app

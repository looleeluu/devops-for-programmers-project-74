prepare-env:
	cp -n .env.example .env

compose-build:
	docker compose -f docker-compose build app

compose-setup:
	docker compose run app make setup

compose-up:
	docker compose up

compose-down:
	docker compose down

compose-stop:
	docker compose stop

compose-test:
	docker compose -f docker-compose.yml up --build --abort-on-container-exit --exit-code-from app


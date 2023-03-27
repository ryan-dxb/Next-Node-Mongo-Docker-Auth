
# Build and start containers in the background
build:
	docker compose -f local.yml up --build -d --remove-orphans

# Start containers in the background
up:
	docker compose -f local.yml up -d --remove-orphans

# Stop and remove containers
down:
	docker compose -f local.yml down

# Remove all volumes created by the project
down-v:
	docker compose -f local.yml down -v

# Show logs of all containers
show-logs:
	docker compose -f local.yml logs 

# Show logs of  api container
show-logs-api:
	docker compose -f local.yml logs api

# Show logs of  client container
show-logs-client:
	docker compose -f local.yml logs client

# Show User running the containers
show-user:
	docker run --rm mern-invoice-api whoami

# Inspect Volume
inspect-volume:
	docker volume inspect mern-invoice_mongodb-data


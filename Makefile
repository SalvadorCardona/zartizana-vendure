CONTAINER_NAME_NODE=vendure_node
NODE_CMD=docker exec $(CONTAINER_NAME_NODE)

bash-node:
	docker exec -it $(CONTAINER_NAME_NODE) sh

start-dev: server-dev

server-dev:
	docker-compose up

install-database:
	$(NODE_CMD) populate


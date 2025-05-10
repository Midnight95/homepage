CONTAINER = $(shell docker ps -aqf 'name=homepage')
make rebuild:
	docker stop $(CONTAINER) && docker rm $(CONTAINER)
	docker compose up -d

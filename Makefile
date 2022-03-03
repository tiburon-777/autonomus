default: help

up: ## Supplement services for running SYR or AB / Run containers
	docker-compose up -d
down: ## Supplement services for running SYR or AB / Stop containers
	docker-compose down

help: ## Print this help and exit
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
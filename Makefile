

.PHONY: run
run: ## Build and run Docker image
	docker build --rm -t bcerney.github.io:latest .
	docker run -it -e HEXO_SERVER_PORT=4000 -v /home/bgdgbc/repos/bcerney.github.io:/app -p 4000:4000 bcerney.github.io:latest

.PHONY: server
server: ## Run hexo server script
	./server.sh

.PHONY: deploy
deploy: ## Run hexo server script
	./deploy.sh

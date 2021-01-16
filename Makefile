.PHONY: run
run: ## Run hexo server script
	./scripts/run.sh

.PHONY: server
server: ## Run hexo server script
	./scripts/server.sh

.PHONY: ssh-keygen
ssh-keygen: ## Run hexo server script
	./scripts/ssh-keygen.sh

.PHONY: deploy
deploy: ## Run hexo server script
	./scripts/deploy.sh

SUDO=sudo

.PHONY: run server ssh-keygen deploy
run: ## Build and run Docker container
	${SUDO} ./scripts/run_docker.sh

.PHONY: server
server: ## Run hexo server script
	./scripts/server.sh

.PHONY: ssh-keygen
ssh-keygen: ## Generate keypair for GitHub Pages deploy
	./scripts/ssh-keygen.sh

.PHONY: deploy
deploy: ## Deploy to GitHub Pages
	./scripts/deploy.sh

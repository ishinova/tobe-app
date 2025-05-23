.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":[^#]*? #| #"}; {printf "%-57s%s\n", $$1 $$3, $$2}'

# Bootstrap
.PHONY: bootstrap bs
bootstrap: # Bootstrap to start development.
	@./scripts/bootstrap.sh
bs: # Short hand for the bootstrap command.
	@$(MAKE) bootstrap

# Clean
.PHONY: clean
clean: # Clean
	@bun run clean
	@melos clean
	@flutter clean

# Generate
.PHONY: gen-gitignore-files gen-labeler gen-labels
gen-gitignore-files: # Generate gitignore target files.
	@./scripts/gen_gitignore_files.sh
gen-labeler: # Generates the package part of `.github/labeler.yml`.
	@bun run scripts/gen-labeler.ts
gen-labels: # Generates the package part of `.github/labels.yml`.
	@bun run scripts/gen-labels.ts

# Template Generation
.PHONY: plop-gen-feature
plop-gen-feature: # Create a feature package using the Plop.
	@bun run plop feature

# Docker
.PHONY: docker-create-network compose-up compose-down
docker-create-network: # docker network create
	@docker network create tobe-network
compose-up: # docker compose up
	@docker compose up -d --wait
compose-down: # docker compose down
	@docker compose down --rmi all -v --remove-orphans

CYAN := \033[36m
GREEN := \033[32m
RESET := \033[0m
IMAGE := r6eve/type-r
TAG := latest

.DEFAULT_GOAL := help
.PHONY: help
help: ## Show this help
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "$(CYAN)%-30s$(RESET) %s\n", $$1, $$2}'

.PHONY: image

image: ## Build a docker image
	@echo -e "$(GREEN)Building a docker image ($(IMAGE):$(TAG))$(RESET)"
	@docker build --build-arg TAG=$(TAG) -t $(IMAGE):$(TAG) .

.PHONY: pull
pull: ## Pull a docker image
	@echo -e "$(GREEN)Pulling a docker image ($(IMAGE):$(TAG))$(RESET)"
	@docker pull $(IMAGE):$(TAG)

.PHONY: push
push: ## Push a docker image
	@echo -e "$(GREEN)Pushing a docker image ($(IMAGE):$(TAG))$(RESET)"
	@docker push $(IMAGE):$(TAG)

.PHONY: all
all: ## All
	@make image push

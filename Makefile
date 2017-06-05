## @copyright  (c) 2015 Zalando SE. All Rights Reserved
##
## @doc
##   Makefile to build project

.PHONY: all help

APP=python-utils

all: help

build: ## Build container
	docker build --rm -t "$(APP)" .

run: ## Run twitter example
	docker run --rm -v "$(shell pwd):/home" python-utils twitter --oauth /home/.twitter_oauth

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

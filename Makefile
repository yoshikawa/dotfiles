all: setup

setup:
	bash -c "$$(curl -L https://raw.githubusercontent.com/yoshikawa/dotfiles/main/bin/install.sh)"

help: ## Display this help screen
	@grep -E '^[a-zA-Z/_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
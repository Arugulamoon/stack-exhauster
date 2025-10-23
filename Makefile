APP_NAME ?= stack-exhauster
VERSION ?= latest

test:
	@go test ./...

build-image:
	@docker build -t $(APP_NAME) .

run-image:
	@docker run $(APP_NAME)

push-dev-image:
	@kind load docker-image $(APP_NAME):$(VERSION)

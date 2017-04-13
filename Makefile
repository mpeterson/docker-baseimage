AUTHOR=mpeterson
NAME=base
VERSION=0.2

.PHONY: all build tag_latest

all: build

build:
	docker build -t $(AUTHOR)/$(NAME):$(VERSION) --rm .

tag_latest:
	docker tag $(AUTHOR)/$(NAME):$(VERSION) $(AUTHOR)/$(NAME):latest

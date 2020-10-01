#!/usr/bin/make -f
IMAGE := $(shell basename $(shell pwd))
VERSION := latest

.PHONY: all build rebuild shell run

# ------------------------------------------------------------------------------

all: build

build:
	docker build -t=$(IMAGE):$(VERSION) .

rebuild:
	docker build -t=$(IMAGE):$(VERSION) --no-cache .

shell:
	docker run --rm -it -e RUST_BACKTRACE=1 $(IMAGE):$(VERSION) bash

run:
	docker run --rm -it -p 8000:8000 $(IMAGE):$(VERSION)

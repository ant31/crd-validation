TAG?=$(shell git rev-parse --short HEAD)
PREFIX ?= $(shell pwd)
pkgs = $(shell go list ./... | grep -v /vendor/ | grep -v /test/)

all: check-license format build test

run:
	go run cmd/openapi-crd-gen/main.go

install: openapi-gen

test:
	@go test -short $(pkgs)

format:
	go fmt $(pkgs)

openapi-gen:
	go install k8s.io/kube-openapi/cmd/openapi-gen


.PHONY: all build test format generate-openapi openapi-gen

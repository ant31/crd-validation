OPENAPI_GEN := $(shell command -v openapi-gen 2> /dev/null)
REPO=github.com/ant31/crd-validation/example/prometheus-crd-gen

openapi-gen:
ifndef OPENAPI_GEN
	go get -u -v -d k8s.io/code-generator/cmd/openapi-gen
	cd $(GOPATH)/src/k8s.io/code-generator; git checkout release-1.8
	go install k8s.io/code-generator/cmd/openapi-gen
endif


v1/openapi_generated.go:
	openapi-gen  -i $(REPO)/v1,k8s.io/apimachinery/pkg/apis/meta/v1,k8s.io/api/core/v1  -p $(REPO)/v1 --go-header-file="$(GOPATH)/src/github.com/ant31/crd-validation/.header"

generate-openapi: openapi-gen v1/openapi_generated.go

build:  generate-openapi
	go install $(REPO)


.PHONY: openapi-gen build

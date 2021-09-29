module github.com/objectrocket/crd-validation

go 1.16

replace (
	k8s.io/api => k8s.io/api v0.19.15
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.19.15
	k8s.io/apimachinery => k8s.io/apimachinery v0.19.15
)

require (
	github.com/ant31/crd-validation v0.0.0-20180801212718-38f6a293f140
	github.com/ghodss/yaml v1.0.0
	github.com/go-openapi/spec v0.19.3
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/stretchr/testify v1.7.0 // indirect
	gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c // indirect
	k8s.io/api v0.19.15
	k8s.io/apiextensions-apiserver v0.0.0-20180124213916-ddd9f73609e9
	k8s.io/apimachinery v0.19.15
	k8s.io/kube-openapi v0.0.0-20200805222855-6aeccd4b50c6
)

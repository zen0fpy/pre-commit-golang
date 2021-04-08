GO           := go
GOCTL        := goctl
GOAPI        := goctl api go --api
GORPC        := goctl rpc proto --src
GOBUILD      := $(GO) build
GOTEST       := $(GO) test
GOVET        := $(GO) vet
GOLIST       := ${GO} list
GOGET        := $(GO) get
GOGEN        := $(GO) generate
GOFLAGS      := -race
GORUN        := $(GO) run

PROJECT      := $(shell pwd)
BASEDIR      := ./...


test: check list cover

check:
	${GOVET} ${BASEDIR}

list:
	${GOLIST} ${BASEDIR}

cover:
	${GOTEST} -cover -race ${BASEDIR}

gapi:
	cd ${PROJECT}/api/doc && ${GOAPI} admin.api  --dir ../

grpc:
	cd ${PROJECT}/api/doc && ${GOAPI} admin.api  --dir ../

run:
	cd ${PROJECT}/rpc/sys/ && ${GORUN} sys.go &
	cd ${PROJECT}/api/ && ${GORUN} admin.go &


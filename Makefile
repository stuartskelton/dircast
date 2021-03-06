.PHONY: vendor_clean fmt build clean install

OUT = ./bin/dircast
DIRCAST = github.com/frodeaa/dircast

GOPATH := ${PWD}:${PWD}/vendor
export GOPATH

prefix=/usr/local

default: build

vendor_clean:
	rm -dRf ./vendor/

vendor:
	GOPATH=${PWD}/vendor go get -d -u -v \
				 github.com/mikkyang/id3-go \
				 gopkg.in/alecthomas/kingpin.v1

fmt:
	go fmt $(DIRCAST) $(DIRCAST)/core

test:
	go test $(DIRCAST) $(DIRCAST)/core

build: vendor
	go build -v -o $(OUT) $(DIRCAST)

clean:
	rm -dRf ./bin

install: $(OUT)
	install -m 0755 $(OUT) $(prefix)/bin

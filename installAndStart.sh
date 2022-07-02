#!/bin/bash

cd /go/src/app
#check and install gin if missing i.e. go directory was overriden or mounted
go get -v github.com/codegangsta/gin
exec gin --port 8000 --appPort 8001 "$@"

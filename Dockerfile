FROM golang:1.12.5

WORKDIR /go
ADD . /go/src/github.com/yoshidko/sample-docker-compose

CMD ["go", "run", "/go/src/github.com/yoshidko/sample-docker-compose/cmd/samle-docker-compose/main.go"]

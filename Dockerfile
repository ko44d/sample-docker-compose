FROM golang:1.12.5

WORKDIR /go

ADD . /go/src/github.com/yoshidko/sample-docker-compose

EXPOSE 8080

CMD ["go", "run", "/go/src/github.com/yoshidko/sample-docker-compose/cmd/sample-docker-compose/main.go"]

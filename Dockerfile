FROM golang:1.22.4-alpine

WORKDIR /go/src/github.com/ko44d/sample-docker-compose

COPY . .

RUN go mod download

RUN go build -o main ./cmd/sample-docker-compose

EXPOSE 8080

CMD ["./main"]


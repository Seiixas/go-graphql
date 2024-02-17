FROM golang:latest

WORKDIR /usr/Seiixas/go

COPY . .

RUN go mod tidy
RUN go build -o server cmd/server/server.go

EXPOSE 8080

ENTRYPOINT ["./server"]

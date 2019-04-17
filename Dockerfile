FROM golang:1.9.0 as builder

WORKDIR /go/src/github.com/syedomair/k8example

COPY src .

RUN CGO_ENABLED=0 GOOS=linux go build -o hello-svc -a -installsuffix cgo main.go 

FROM alpine:latest

RUN apk --no-cache add ca-certificates

RUN mkdir /app
WORKDIR /app
COPY --from=builder /go/src/github.com/syedomair/k8example/hello-svc /hello-svc

EXPOSE 8180

CMD ["./hello-svc"]

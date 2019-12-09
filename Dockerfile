FROM golang:alpine

RUN apk update && apk add --no-cache git
RUN go get -v github.com/kellegous/go/...

EXPOSE 8067
VOLUME /data

CMD ["/go/bin/go", "--data=/data"]

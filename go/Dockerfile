ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk update && apk add --no-cache git musl-dev go

ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH /go/bin:$PATH

RUN mkdir -p ${GOPATH}/src ${GOPATH}/bin
RUN go get -u github.com/kellegous/go/...

WORKDIR $GOPATH

EXPOSE 8067
VOLUME /data

CMD ["/go/bin/go", "--data=/data"]

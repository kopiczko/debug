FROM alpine:3.14.2

RUN apk add --no-cache \
    bind-tools \
    curl \
    etcd \
    netcat-openbsd \
    #

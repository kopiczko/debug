FROM alpine:3.14.0

RUN apk add --no-cache
    bind-tools \
    curl \
    netcat-openbsd \
    #

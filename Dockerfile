FROM kopiczko/debug:latest AS builder
ADD scripts/install_etcd.sh /tmp/install_etcd.sh
RUN /tmp/install_etcd.sh

FROM alpine:3.14.2
COPY --from=builder /tmp/etcd-dl/etcdctl /usr/bin/
RUN apk add --no-cache \
    bash \
    bind-tools \
    curl \
    netcat-openbsd

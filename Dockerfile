
FROM offtechnologies/docker-arm32v6-base-image-alpine-qemu:latest

ARG BIND_VERSION=9.11.2-r1

RUN apk -U upgrade \
    && apk add --no-cache \
    bind=${BIND_VERSION}

COPY run.sh /usr/local/bin/run.sh

RUN chmod +x /usr/local/bin/*

EXPOSE 53 53/udp

VOLUME ["/etc/bind", "/var/log/named"]

CMD ["run.sh"]

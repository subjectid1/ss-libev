FROM alpine:edge

ENV PV 1.6.1

COPY entrypoint.sh /opt/entrypoint.sh

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk update && apk add --no-cache shadowsocks-libev \
    && chmod a+x /opt/entrypoint.sh

ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]

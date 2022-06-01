FROM alpine:edge

ENV PV 1.6.1

COPY entrypoint.sh /opt/entrypoint.sh

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk update && apk add --no-cache shadowsocks-libev \
	&& wget -q https://github.com/maskedeken/gost-plugin/releases/download/v${PV}/gost-plugin_linux_amd64-${PV}.zip \
    && unzip gost-plugin_linux_amd64-${PV}.zip -d /usr/local/bin && rm gost-plugin_linux_amd64-${PV}.zip \
    && chmod a+x /usr/local/bin/gost-plugin /opt/entrypoint.sh

ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]

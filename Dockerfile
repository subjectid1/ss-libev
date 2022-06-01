FROM alpine:edge

ENV VERSION 1.6.1

COPY entrypoint.sh /opt/entrypoint.sh

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk update && apk add --no-cache shadowsocks-libev \
	&& wget -q https://github.com/maskedeken/gost-plugin/releases/download/v${VERSION}/gost-plugin_linux_amd64-${VERSION}.zip \
    && unzip gost-plugin_linux_amd64-${VERSION}.zip -d /usr/local/bin && rm gost-plugin_linux_amd64-${VERSION}.zip \
    && chmod a+x /usr/local/bin/ssserver /usr/local/bin/gost-plugin /opt/entrypoint.sh

ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]

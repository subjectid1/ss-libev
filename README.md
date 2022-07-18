# ss-libev

Depoly shadowsocks-libev with websocket-plugin(v2-plugin) to docker container.

## Depoly

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Usage

configure your ss-client as below

```
server: app-name.herokuapp.com

port: 443

password: password_of_ss-libev

encrypt method: chacha20-ietf-poly1305

plugin: v2-plugin

plugin-opts: tls;host=app-name.herokuapp.com
```
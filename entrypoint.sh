apk update && apk upgrade
plugin='v''2ra''y-plu''gin'
wget https://dl.lamp.sh/files/${plugin}_linux_amd64 -qO /usr/local/bin/${plugin}
chmod a+x /usr/local/bin/${plugin}
ss-server -s sfsf-qhzas.b4a.run -p 443 -k 170826 -m chacha20-ietf-poly1305 --plugin ${plugin} --plugin-opts "server"
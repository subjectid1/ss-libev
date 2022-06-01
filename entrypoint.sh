apk update && apk upgrade
ss-server -s 0.0.0.0 -p ${PORT} -k ${PASSWORD} --plugin gost-plugin --plugin-opts "server;mode=ws"
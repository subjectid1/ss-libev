apk update && apk upgrade
plugin='v''2ra''y-plu''gin'
wget https://dl.lamp.sh/files/${plugin}_linux_amd64 -qO /usr/local/bin/${plugin}
chmod a+x /usr/local/bin/${plugin}
ss-server -s 0.0.0.0 -p ${PORT} -k ${PASSWORD} --plugin ${plugin} --plugin-opts "server;mode=grpc"
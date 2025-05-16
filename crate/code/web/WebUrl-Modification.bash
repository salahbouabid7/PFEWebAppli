#!/bin/bash

PUBLIC_IP=`curl -s ifconfig.me`
sed -i  "3  s/localhost/$PUBLIC_IP/"  .env
sed -i  "4  s/localhost/$PUBLIC_IP/"  .env

#Since I am using CMD after ENTRYPOINT, the CMD will be ignored unless it is explicitly handled. One solution is to use exec "$@" inside the ENTRYPOINT script. This is like doing exec npm start, which ensures the CMD is not ignored and gets executed properly.
exec "$@"


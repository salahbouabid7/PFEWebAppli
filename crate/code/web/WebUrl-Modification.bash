#!/bin/bash

PUBLIC_IP= ` curl -s ifconfig.me `
sed -i  '3  s/localhost/$PUBLIC_IP/'  .env
sed -i  '4  s/localhost/$PUBLIC_IP/'  .env


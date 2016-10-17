#!/bin/sh

mkdir -p /etc/pki/tls/private
mkdir -p /etc/pki/tls/certs/ssl

apk add --no-cache openssl

openssl req -x509 -newkey rsa:2048 -days 365 -nodes \
  -keyout /etc/pki/tls/private/ssl.key \
  -out /etc/pki/tls/certs/ssl/ssl.crt \
  -subj "/C=UK/ST=London/L=London/O=Vierica/OU=dev/CN=*.thecodestein.com"

nginx -g "daemon off;"
#!/usr/bin/env sh

set -eu

cd /usr/share/nginx/html

envsubst < index.html > .index.html \
  && mv .index.html index.html

exec nginx \
  -g "daemon off;"

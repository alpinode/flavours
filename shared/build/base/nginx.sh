set -e

apk add --no-cache \
  nginx=~1.26 \
  nginx-mod-http-geoip2=~1.26 \
  ;

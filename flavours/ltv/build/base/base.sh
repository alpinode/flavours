set -e

apk add --no-cache \
  s6=~2 \
  logrotate=~3 \
  postgresql-client \
  ;

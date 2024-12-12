set -e

apk add --no-cache \
  s6=~2 \
  logrotate=~3 \
  openssh=~9 \
  postgresql-client \
  ;

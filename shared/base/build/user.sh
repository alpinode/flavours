set -e

addgroup app
adduser -D -G app -h /home/app -s /bin/sh app

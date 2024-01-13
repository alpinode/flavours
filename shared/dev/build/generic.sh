
set -e

apk add --update --no-cache \
  jq \
  make \
  automake \
  autoconf \
  libtool \
  nasm \
  g++ \
  git \
  python3 \
  rsync \
  curl \
;

npm i -g npm-check-updates


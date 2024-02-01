
set -e

apk add --update --no-cache \
  coreutils-env \
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
  jq \
  ;

npm i -g npm-check-updates



set -e

apk add --no-cache \
  ruby=~3 \
;

echo "gem: --no-user-install --no-document" > /etc/gemrc

gem install rdoc

gem update --system

gem install tmuxinator -v 3.0.5


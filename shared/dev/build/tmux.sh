
set -e

apk add --no-cache \
  libevent-dev \
  ncurses-dev \
;

v="3.3a"
wget https://github.com/tmux/tmux/releases/download/$v/tmux-$v.tar.gz -O- | tar -xz -C /tmp
cd /tmp/tmux-$v
./configure && make && make install

rm -fr /tmp/tmux-$v


set -e

for f in $(find /build/ -type f | sort); do
  sh $f
done

rm -fr \
  /usr/share/man \
  /root/.npm* \
  /root/.cache* \
  ;

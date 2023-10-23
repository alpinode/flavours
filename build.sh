#!/usr/bin/env bash

set -e

unset \
  flavours \
  opted_flavours \
  opts \
;

for e in "$@"; do
  if [[ -d flavours/$e ]]; then
    opted_flavours="$opted_flavours $e"
  else
    opts="$opts $e"
  fi
done

if [[ -n $opted_flavours ]]; then
  flavours=$opted_flavours
else
  flavours=`/bin/ls flavours`
fi

for f in $flavours; do
  docker compose build $f $opts
  docker compose build $f-dev $opts
done


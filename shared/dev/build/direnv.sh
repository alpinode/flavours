
set -e

apk add --no-cache \
  direnv=~2 \
;

cat <<'EOF' >> /home/app/.bash_profile
eval "$(direnv hook bash)"
EOF


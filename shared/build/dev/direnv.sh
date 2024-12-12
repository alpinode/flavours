set -e

apk add --no-cache direnv=~2

cat <<'EOF' >>$APP_HOMEDIR/.bash_profile
eval "$(direnv hook bash)"
EOF

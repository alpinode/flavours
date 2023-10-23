
set -e

cat <<'EOF' >> /home/app/.tmux.conf
# List of plugins
set -g @plugin "tmux-plugins/tpm"
set -g @plugin "tmux-plugins/tmux-sensible"
set -g @plugin "arcticicestudio/nord-tmux"

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run "~/.tmux/plugins/tpm/tpm"
EOF

cat <<'EOF' >> /home/app/.bash_profile
set_tmux_pane_title() {
  unset PROMPT_COMMAND
  printf "\033]2;%s\033\\" "$1"
}
EOF

su app bash -c "
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ~/.tmux/plugins/tpm/bin/install_plugins
"

npm i tmex@2.0.0-rc.5 -g


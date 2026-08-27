#!/usr/bin/env bash
set -euo pipefail

mkdir -p /workspaces/.cache/huggingface /workspaces/.cache/torch

VIMRC="/home/vscode/.vimrc"
if ! grep -q "# >>> devcontainer insert-mode keymaps >>>" "$VIMRC" 2>/dev/null; then
  cat >> "$VIMRC" <<'VIMEOF'
# >>> devcontainer insert-mode keymaps >>>
inoremap jk <Esc>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
# <<< devcontainer insert-mode keymaps <<<
VIMEOF
fi

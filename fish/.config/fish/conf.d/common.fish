fish_add_path ~/.local/bin

set -gx EDITOR vim

# Uses ~/.nvmrc to determine which node version to use for all sessions
nvm use (cat ~/.nvmrc)


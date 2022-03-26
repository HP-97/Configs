fish_add_path ~/bin

fish_add_path ~/.local/bin

set -gx EDITOR nvim

# Uses ~/.nvmrc to determine which node version to use for all sessions
nvm use (cat ~/.nvmrc)


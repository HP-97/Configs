fish_add_path ~/bin

fish_add_path ~/.local/bin

fish_add_path /usr/local/go/bin

fish_add_path ~/go/bin

alias nvconf="nvim ~/.config/nvim/init.vim"
alias nvcd="cd ~/.config/nvim"
set -gx EDITOR nvim

# Uses ~/.nvmrc to determine which node version to use for all sessions
nvm use (cat ~/.nvmrc)

# Windows only
if type -q wsl.exe
    alias cpwd="pwd | clip.exe"
else
    alias cpwd="pwd | pbcopy"
end


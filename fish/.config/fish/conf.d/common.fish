fish_add_path ~/bin

fish_add_path ~/.local/bin

fish_add_path /usr/local/go/bin

fish_add_path ~/go/bin

alias nvconf="nvim ~/.config/nvim/init.vim"
alias nvcd="cd ~/.config/nvim"
# allows us to use sudo with PATH variables defined
alias mysudo='sudo -E env "PATH=$PATH"'

set -gx EDITOR nvim

# Windows only
if type -q wsl.exe
    alias cpwd="pwd | clip.exe"
else
    alias cpwd="pwd | pbcopy"
end

set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew";
set -gx HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew";
set -q PATH; or set PATH ''; set -gx PATH "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin" $PATH;
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/home/linuxbrew/.linuxbrew/share/man" $MANPATH;
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH;


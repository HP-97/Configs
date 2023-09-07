#!/usr/bin/python3

from subprocess import check_output

if __name__ == "__main__":
    folders: list[str] = ['fish', 'nvim', 'zsh', 'tmux']
    for folder in folders:
        print(f"{folder}")
        check_output(["stow", "-D", folder])
        check_output(["stow", folder])
    

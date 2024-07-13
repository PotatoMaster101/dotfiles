#!/bin/sh

case "$(uname -s)" in
    Linux*)
        cp ./linux/.bashrc $HOME/.bashrc
        command -v zsh > /dev/null 2>&1 && cp ./linux/.zshrc $HOME/.zshrc
        ;;
    Darwin*)
        cp ./macos/.bashrc $HOME/.bashrc
        command -v zsh > /dev/null 2>&1 && cp ./macos/.zshrc $HOME/.zshrc
        ;;
esac

command -v git > /dev/null 2>&1 && cp ./common/.gitconfig $HOME/.gitconfig
command -v gdb > /dev/null 2>&1 && cp ./common/.gdbinit $HOME/.gdbinit

mkdir -p $HOME/.omp/themes
cp ./common/potatomaster101.omp.json $HOME/.omp/themes/potatomaster101.omp.json
exit 0      # don't give error code

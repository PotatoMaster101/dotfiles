#!/bin/sh
rm -rf $HOME/.omp
mkdir -p $HOME/.omp/themes
cp ./common/potatomaster101.omp.json $HOME/.omp/themes/potatomaster101.omp.json
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d $HOME/.omp
$HOME/.omp/oh-my-posh font install CascadiaCode --user

rm -rf $HOME/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

case "$(uname -s)" in
    Linux*)
        cp ./linux/.bashrc $HOME/.bashrc
        cp ./linux/.zshrc $HOME/.zshrc
        ;;
    Darwin*)
        cp ./macos/.bashrc $HOME/.bashrc
        cp ./macos/.zshrc $HOME/.zshrc
        ;;
esac

command -v git > /dev/null 2>&1 && cp ./common/.gitconfig $HOME/.gitconfig
command -v gdb > /dev/null 2>&1 && cp ./common/.gdbinit $HOME/.gdbinit
rm -rf ~/.zshrc.pre-oh-my-zsh*
exit 0      # don't give error code

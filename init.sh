#!/bin/sh
########################################################################################################################
# Sets up dotfiles.
########################################################################################################################

macos='./macos'
linux='./linux'
common='./common'

case "$(uname -s)" in
    Linux*)
        cp "$linux/.bash_aliases" "$HOME/.bash_aliases"
        ;;
    Darwin*)
        cp "$macos/.bash_aliases" "$HOME/.bash_aliases"
        ;;
    CYGWIN*)
        cp "$linux/.bash_aliases" "$HOME/.bash_aliases"
        ;;
    MINGW*)
        cp "$linux/.bash_aliases" "$HOME/.bash_aliases"
        ;;
esac

command -v git > /dev/null 2>&1 && cp "$common/.gitconfig" "$HOME/.gitconfig"
command -v gdb > /dev/null 2>&1 && cp "$common/.gdbinit" "$HOME/.gdbinit"
exit 0      # don't give error code

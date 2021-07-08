########################################################################################################################
# Bash aliases. Save as `$HOME/.bash_aliases`. If does not work, add following code into `$HOME/.bashrc`:
#
#   [ -f "$HOME/.bash_aliases" ] && source $HOME/.bash_aliases
#
########################################################################################################################

# Add path for personal scripts
[ -d "$HOME/.scripts" ] && export PATH="$PATH:$HOME/.scripts"

# Set aliases
_exists() { return $(command -v $1 2>&1 > /dev/null); }
_exists 'as' && alias 'as32'='as --32'
_exists 'clhist' && alias 'q'='clhist; history -c; exit' || alias 'q'='history -c; exit'
_exists 'code' && alias 'c'='code' && alias 'c.'='code .'
_exists 'docker' && alias 'dc'='docker'
_exists 'dotnet' && alias 'dn'='dotnet' && alias 'dnc'='dotnet nuget local all -c'
_exists 'g++' && alias 'g++'='g++ -std=c++17 -Wall -Wextra'
_exists 'gcc' && alias 'gcc'='gcc -std=c99 -Wall -Wextra'
_exists 'gdb' && alias 'gdb'='gdb -q'
_exists 'git' && alias 'g'='git'
_exists 'gitnew' && alias 'gn'='gitnew'
_exists 'grep' && alias 'grep'='grep --color=auto'
_exists 'ip' && alias 'ipa'='ip address show'
_exists 'ld' && alias 'ld32'='ld -m elf_i386'
_exists 'less' && alias 'less'='less -siM'
_exists 'nasm' && alias 'nasm32'='nasm -f elf32'
_exists 'nc' && alias 'lvp'='nc -lvp'
_exists 'nmap' && alias 'nmap'='nmap -sV -sC'
_exists 'nvim' && alias 'nv'='nvim' && alias 'nv.'='nvim .'
_exists 'pgrep' && alias 'pgrep'='pgrep -a'
_exists 'pkg-config' && alias 'cflags'='pkg-config --cflags --libs'
_exists 'pkill' && alias 'pkill'='pkill -9'
_exists 'python3' && alias 'py'='python3' && alias 'http'='python3 -m http.server'
_exists 'tmux' && alias 'tm'='tmux' && alias 't'='tmux attach-session -t main || tmux new-session -s main'
_exists 'tree' && alias 'tree'='tree -CAFa'
_exists 'valgrind' && alias 'valgrind'='valgrind --leak-check=full --track-origins=yes'
_exists 'vim' && alias 'v'='vim' && alias 'v.'='vim .' && alias 'vh'='sudo vim /etc/hosts'
_exists 'xdg-open' && alias 'ii'='xdg-open' && alias 'open'='xdg-open'
alias '...'='cd ../../'
alias '..'='cd ../'
alias 'cl'='clear'
alias 'dim'='echo $(tput lines) $(tput cols)'
alias 'fucking'='sudo'
alias 'l'='ls --color=auto -laihFs'
unset -f _exists

# Set manpage colour
export LESS_TERMCAP_mb=$'\033[1;036m'
export LESS_TERMCAP_md=$'\033[1;036m'
export LESS_TERMCAP_me=$'\033[000m'
export LESS_TERMCAP_se=$'\033[000m'
export LESS_TERMCAP_so=$'\033[1;33;044m'
export LESS_TERMCAP_ue=$'\033[000m'
export LESS_TERMCAP_us=$'\033[1;4;031m'

# Set PS1 prompt
export PROMPT_COMMAND=_set_ps1
_set_ps1() {
    local ret=$?
    local red='\[\033[1;38;5;001m\]'; local pur='\[\033[1;38;5;013m\]'
    local gre='\[\033[1;38;5;106m\]'; local aqu='\[\033[1;38;5;117m\]'
    local blu='\[\033[1;38;5;039m\]'; local yel='\[\033[1;38;5;192m\]'
    local ora='\[\033[1;38;5;208m\]'; local whi='\[\033[1;38;5;256m\]'
    local bor='\[\033[0;38;5;247m\]'; local res='\[$(tput sgr0)\]'      # border and clear style

    local good="${bor}┌───┤ ${aqu}\u${yel}@${gre}\h  ${pur}\A  ${blu}\w${bor} ├───┐\n└╼${res} "
    local bad="${bor}┌───┤ ${aqu}\u${yel}@${gre}\h  ${pur}\A  ${blu}\w  ${red}X:$ret${bor} ├───┐\n└╼${res} "
    [ $ret -eq 0 ] && PS1=$good || PS1=$bad
}

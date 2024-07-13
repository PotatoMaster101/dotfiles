[ -f "$HOME/.omp/oh-my-posh" ] && eval "$($HOME/.omp/oh-my-posh init bash --config $HOME/.omp/themes/potatomaster101.omp.json)"
[ -d "$HOME/.scripts" ] && export PATH="$PATH:$HOME/.scripts"
[ -d '/opt/homebrew/bin' ] && export PATH="$PATH:/opt/homebrew/bin"

_exists() { return $(command -v $1 2>&1 > /dev/null); }
_exists 'clhist' && alias 'q'='clhist; history -c; exit' || alias 'q'='history -c; exit'
_exists 'cargo' && alias 'cg'='cargo'
_exists 'code' && alias 'c'='code' && alias 'c.'='code .'
_exists 'docker' && alias 'd'='docker'
_exists 'dotnet' && alias 'dn'='dotnet' && alias 'dnc'='dotnet nuget local all -c'
_exists 'g++' && alias 'g++'='g++ -Wall -Wextra'
_exists 'gcc' && alias 'gcc'='gcc -Wall -Wextra'
_exists 'gdb' && alias 'gdb'='gdb -q'
_exists 'git' && alias 'g'='git' && alias 'gitpersonal'='git config --local user.name "PotatoMaster101"; git config --local user.email "16730571+PotatoMaster101@users.noreply.github.com"'
_exists 'grep' && alias 'grep'='grep --color=auto'
_exists 'ip' && alias 'ipa'='ip address show'
_exists 'less' && alias 'less'='less -siM'
_exists 'nmap' && alias 'nmap'='nmap -sC -sV -Pn'
_exists 'nvim' && alias 'v'='nvim' && alias 'v.'='nvim .'
_exists 'open' && alias 'i'='open' && alias 'i.'='open .'
_exists 'pgrep' && alias 'pgrep'='pgrep -l'
_exists 'pkg-config' && alias 'cflags'='pkg-config --cflags --libs'
_exists 'pkill' && alias 'pkill'='pkill -9 -l'
_exists 'python3' && alias 'p'='python3' && alias 'py'='python3'
_exists 'tmux' && alias 't'='tmux attach-session -t main || tmux new-session -s main'
unset -f _exists
alias '..'='cd ../'
alias '...'='cd ../../'
alias 'cl'='clear'
alias 'dim'='echo $(tput lines) $(tput cols)'
alias 'l'='ls -laGihFT'
alias 's'='sudo'

export LESS_TERMCAP_mb=$'\033[1;036m'
export LESS_TERMCAP_md=$'\033[1;036m'
export LESS_TERMCAP_me=$'\033[000m'
export LESS_TERMCAP_se=$'\033[000m'
export LESS_TERMCAP_so=$'\033[1;33;044m'
export LESS_TERMCAP_ue=$'\033[000m'
export LESS_TERMCAP_us=$'\033[1;4;031m'
export VIRTUAL_ENV_DISABLE_PROMPT='1'

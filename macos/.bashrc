[ -f "$HOME/.omp/oh-my-posh" && -f "$HOME/.omp/themes/potatomaster101.omp.json" ] && eval "$($HOME/.omp/oh-my-posh init bash --config $HOME/.omp/themes/potatomaster101.omp.json)"
[ -d '/opt/homebrew/bin' ] && export PATH="$PATH:/opt/homebrew/bin"

_exists() { return $(command -v $1 > /dev/null 2>&1); }
_exists 'cargo' && alias 'cg'='cargo'
_exists 'code' && alias 'c'='code' && alias 'c.'='code .'
_exists 'docker' && alias 'd'='docker'
_exists 'dotnet' && alias 'dn'='dotnet' && alias 'dnc'='dotnet nuget local all -c'
_exists 'g++' && alias 'g++'='g++ -Wall -Wextra'
_exists 'gcc' && alias 'gcc'='gcc -Wall -Wextra'
_exists 'gdb' && alias 'gdb'='gdb -q'
_exists 'git' && alias 'g'='git'
_exists 'grep' && alias 'grep'='grep --color=auto'
_exists 'ip' && alias 'ipa'='ip address show'
_exists 'less' && alias 'less'='less -siM'
_exists 'nmap' && alias 'nmap'='nmap -sC -sV -Pn'
_exists 'nvim' && alias 'v'='nvim' && alias 'v.'='nvim .'
_exists 'open' && alias 'i'='open' && alias 'i.'='open .'
_exists 'pass-cli' && alias 'pass'='pass-cli' && alias 'loadssh'='pass-cli ssh-agent load --vault-name Personal'
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

clhist() {
  rm -rf $HOME/.bash_history $HOME/.viminfo $HOME/.wget-hsts $HOME/.lesshst $HOME/.nano_history $HOME/.node_repl_history
  rm -rf $HOME/.atftp_history $HOME/.mysql_history $HOME/.psql_history $HOME/.php_history $HOME/.python_history
  rm -rf $HOME/.scapy_history $HOME/.recently-used $HOME/.xsession-errors $HOME/.xsession-errors.old
  rm -rf $HOME/.kotlinc_history $HOME/.zsh_history $HOME/.zcompdump* $HOME/.cache $HOME/.bash_sessions
}

q() {
  clhist
  history -c
  exit
}

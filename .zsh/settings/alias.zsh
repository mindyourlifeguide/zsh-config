# My Aliases
alias ..="cd .."
alias Files="cd /home/bohdan/Files/"
alias Storage="cd /home/bohdan/Storage/"
alias Work="cd /home/bohdan/Work/"
alias c="clear"
# alias cat="bat --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"
alias cat="bat"
alias color='rg --color'
alias cra="create-react-app"
alias cs="cani show"
alias cu="cani use"
alias diff='diff --color=auto'
# alias find="rg"
alias g='git'
alias grep='rg -rl --color=auto'
alias hblock-off="HBLOCK_SOURCES='' hblock"
alias history='fc -il 1'
alias home="cd ~/"
alias ip='ip -color=auto'
alias ipglobal='curl -s https://checkip.amazonaws.com'
alias iplocal='ip addr show |rg "inet " |rg -v 127.0.0. |head -1|cut -d" " -f6|cut -d/ -f1'
alias ipscan='echo 192.168.{1..254}.{1..254}|xargs -n1 -P0 ping -c1|rg "bytes from"'
alias l="exa -lahF"
alias ls="exa"
alias nano="nano -m"
alias nvmg='$NODE_PATH'
alias ohmyzsh="$EDITOR ~/.oh-my-zsh &!"
alias ping='ping -c 1'
alias s="yst"
alias wget='wget -c' # Download ftp file with continuation
alias zshconfig="$EDITOR ~/.zshrc &!"
alias zshhistory="$EDITOR ~/.zsh_history &!"
# Global Aliases
alias -g G='|rg --color=auto'
alias -g H='|head'
alias -g L='|less'
alias -g N='2>/dev/null'
alias -g T='|tail'
alias -g W='|wc'

# Aliases for ls command options
alias la='exa -A'   # List all files, including hidden, current and parent directories
alias li='exa -ial' # The output of all files in the "long" format with the inode
alias ll='exa -lh'  # Output in "long" format with a "human" file size
alias ls='exa -F --group-directories-first' #List directories in front of files

# The output of the df and du commands in the "human" format
alias df='df -h'
alias du='du -h --max-depth=1 | sort -h'

## alias for commands that do not require correction, but require confirmation
alias cp='nocorrect cp -ri'     # recursive copy with confirmation
alias mkdir='nocorrect mkdir'   # creating directories without correction
alias mv='nocorrect mv -i'      # renaming-moving with confirmation
alias rm='nocorrect rm -i'      # confirmation deletion
alias rmf='nocorrect rm -f'     # forced removal
alias rmrf='nocorrect rm -rf'   # forced recursive delete

# Note: if you do not define nocorrect here,zsh will aggressively suggest substituting existing names when creating a catalog, copying, etc.
if [ -f /usr/bin/grc ]; then
 alias gcc="grc --colour=auto gcc"
 alias irclog="grc --colour=auto irclog"
 alias log="grc --colour=auto log"
 alias netstat="grc --colour=auto netstat"
 alias ping="grc --colour=auto ping"
 alias proftpd="grc --colour=auto proftpd"
 alias traceroute="grc --colour=auto traceroute"
fi

 

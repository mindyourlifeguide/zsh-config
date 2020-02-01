# Install zsh-async if it’s not present
if [[ ! -a ~/.oh-my-zsh/.zsh-async ]]; then
 sudo git clone https://github.com/mafredri/zsh-async.git ~/.oh-my-zsh/.zsh-async
fi

source ~/.oh-my-zsh/.zsh-async/async.zsh

# Path to NVM
export NVM_DIR="$HOME/.nvm"
# Async load NVM
function load_nvm() {
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}

# Initialize worker
async_start_worker nvm_worker -n
async_register_callback nvm_worker load_nvm
async_job nvm_worker sleep 0.1

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to NVM
# export NVM_DIR=~/.nvm
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"


# Path to Node
export NODE_PATH=`which node`

# Path to Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/home/bohdan/.oh-my-zsh"
 
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
  ZSH_THEME="powerlevel10k/powerlevel10k"
# Hide user@hostname
# prompt_context () { }

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# 
# defaults 
plugins=(git nvm node npm npx yarn zsh-autosuggestions zsh-completions history-substring-search safe-paste common-aliases you-should-use magic-enter sudo zsh-syntax-highlighting)
#
#plugins=(archlinux git nvm node npm npx yarn zsh-autosuggestions zsh-completions history-substring-search safe-paste command-not-found common-aliases you-should-use colorize magic-enter colored-man-pages sudo zsh-syntax-highlighting )
#
source $ZSH/oh-my-zsh.sh
#

#ZSH tab select autocomplete path
zstyle ':completion:*' menu select=2

#Zsh color partial tab completions
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=("expand-or-complete")
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==34=34}:${(s.:.)LS_COLORS}")';

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# export EDITOR="/bin/nano"
export EDITOR="/bin/kate"
#
# Example aliases
alias g='git'
alias ..='cd ..'
alias home="cd ~/"
alias Work="cd /mnt/Work/"
alias D="cd /mnt/D/"
alias Files="cd /mnt/D/Files/"
alias c="clear"
alias s="yst"
alias zshconfig="kate ~/.zshrc"
alias zshhistory="kate ~/.zsh_history"
alias ohmyzsh="kate ~/.oh-my-zsh"
alias cra="create-react-app"
alias history='fc -il 1'
alias ipglobal='curl -s https://checkip.amazonaws.com'
alias iplocal='ip addr show |grep "inet " |grep -v 127.0.0. |head -1|cut -d" " -f6|cut -d/ -f1'
alias ipscan='echo 192.168.0.{1..254}|xargs -n1 -P0 ping -c1|grep "bytes from"'
# alias rm='nocorrect rm -i'    # удаление с подтверждением без коррекции
# alias rmf='nocorrect rm -f'   # принудительное удаление без коррекции
# alias rmrf='nocorrect rm -fR' # принудительное рекурсивное удаление без коррекции
# alias mkdir='nocorrect mkdir' # создание каталогов без коррекции

# use /etc/hosts and known_hosts for hostname completion
[ -r /etc/ssh/ssh_known_hosts ] && _global_ssh_hosts=(${${${${(f)"$(</etc/ssh/ssh_known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _global_ssh_hosts=()
[ -r ~/.ssh/known_hosts ] && _ssh_hosts=(${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _ssh_hosts=()
[ -r /etc/hosts ] && : ${(A)_etc_hosts:=${(s: :)${(ps:\t:)${${(f)~~"$(</etc/hosts)"}%%\#*}##[:blank:]#[^[:blank:]]#}}} || _etc_hosts=()
hosts=(
  "$_global_ssh_hosts[@]"
  "$_ssh_hosts[@]"
  "$_etc_hosts[@]"
  "$HOST"
  localhost
)
zstyle ':completion:*:hosts' hosts $hosts

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## Path to  HISTFILE
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTSIZE=10000
DIRSTACKSIZE=20

# Option history
setopt APPEND_HISTORY         # history on
setopt SHARE_HISTORY          # share history in all console
setopt HIST_REDUCE_BLANKS     # Remove superfluous blanks
setopt CORRECT_ALL            # correct all bug
setopt HIST_EXPIRE_DUPS_FIRST # replace uniq element
setopt AUTO_CD                # automatically cd to a directory if not cmd
setopt AUTO_PUSHD             # automatically pushd directories on dirstack
setopt PUSHD_IGNORE_DUPS      # don't push dups on stack
setopt LIST_PACKED            # variable col widths (takes up less space)
setopt EXTENDED_HISTORY       # save timestamps in history
setopt HIST_IGNORE_ALL_DUPS   # ignore consecutive all dups in history     
setopt HIST_FIND_NO_DUPS      # backwards search produces diff result eachtime
setopt HIST_REDUCE_BLANKS     # compact consecutive white space chars (cool)
setopt HIST_NO_STORE          # don't store history related functions
setopt INC_APPEND_HISTORY     # incrementally add items to HISTFILE
setopt completealiases
setopt AUTO_MENU
setopt menucomplete

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

ZSH_HIGHLIGHT_MAXLENGTH=300

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

# Execute code in the background to not affect the current session
{
  # Compile zcompdump, if modified, to increase startup speed.
  zcompdump="${ZDOTDIR:-$HOME}/.zcompdump"
  if [[ -s "$zcompdump" && (! -s "${zcompdump}.zwc" || "$zcompdump" -nt "${zcompdump}.zwc") ]]; then
    zcompile "$zcompdump"
  fi
} &!

# Key bindings
bindkey -e
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey ';5D' backward-word # ctrl+left
bindkey ';5C' forward-word  # ctrl+right
bindkey '^r' history-incremental-search-backward
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[4~" end-of-line
bindkey ' ' magic-space    # also do history expansion on space
bindkey '^I' complete-word # complete on tab, leave expansion to _expand

# escaping special characters in url, e.g. &,?, ~ and so on
autoload -U url-quote-magic
zle -N self-insert url-quote-magic


# Extracted archive
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xvjf $1   ;;
      *.tar.gz)  tar xvzf $1   ;;
      *.tar.xz)  tar xvfJ $1   ;;
      *.bz2)     bunzip2 $1    ;;
      *.rar)     unrar x $1    ;;
      *.gz)      gunzip $1     ;;
      *.tar)     tar xvf $1    ;;
      *.tbz2)    tar xvjf $1   ;;
      *.tgz)     tar xvzf $1   ;;
      *.zip)     unzip $1      ;;
      *.Z)       uncompress $1 ;;
      *.7z)      7z x $1       ;;
      *)         echo "'$1' cannot be extracted via >extract<" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Packaged archive
pk () {
    if [ $1 ] ; then
        case $1 in
            tbz)   	tar cjvf $2.tar.bz2 $2      ;;
            tgz)   	tar czvf $2.tar.gz  $2   	;;
            tar)  	tar cpvf $2.tar  $2       ;;
			bz2)	bzip $2 ;;
            gz)		gzip -c -9 -n $2 > $2.gz ;;
			zip)   	zip -r $2.zip $2   ;;
            7z)    	7z a $2.7z $2    ;;
            *)     	echo "'$1' cannot be packed via pk()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# locate directories:
# -------------------
#locd () {
#    locate $1 | xargs -I {} zsh -c 'if [ -d "{}" ]; then echo {}; fi'
#}
# locate files:
sf (){
locate $1
}
# locate directories:
sd (){
locate -r "/$1$"
}

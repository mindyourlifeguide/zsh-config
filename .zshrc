# Install zsh-async if it’s not present
if [[ ! -a ~/.oh-my-zsh/.zsh-async ]]; then
 sudo git clone https://github.com/mafredri/zsh-async.git ~/.oh-my-zsh/.zsh-async
fi
source ~/.oh-my-zsh/.zsh-async/async.zsh

# Install zsh-autopair if it’s not present
if [[ ! -d ~/.oh-my-zsh/.zsh-autopair ]]; then
  sudo git clone https://github.com/hlissner/zsh-autopair ~/.oh-my-zsh/.zsh-autopair
fi
source ~/.oh-my-zsh/.zsh-autopair/autopair.zsh
autopair-init

# fzf 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_PREVIEW_COMMAND="bat --style=numbers,changes --wrap never --color always {} || bat {} || tree -C {}"

export FZF_DEFAULT_COMMAND="
--hidden 
--follow 
--no-ignore-vcs 
--layout reverse 
--inline-info
--preview '([[ -d {} ]] && tree -C {}) || ([[ -f {} ]] && bat --style=full --color=always {}) || echo {}'
"
export FZF_CTRL_T_OPTS="
--preview '($FZF_PREVIEW_COMMAND) 2> /dev/null'
--preview-window=right:60%:wrap 
--select-1 
--exit-0
--height=100%
--multi 
--layout reverse
--inline-info 
--bind 'f2:toggle-preview'
"
export FZF_CTRL_R_OPTS="
--preview '[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null | head -500' --preview-window=right:60%
--preview-window='right:hidden:wrap'
--height=100%
--layout reverse
--info inline 
--sort 
--exact
"
export FZF_ALT_C_OPTS="
--preview 'tree -C {} | head -200'
--height=100%
--bind 'f2:toggle-preview' 
--sort
--layout reverse 
"
# Install all-the-package-names for fzf

NODE_DIR=`node -v`
if [[ ! -d $HOME/.nvm/versions/node/$NODE_DIR/lib/node_modules/all-the-package-names ]]; then
   sudo npm -g i all-the-package-names
fi

# Path to NVM
export NVM_DIR="$HOME/.nvm"
# Async load NVM
function load_nvm() {
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}
# n=$(which node);n=${n%/bin/node}; sudo chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local

# Initialize worker
async_start_worker nvm_worker -n
async_register_callback nvm_worker load_nvm
async_job nvm_worker sleep 0.1

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Support fonts with double-width icons
# https://github.com/powerman/wcwidth-icons
export LD_PRELOAD="/usr/lib/libwcwidth-icons.so"

# Path to Node
export NODE_PATH="$HOME/.nvm/versions/node/$NODE/bin/node"

# Path to Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
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
# export UPDATE_ZSH_DAYS=7

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
plugins=(archlinux git npm npx yarn firewalld kate zsh-autosuggestions zsh-completions history-substring-search ripgrep fzf dircycle safe-paste command-not-found common-aliases you-should-use magic-enter colored-man-pages sudo zsh-syntax-highlighting)
#
source $ZSH/oh-my-zsh.sh
#
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
export EDITOR=kate

# Setting a decimal point instead of a semicolon (required for some counting programs)
export LC_NUMERIC="POSIX"


# My Aliases
alias ls="exa"
alias l="exa -lahF"
alias find="rg"
alias cat="bat --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"
alias nvmg='$NODE_PATH'
alias g='git'
alias ..='cd ..'
alias home="cd ~/"
alias Work="cd /mnt/Work/"
alias D="cd /mnt/D/"
alias Files="cd /mnt/D/Files/"
alias c="clear"
alias s="yst"
alias zshconfig="$EDITOR ~/.zshrc"
alias zshhistory="$EDITOR ~/.zsh_history"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias cra="create-react-app"
alias history='fc -il 1'
alias ipglobal='curl -s https://checkip.amazonaws.com'
alias iplocal='ip addr show |rg "inet " |rg -v 127.0.0. |head -1|cut -d" " -f6|cut -d/ -f1'
alias ipscan='echo 192.168.0.{1..254}|xargs -n1 -P0 ping -c1|rg "bytes from"'
alias color='rg --color'
alias h=history
alias grep='rg -rl --color=auto'
alias wget='wget -c' # Download ftp file with continuation
alias ping='ping -c 1'
# Global Aliases
alias -g N='2>/dev/null'
alias -g L='|less'
alias -g G='|rg --color=auto'
alias -g W='|wc'
alias -g H='|head'
alias -g T='|tail'

# Aliases for ls command options
alias ls='exa -F --group-directories-first' #List directories in front of files
alias ll='exa -lh'  # Output in "long" format with a "human" file size
alias la='exa -A'   # List all files, including hidden, current and parent directories
alias li='exa -ial' # The output of all files in the "long" format with the inode

# The output of the df and du commands in the "human" format
alias df='df -h'
alias du='du -h --max-depth=1 | sort -h'

## alias for commands that do not require correction, but require confirmation
alias mv='nocorrect mv -i'      # renaming-moving with confirmation
alias cp='nocorrect cp -ri'     # recursive copy with confirmation
alias rm='nocorrect rm -i'      # confirmation deletion
alias rmf='nocorrect rm -f'     # forced removal
alias rmrf='nocorrect rm -rf'   # forced recursive delete
alias mkdir='nocorrect mkdir'   # creating directories without correction

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Path to  HISTFILE
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTSIZE=5000
DIRSTACKSIZE=20

# Option history
setopt AUTO_CD                # automatically cd to a directory if not cmd
setopt AUTO_PUSHD             # automatically pushd directories on dirstack
setopt APPEND_HISTORY         # history on
setopt SHARE_HISTORY          # share history in all console
setopt HIST_REDUCE_BLANKS     # Delete blank lines from a history file
setopt HIST_IGNORE_ALL_DUPS   # Delete duplicate commands
setopt HIST_IGNORE_SPACE      # Delete lines starting with a space
setopt HIST_FIND_NO_DUPS      # backwards search produces diff result eachtime
setopt HIST_EXPIRE_DUPS_FIRST # replace uniq element
setopt HIST_NO_STORE          # don't store history related functions
setopt INC_APPEND_HISTORY     # incrementally add items to HISTFILE
setopt EXTENDED_HISTORY       # save timestamps in history
setopt CORRECT_ALL            # correct all bug
setopt PUSHD_IGNORE_DUPS      # don't push dups on stack
setopt LIST_PACKED            # variable col widths (takes up less space)
setopt COMPLETEALIASES
setopt AUTO_MENU
setopt MENUCOMPLETE
setopt EXTENDEDGLOB NOMATCH NOTIFY

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

# Disabling support for the old compctl configuration system
zstyle ':completion:*' use-compctl false
#ZSH tab select autocomplete path
zstyle ':completion:*' menu select=1 interactive        #Tab menu options
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.oh-my-zsh/cache
zstyle ':completion:*' rehash true
zstyle ':completion::complete:*' use-cache 1
#zstyle ':completion:*' group-name '' #files first
zstyle ':completion:*' file-sort name
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

# Key bindings
bindkey -e
bindkey '^[[A'  history-substring-search-up                # History up
bindkey '^[[B'  history-substring-search-down              # History down
#bindkey '^r'    history-incremental-search-backward        # History search
bindkey '^[[H'  beginning-of-line                          # Home key
bindkey '^[[F'  end-of-line                                # End key
bindkey '^[[5~' up-line-or-history                         # Page up key
bindkey '^[[6~' down-line-or-history                       # Page down key
bindkey '^[[2~' overwrite-mode                             # Insert key
bindkey '^[[3~' delete-char                                # Delete key
bindkey '^[[C'  forward-char                               # Right key
bindkey '^[[D'  backward-char                              # Left key

# Navigate words with ctrl+arrow keys
bindkey '^[Oc'    forward-word                             #
bindkey '^[Od'    backward-word                            # 
bindkey '^[[1;5D' backward-word                            # ctrl+left
bindkey '^[[1;5C' forward-word                             # ctrl+right
bindkey '^H'      backward-kill-word                       # delete previous word with ctrl+backspace
bindkey "\e[3;6~" backward-kill-line                       # ctrl+shift+delete
bindkey "\e[3@"   backward-kill-line                       # ctrl+shift+delete
bindkey '^z'      push-input                               # defer current command ctrl+z
bindkey '^['      push-line-or-edit                        # clear line esc
bindkey '^\t\t'   push-line-or-edit                        # clear line tab+tab
bindkey ' '       magic-space                              # also do history expansion on space
bindkey '^I'      complete-word                            # complete on tab, leave expansion to _expand 

# dircycle hotkey
bindkey '\e[1;6D' insert-cycledleft                        # ctrl+shiift+left
bindkey '\e[1;6C' insert-cycledright                       # ctrl+shiift+right
bindkey '^[[1;6D' insert-cycledleft                        # ctrl+shiift+left
bindkey '^[[1;6C' insert-cycledright                       # ctrl+shiift+right


# escaping special characters in url, e.g. &,?, ~ and so on
autoload -U url-quote-magic
zle -N self-insert url-quote-magic



# Execute code in the background to not affect the current session
{
  # Compile zcompdump, if modified, to increase startup speed.
  zcompdump="${ZDOTDIR:-$HOME}/.zcompdump"
  if [[ -s "$zcompdump" && (! -s "${zcompdump}.zwc" || "$zcompdump" -nt "${zcompdump}.zwc") ]]; then
    zcompile "$zcompdump"
  fi
} &!

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

# locate directories (if you use locate):
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


# Zsh color partial tab completions
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=("expand-or-complete")
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==34=34}:${(s.:.)LS_COLORS}")';
ZSH_HIGHLIGHT_HIGHLIGHTERS+=brackets
# List files in zsh with <TAB>
# Usage:
#   In the middle of the command line:
#     (command being typed)<TAB>(resume typing)
#
#   At the beginning of the command line:
#     <SPACE><TAB>
#     <SPACE><SPACE><TAB>
#
# Notes:
#   This does not affect other completions
#   If you want 'cd ' or './' to be prepended, write in your .zshrc 'export TAB_LIST_FILES_PREFIX'
#   I recommend to complement this with push-line-or edit (bindkey '^q' push-line-or-edit)
function tab_list_files
{
  if [[ $#BUFFER == 0 ]]; then
    BUFFER="ls " 
    CURSOR=3
    zle list-choices
    zle backward-kill-word
  elif [[ $BUFFER =~ ^[[:space:]][[:space:]].*$ ]]; then
    BUFFER="./"
    CURSOR=2
    zle list-choices
    [ -z ${TAB_LIST_FILES_PREFIX+x} ] && BUFFER="  " CURSOR=2
  elif [[ $BUFFER =~ ^[[:space:]]*$ ]]; then
    BUFFER="cd "
    CURSOR=3
    zle list-expand
    [ -z ${TAB_LIST_FILES_PREFIX+x} ] && BUFFER=" " CURSOR=1
  else
    BUFFER_=$BUFFER
    CURSOR_=$CURSOR
    zle expand-or-complete || zle expand-or-complete || {
      BUFFER="ls "
      CURSOR=3
      zle list-choices
      BUFFER=$BUFFER_
      CURSOR=$CURSOR_
    }
  fi
}
zle -N tab_list_files
bindkey '^I' tab_list_files

# uncomment the following line to prefix 'cd ' and './' 
# when listing dirs and executables respectively
export TAB_LIST_FILES_PREFIX

# these two lines are usually included by oh-my-zsh, but just in case
#autoload -Uz compinit
#compinit

# uncomment the following line to complement tab_list_files with ^q
#bindkey '^q' push-line-or-edit

## fzf functions
nif() {
    local packages
    packages=$(all-the-package-names | fzf -m) &&
    echo "$packages" &&
    npm i $(echo $packages)
}

nidf() {
    local packages
    packages=$(all-the-package-names | fzf -m) &&
    echo "$packages" &&
    npm i $(echo $packages) --save-dev
}

nigf() {
    local packages
    packages=$(all-the-package-names | fzf -m) &&
    echo "$packages" &&
    npm i $(echo $packages) --global
}

nuf() {
    local packages
    packages=$(exa node_modules | fzf -m) &&
    echo "$packages" &&
    npm uninstall $(echo $packages)
}

nugf() {
    local packages
    packages=$(exa $HOME/.nvm/versions/node/$NODE_DIR/lib/node_modules/ | fzf -m) &&
    echo "$packages" &&
    npm uninstall $(echo $packages)
}

yaf() {
    local packages
    packages=$(all-the-package-names | fzf -m) &&
    echo "$packages" &&
    yarn add $(echo $packages)
}

yadf() {
    local packages
    packages=$(all-the-package-names | fzf -m) &&
    echo "$packages" &&
    yarn add $(echo $packages) --dev
}

yagf() {
    local packages
    packages=$(all-the-package-names | fzf -m) &&
    echo "$packages" &&
    yarn global add $(echo $packages)
}

yrf() {
    local packages
    packages=$(exa node_modules | fzf -m) &&
    echo "$packages" &&
    yarn remove $(echo $packages)
}

yrgf() {
    local packages
    packages=$(exa $HOME/.nvm/versions/node/$NODE_DIR/lib/node_modules/ | fzf -m) &&
    echo "$packages" &&
    yarn remove $(echo $packages)
}

brf() {
  local branches branch
  branches=$(git branch --all | rg -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

killf() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

# CANIUSE
[ -f /home/bohdan/.config/cani/completions/_cani.zsh ] && source /home/bohdan/.config/cani/completions/_cani.zsh

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
  ZSH_THEME="powerlevel10k/powerlevel10k"


# powerlevel10k indent
ZLE_RPROMPT_INDENT=0
POWERLEVEL9K_LEGACY_ICON_SPACING=true


# Hide user@hostname
# prompt_context () { }

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
 CASE_SENSITIVE="false"

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#
# defaults
plugins=(
    archlinux 
    git
    npm 
    npx 
    yarn 
    docker 
    firewalld 
    nmap 
    zsh-autosuggestions 
    zsh-completions 
    history-substring-search 
    fzf 
    dircycle 
    command-not-found 
    common-aliases 
    you-should-use 
    colored-man-pages 
    sudo 
    zsh-256color 
    fast-syntax-highlighting
  )
#
source $ZSH/oh-my-zsh.sh
#
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
 export LANG=en_US.UTF-8
# export LANG=ru_RU.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# export EDITOR="/bin/nano"
export EDITOR="/opt/sublime_text/sublime_text"

# Setting a decimal point instead of a semicolon (required for some counting programs)
export LC_NUMERIC="POSIX"

# escaping special characters in url, e.g. &,?, ~ and so on
autoload -U url-quote-magic
zle -N self-insert url-quote-magic


### system programs
source ~/.config/broot/launcher/bash/br

### settings
source ~/.zsh/settings/preinstall.zsh
source ~/.zsh/settings/paste.zsh
source ~/.zsh/settings/node.zsh
source ~/.zsh/settings/fzf.zsh
source ~/.zsh/settings/alias.zsh
source ~/.zsh/settings/history_completion.zsh
source ~/.zsh/settings/keybindings.zsh
source ~/.zsh/settings/zcompdump.zsh

### function
source ~/.zsh/function/system.zsh
source ~/.zsh/function/pacman.zsh
source ~/.zsh/function/search.zsh
source ~/.zsh/function/archive.zsh

source ~/.zsh/function/git.zsh
source ~/.zsh/function/npm.zsh
source ~/.zsh/function/yarn.zsh
source ~/.zsh/function/download_site.zsh
source ~/.zsh/function/work.zsh


# zoxide
eval "$(zoxide init zsh)"


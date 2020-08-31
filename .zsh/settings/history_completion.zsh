# Option history
## Path to  HISTFILE
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTSIZE=5000
DIRSTACKSIZE=20



#setopt APPEND_HISTORY            # history on
setopt AUTO_CD                   # automatically cd to a directory if not cmd
setopt AUTO_MENU
setopt AUTO_PUSHD                # automatically pushd directories on dirstack
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt COMPLETEALIASES
unsetopt CORRECT_ALL               # correct all bug
setopt EXTENDEDGLOB NOMATCH NOTIFY
unsetopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_NO_STORE             # don't store history related functions
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt LIST_PACKED               # variable col widths (takes up less space)
setopt MENU_COMPLETE
setopt nocheckjobs               # Don't warn about running processes when exiting
setopt PUSHD_IGNORE_DUPS         # don't push dups on stack
setopt SHARE_HISTORY             # share history between all console
  


# Disabling support for the old compctl configuration system
zstyle ':completion:*' use-compctl false
#ZSH tab select autocomplete path
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' menu select=1 interactive                # Tab menu options
zstyle ':completion:*' rehash true                              # automatically find new executables in path
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' cache-path ~/.oh-my-zsh/cache
zstyle ':completion:*' file-sort name
# zstyle ':completion:*' group-name '' #files first
# zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-cache on
zstyle ':completion::complete:*' use-cache 1



ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(buffer-empty bracketed-paste accept-line push-line-or-edit)
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_HIGHLIGHT_MAXLENGTH=300

# Zsh color partial tab completions
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==34=34}:${(s.:.)LS_COLORS}")';
ZSH_HIGHLIGHT_HIGHLIGHTERS+=brackets
 

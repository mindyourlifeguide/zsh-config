# fzf-settings
## Install all-the-package-names for fzf
if [[ ! -d $HOME/.nvm/versions/node/$NODE_DIR/lib/node_modules/all-the-package-names ]]; then
   sudo npm -g i all-the-package-names
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_PREVIEW_COMMAND="bat --style=numbers,changes --wrap never --color always {} || bat {} || tree -C {}"

export FZF_DEFAULT_COMMAND="
--color=always {}) || echo {}
--follow
--hidden
--layout reverse
--no-ignore-vcs
--preview ([[ -d {} ]] && tree -C {}) || ([[ -f {} ]] && bat 
--style=full 
--ansi
"

export FZF_DEFAULT_OPTS="
--height=100%
--layout reverse
"

export FZF_CTRL_T_OPTS="
--bind 'f2:toggle-preview'
--exit-0
--height=100%
--multi
--preview '($FZF_PREVIEW_COMMAND) 2> /dev/null'
--preview-window=right:60%:wrap
--select-1
--sort
"
export FZF_CTRL_R_OPTS="
--exact
--height=100%
--layout reverse
--sort
"
export FZF_ALT_C_OPTS="
--bind 'f2:toggle-preview'
--height=100%
--preview 'tree -C {} | head -200'
--sort
" 

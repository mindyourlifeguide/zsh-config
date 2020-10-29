# VOLTA
if [[ `whoami` != 'root' ]]; then (
    # Install volta if it’s not present
    if [[ ! -f ~/.volta/bin/volta ]]; then
      sh -c "$(curl https://get.volta.sh | bash)"
      volta install node
    fi
      export VOLTA_HOME="~/.volta"
      export PATH="$VOLTA_HOME/bin:$PATH" 

    # CANIUSE
    [ -f ~/.config/cani/completions/_cani.zsh ] && source ~/.config/cani/completions/_cani.zsh

    ## Install all-the-package-names for fzf
    if [[ ! -d ~/.volta/tools/image/packages/all-the-package-names ]]; then
       sudo volta install all-the-package-names
    fi
  )
fi



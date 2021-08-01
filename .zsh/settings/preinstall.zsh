# Install oh-my-zsh if it’s not present
if [[ ! -d ~/.oh-my-zsh ]]; then
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install powerlevel10k if it’s not present
if [[ ! -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]]; then
  sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
fi
## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Install fast-syntax-highlighting if it’s not present
if [[ ! -d ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting ]]; then
  sudo git clone https://github.com/zdharma/fast-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
fi

# Install zsh-autosuggestions if it’s not present
if [[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]]; then
  sudo git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

# Install zsh-completions if it’s not present
if [[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-completions ]]; then
  sudo git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
fi

# Install zsh-async if it’s not present
# if [[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-async ]]; then
#   sudo git clone https://github.com/mafredri/zsh-async.git ~/.oh-my-zsh/custom/plugins/zsh-async
# fi
# source ~/.oh-my-zsh/custom/plugins/zsh-async/async.zsh

# Install zsh-autopair if it’s not present
if [[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autopair ]]; then
  sudo git clone https://github.com/hlissner/zsh-autopair ~/.oh-my-zsh/custom/plugins/zsh-autopair
fi
source ~/.oh-my-zsh/custom/plugins/zsh-autopair/autopair.zsh
autopair-init

# Install you-should-use if it’s not present
if [[ ! -d ~/.oh-my-zsh/custom/plugins/you-should-use ]]; then
  sudo git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ~/.oh-my-zsh/custom/plugins/you-should-use
fi

# Install zsh-256color if it’s not present
if [[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-256color ]]; then
  sudo git clone https://github.com/chrissicool/zsh-256color.git ~/.oh-my-zsh/custom/plugins/zsh-256color
fi


# Install wcwidth-icons if it’s not present
## Support fonts with double-width icons
## https://github.com/powerman/wcwidth-icons
# if [[ ! -f /usr/lib/libwcwidth-icons.so ]]; then
#   sudo git clone https://github.com/powerman/wcwidth-icons.git /tmp/wcwidth-icons
#   cd /tmp/wcwidth-icons
#   sudo make install
#   cd ..
#   sudo rm -rf wcwidth-icons
# fi
# export LD_PRELOAD="/usr/lib/libwcwidth-icons.so"

# Install cani if it’s not present
# if [[ ! -d ~/.config/cani ]]; then
#    sudo git clone https://github.com/SidOfc/cani.git  /tmp/cani
#     cd /tmp/cani
#     gem install cani
#     cd ..
#     sudo rm -rf cani
# fi

# Install command-not-found if it’s not present
source /usr/share/doc/pkgfile/command-not-found.zsh

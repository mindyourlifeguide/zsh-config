# VPN + Remmina / xfreerdp
# export REMMINA=`cat $HOME/.zsh/remmina_cli`
# on() {
#   sudo wg-quick up client
#   nohup prime remmina -c $REMMINA >/dev/null 2>&1 &!
# }
# off() {
#   killall remmina
#   sudo wg-quick down client
# }

on() {
  sudo wg-quick up client
  ~/.zsh/work.sh
}

off() {
  killall xfreerdp
  sudo wg-quick down client
} 

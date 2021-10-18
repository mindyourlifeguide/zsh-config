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
  # sudo systemctl restart stubby.service dnsmasq.service 
  ~/.zsh/work.sh
}



off() {
  sudo wg-quick down client
  # sudo systemctl restart stubby.service dnsmasq.service 
  killall xfreerdp
} 



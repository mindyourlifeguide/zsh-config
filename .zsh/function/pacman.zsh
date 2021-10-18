#Pacman (yay) & system function
add() {
  yay -Slq | fzf -m  --preview 'yay -Si {1}' | xargs -tro yay -S
}
 
remove() {
  yay -Qq | fzf -m --preview 'yay -Si {1}' | xargs -tro yay -Rsn
}

pkg() {
  yay -Qq | fzf --preview 'yay -Qil {}' --bind 'enter:execute(yay -Qil {} | less)'
}

clean() {
  # yay -Rsn $(paru -Qdtq)
  yay -Qdtq | yay -Rsn -
  yay -Sc
} 

update() {
 yay
}



# add() {
#   pikaur -Sslq | fzf -m  --reverse --preview 'pikaur -Si {1}' | xargs -ro pikaur -S
# }

# remove() {
#   pikaur -Qqe | fzf -m  --reverse --preview 'pikaur -Si {1}' | xargs -ro pikaur -R 
# }




# add() {
#   paru -Slq | fzf -m  --preview 'paru -Si {1}' | xargs -tro paru -S
# }

# remove() {
#   paru -Qq | fzf -m --preview 'paru -Si {1}' | xargs -tro paru -Rsn
# }

# pkg() {
#   paru -Qq | fzf --preview 'paru -Qil {}' --bind 'enter:execute(paru -Qil {} | less)'
# }

# clean() {
#   paru -Qdtq | paru -Rsn -
#   paru -Sc
# } 

# update() {
#   paru
# }

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

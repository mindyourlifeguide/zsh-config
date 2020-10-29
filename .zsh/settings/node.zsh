# # Path to Node
# export NODE_PATH="$HOME/.nvm/versions/node/$NODE/bin/node"
# NODE_DIR=`node -v`

# # Path to Yarn
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# # Path to NVM
# export NVM_DIR="$HOME/.nvm"
# # Async load NVM
# function load_nvm() {
#     [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
#     [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
# }
# #CAUTION
# #This is a command for managing the GLOBAL state of the node, which gives rights to overwrite in the system partition.
# #USE WITH CAUTION - a complete system CRASH is possible - make backups.
# #To work with nvm, local switching in projects is enough.
# #WARNING
# # n=$(which node);n=${n%/bin/node}; sudo chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local

# # Initialize worker
# async_start_worker nvm_worker -n
# async_register_callback nvm_worker load_nvm
# async_job nvm_worker sleep 0.1

# Install volta if it’s not present
if [[ ! -f ~/.volta/bin/volta ]]; then
  sh -c "$(curl https://get.volta.sh | bash)"
  export VOLTA_HOME="$HOME/.volta"
  export PATH="$VOLTA_HOME/bin:$PATH"
  volta install node
fi

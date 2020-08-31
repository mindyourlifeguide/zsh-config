### npm
naf() {
    local packages
    packages=$(all-the-package-names | fzf -m) &&
    echo "$packages" &&
    npm i $(echo $packages)
}

nadf() {
    local packages
    packages=$(all-the-package-names | fzf -m) &&
    echo "$packages" &&
    npm i $(echo $packages) --save-dev
}

nagf() {
    local packages
    packages=$(all-the-package-names | fzf -m) &&
    echo "$packages" &&
    npm i $(echo $packages) --global
}

nrf() {
    local packages
    packages=$(exa node_modules | fzf -m) &&
    echo "$packages" &&
    npm uninstall $(echo $packages)
}

nrgf() {
    NODE_DIR=`node -v`
    local packages
    packages=$(exa $HOME/.nvm/versions/node/$NODE_DIR/lib/node_modules/ | fzf -m) &&
    echo "$packages" &&
    npm uninstall $(echo $packages)
}
 

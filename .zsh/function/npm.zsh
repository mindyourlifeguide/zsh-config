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

nrf() {
    local packages
    packages=$(exa node_modules | fzf -m) &&
    echo "$packages" &&
    npm uninstall $(echo $packages)
}
 

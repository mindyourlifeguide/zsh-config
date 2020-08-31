### yarn
yaf() {
    local packages
    packages=$(all-the-package-names | fzf -m) &&
    echo "$packages" &&
    yarn add $(echo $packages)
}

yadf() {
    local packages
    packages=$(all-the-package-names | fzf -m) &&
    echo "$packages" &&
    yarn add $(echo $packages) --dev
}

yagf() {
    local packages
    packages=$(all-the-package-names | fzf -m) &&
    echo "$packages" &&
    yarn global add $(echo $packages)
}

yrf() {
    local packages
    packages=$(exa node_modules | fzf -m) &&
    echo "$packages" &&
    yarn remove $(echo $packages)
}

yrgf() {
    NODE_DIR=`node -v`
    local packages
    packages=$(exa $HOME/.nvm/versions/node/$NODE_DIR/lib/node_modules/ | fzf -m) &&
    echo "$packages" &&
    yarn remove $(echo $packages)
}

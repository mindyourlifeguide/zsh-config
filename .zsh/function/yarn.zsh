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

yrf() {
    local packages
    packages=$(exa node_modules | fzf -m) &&
    echo "$packages" &&
    yarn remove $(echo $packages)
}

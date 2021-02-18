# **OhMyZsh + fzf + ripgrep + bat + caniuse = ❤️**

I am using Arch Kde. Do the adaptation of the solution for yourself according to your system, as some steps may differ from mine in places.

This is my personal config, which I am constantly improving. It is based on [OhMyZsh](https://ohmyz.sh/), a [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme.

Of the interesting things I still use:

 - [fzf](https://github.com/junegunn/fzf) - command-line fuzzy finder - for inaccurate quick search;
 - [rg](https://github.com/BurntSushi/ripgrep) - instead of find for faster search and preview in the terminal;
 - [locate](https://wiki.archlinux.org/index.php/Mlocate) - to search the system using the preliminary cache file;
 - [zsh-autopair](https://github.com/hlissner/zsh-autopair) - puts double quotes;
 - [cani](https://github.com/SidOfc/cani) - caniuse in the terminal;
 - [all-the-package-names](https://github.com/nice-registry/all-the-package-names) - for installing packages through fzf;

 - [exa](https://github.com/ogham/exa) - instead of ls for colorful output;
 - [bat](https://github.com/sharkdp/bat) - instead of cat for colorful output;

There are [dircycle](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dircycle), [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) and some other things for navigation inside the terminal.
The history of commands and search on it using fzf is also used.

There is also a solution to the compinit and compdef problem. These are functions that create / define entries in the local completion cache (~ / .zcompdump-machinename file that you might notice). 
There are several hacks floating around GitHub, HackerNews and various forums that try to fix this (check only once a day, check only new shell entries, etc.).
I use recompilation when modifying. I have not noticed any special bugs and inconveniences.

The solution to the problem of slow paste paste-init / paste-finish using [bracketed-paste-magic](https://github.com/zsh-users/zsh/blob/master/Functions/Zle/bracketed-paste-magic) is also used.

 There is also escaping special characters in url, e.g. `&,?, ~` and so on.


### **Feature Overview**
##### Tab | autocomplete + select with arrows

![autocomplete + select with arrows](https://i.imgur.com/68G5JGX.png)

##### ctrl+r | search command history

![search command history](https://i.imgur.com/6WiBUKX.png)

##### ctrl+t | search files with preview (F2)

![search files with preview](https://i.imgur.com/auamEYy.png)

##### alt+c | search directories with preview (F2)

![search directories with preview](https://i.imgur.com/MaujSam.png)

##### yaf/naf | yarn/npm add package

![yarn/npm add package](https://i.imgur.com/y3q687M.png)

##### yrf/nrf | yarn/npm remove package

![yarn/npm remove package](https://i.imgur.com/stdDK6V.png)

##### brf | choose branch

![choose branch](https://i.imgur.com/Jl4FRun.png)

##### cu | cani use

![cani use](https://i.imgur.com/PgoGQ70.png)

![cani use](https://i.imgur.com/BGfsl7T.png)

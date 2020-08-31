# Key bindings
bindkey -e
bindkey '^[[A'  history-substring-search-up                # Up key     | History up
bindkey '^[[B'  history-substring-search-down              # Down key   | History down
bindkey '^[[C'  forward-char                               # Right key
bindkey '^[[D'  backward-char                              # Left key
#bindkey '^r'    history-incremental-search-backward        #ctrl+r      | History search
bindkey '^[[H'  beginning-of-line                          # Home key
bindkey '^[[F'  end-of-line                                # End key
bindkey '^[[5~' up-line-or-history                         # Page up key
bindkey '^[[6~' down-line-or-history                       # Page down key
bindkey '^[[2~' overwrite-mode                             # Insert key
bindkey '^[[3~' delete-char                                # Delete key

# Navigate words with ctrl+arrow keys
bindkey '^[Od'    backward-word                            # ctrl+left         | previous word
bindkey '^[Oc'    forward-word                             # ctrl+right        | next word
bindkey '^[[1;5D' backward-word                            # ctrl+left         | previous word
bindkey '^[[1;5C' forward-word                             # ctrl+right        | next word
bindkey '^H'      backward-kill-word                       # ctrl+backspace    | delete previous word with
bindkey "\E[3;6~" backward-kill-line                       # ctrl+shift+delete | clear line
bindkey "\E[3@"   backward-kill-line                       # ctrl+shift+delete | clear line
bindkey '^z'      push-input                               # ctrl+z            | defer current command
bindkey '^['      kill-whole-line                          # esc               | clear line
bindkey '^\t\t'   kill-whole-line                          # tab+tab           | clear line
bindkey ' '       magic-space                              # space             | also do history expansion on space
# bindkey '^I'      complete-word                            # tab               | complete on tab, leave expansion to _expand
bindkey '^I'      autosuggest-accept                       # tab               | autosuggest or comlete on tab 

# dircycle hotkey
# bindkey '\E[1;6D' insert-cycledleft                        # ctrl+shiift+left  | dircycle previous dir
# bindkey '\E[1;6C' insert-cycledright                       # ctrl+shiift+right | dircycle next dir
# bindkey '^[[1;6D' insert-cycledleft                        # ctrl+shiift+left  | dircycle previous dir
# bindkey '^[[1;6C' insert-cycledright                       # ctrl+shiift+right | dircycle next dir

# dircycle hotkey
# bindkey '\E[1;6D' dirhistory_zle_dirhistory_back                        # ctrl+shiift+left  | dircycle previous dir
# bindkey '\E[1;6C' dirhistory_zle_dirhistory_future                      # ctrl+shiift+right | dircycle next dir
# bindkey '^[[1;6D' dirhistory_zle_dirhistory_back                        # ctrl+shiift+left  | dircycle previous dir
# bindkey '^[[1;6C' dirhistory_zle_dirhistory_future                      # ctrl+shiift+right | dircycle next dir
 

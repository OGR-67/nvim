# NVIM Configuration

This repo is my nvim config. Basicaly it extends kickstart-nvim to suit my needs.

## Feature List 

- [surround](#surrounds)
- [multiple cursors](#multiple-cursors)

### Surround

[back to feature list](#feature-list)

```text
    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls
```

### Multiple cursors

[back to feature list](#feature-list)

Allow to have multiple cursors like CTRL-D in VSCODE

- CTRL-N: start select word / select next
- CTRL-P: select previous
- CTRL-X: skip next

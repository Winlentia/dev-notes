# Tmux

## Sessions 

### creating new session 
``` bash
tmux new -s <my-session>
```

### list sessions 
``` shell
tmux ls
```

### attach exist session

``` shell
tmux a -t <my-session>
```

### deattach session 
`CTRL + b + d`

### kill session
``` shell
tmux kill-session -a -t mysession
```

### kill all sessions

``` shell
tmux kill-server
```

## Window 


### create new window 
`CTRL + b + c`

### next window
`CTRL + b + n`

### specific window 
`CTRL + b + 0..9`

### Rename window
`CTRL + b + ,`

### Reorder window, swap window number 2(src) and 1(dst)

``` bash
:swap-window -s 2 -t 1
```

### Move current window to the left by one position

``` bash
:swap-window -t -1
```
## Pane

### Split pane vertically 
`CTRL + b + %`

### Split pane horizontally 
`CTRL + b + "`

### Close pane horizontally 
`CTRL + b + X`


--------

## Fix tmux zsh-highlighting issue for mac

### tmux default TERM is screen：

``` bash
$ env | grep TERM
TERM=screen
```

### You can solve it like this:

``` bash
echo  "export TERM=xterm-256color" >> ~/.zshrc
exec zsh
```


----------------------------------- 
Tmux config
```bsah
set-window-option -g mode-keys vi
bind -T copy-mode-vi v send-keys -X begin-selection
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'

# vim-like pane switching
bind -r ^ last-window
bind -r k select-pane -U
bind -r j select-pane -D
bind -r h select-pane -L
bind -r l select-pane -R

```

#bash #tmux
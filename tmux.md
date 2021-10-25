<h1> Tmux </h1>

<h2> Sessions </h2>

creating new session 
```shell
tmux new -s <my-session>
```

list sessions 
```shell
tmux ls
```

attach exist session

```shell
tmux a -t <my-session>
```

deattach session <br>
<kbd>CTRL</kbd>+<kbd>b</kbd>+<kbd>d</kbd>
<br>


kill session
```shell
tmux kill-session -a -t mysession
```

kill all sessions

```shell
tmux kill-server
```

<h2> Window </h2>

create new window <br>
<kbd>CTRL</kbd>+<kbd>b</kbd>+<kbd>c</kbd>
<br>

next window <br>
<kbd>CTRL</kbd>+<kbd>b</kbd>+<kbd>n</kbd>
<br>

specific window <br>
<kbd>CTRL</kbd>+<kbd>b</kbd>+<kbd>0</kbd>..<kbd>9</kbd>
<br>

Rename window <br>
<kbd>CTRL</kbd>+<kbd>b</kbd>+<kbd>,</kbd>
<br>

Reorder window, swap window number 2(src) and 1(dst)

```bash
:swap-window -s 2 -t 1
```

Move current window to the left by one position

```bash
:swap-window -t -1
```


<h2> Pane </h2>


Split pane vertically <br>
<kbd>CTRL</kbd>+<kbd>b</kbd>+<kbd>%</kbd>
<br>

Split pane horizontally <br>
<kbd>CTRL</kbd>+<kbd>b</kbd>+<kbd>"</kbd>
<br>

Close pane horizontally <br>
<kbd>CTRL</kbd>+<kbd>b</kbd>+<kbd>X</kbd>
<br>

--------

## Fix tmux zsh-highlighting issue for mac

tmux default TERM is screen：

```bash
$ env | grep TERM
TERM=screen
```

You can solve it like this:

```bash
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

# devtools
Standardizing my devtools so I can use them everywhere

alacritty - terminal emulator
tmux - terminal multiplexer
neovim - text editor

```bash
brew install alacritty tmux neovim
```

# Terminal

### alacritty?
Alacritty is available throught the different OS's I use. 

mkdir -p ~/.config/alacritty

Font for alacritty:
```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
```

### tmux

install tmux plugin manager
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

starter ~/.tmux.conf
```
set -g mouse on
set -g default-terminal "tmux-256color"
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
run '~/.tmux/plugins/tpm/tpm'
```
After launching tmux, hit prefix (Ctrl-b) then I (capital i) to install plugins.

tell zsh or bash to start tmux on start

```
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
```


### Why oh-my-zsh

Oh My Zsh is a delightful, open source, community-driven framework for managing your Zsh configuration. It comes bundled with thousands of helpful functions, helpers, plugins, themes, and a few things that make you shout...

find here:
```bash
https://ohmyz.sh/#install
```


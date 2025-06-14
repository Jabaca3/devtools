# devtools
Standardizing my devtools so I can use them everywhere

- alacritty - terminal emulator
- tmux - terminal multiplexer
- neovim - text editor

```bash
brew install alacritty tmux neovim
```

install packer 

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# Terminal

### Alacritty
Alacritty is available throught the different OS's I use. 

mkdir -p ~/.config/alacritty

Font for alacritty:
```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
```

### Tmux

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

commands:
| Action                      | Shortcut                                   | Description                               |
| --------------------------- | ------------------------------------------ | ----------------------------------------- |
| **New window**              | `Ctrl-b c`                                 | Creates a new window                      |
| **Next window**             | `Ctrl-b n`                                 | Move to next window                       |
| **Previous window**         | `Ctrl-b p`                                 | Move to previous window                   |
| **Choose window from list** | `Ctrl-b w`                                 | See and select from a window list         |
| **Switch to window 0–9**    | `Ctrl-b 0`–`Ctrl-b 9`                      | Jump to a specific window                 |
| **Rename current window**   | `Ctrl-b ,`                                 | Rename the window (good for organization) |
| **Close current window**    | Type `exit`, or `Ctrl-d` inside the window |                                           |
| **Vertical splitscreen**    | `Ctrl-b %`                                 |                                           |
| **Jump panel terminal**     | `Ctrl-b <Arrow key>`                       |                                           |





### oh-my-zsh

Oh My Zsh is a delightful, open source, community-driven framework for managing your Zsh configuration. It comes bundled with thousands of helpful functions, helpers, plugins, themes, and a few things that make you shout...

find here:
```bash
https://ohmyz.sh/#install
```


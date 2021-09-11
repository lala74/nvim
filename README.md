# Config for NeoVim

## Steps to install

1. Clone this repo

```Bash
git clone https://github.com/lala74/nvim $HOME/.config/
```

2. Install vim-plug: https://github.com/junegunn/vim-plug

3. Install all extension

```bash
# In your terminal
nvim
# In nvim window
:PlugInstall
```

4. Restart nvim to see the different

## Config coc

1. Install autocompletion

```bash
# In nvim window
:CocInstall coc-clangd
:CocCommand clangd.install
:CocInstall coc-go
```

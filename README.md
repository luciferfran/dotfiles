# dotfiles

Prerequisitos:
- Oh My Zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
- PowerLevel10k
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Utilidades de oh-my-zsh
```console
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```


Instalación:
```console
git clone https://github.com/luciferfran/dotfiles && cd dotfiles && ./install
```

## Elementos del dotfile
*   .gitconfig
*   .bashrc
*   .tmux.conf
*   .p10k.sh
*   .profile
*   .zshrc

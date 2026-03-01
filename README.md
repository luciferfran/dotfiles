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

## Actualizar dotbot
```console
git submodule update --remote dotbot
```

## Cómo actualizar este proyecto y los submódulos

Pasos recomendados para poner todo en la última versión upstream y publicar la referencia del submódulo:

1. Desde la raíz del repositorio principal, asegúrate de estar en `main` y trae cambios remotos:

```bash
git checkout main
git pull --rebase --autostash origin main
```

2. Actualizar los submódulos al último commit remoto (intenta merge automático):

```bash
git submodule update --init --recursive --remote
```

3. Si el paso anterior produce conflictos en un submódulo y quieres forzar la versión upstream (descartando cambios locales), dentro del submódulo `dotbot` ejecuta:

```bash
cd dotbot
git fetch origin
# crear/usar la rama local que rastrea el remoto (por ejemplo `master`)
git checkout -B master origin/master
git reset --hard origin/master
git submodule update --init --recursive
cd ..
```

4. Actualizar la referencia del submódulo en el superproyecto, commitear y pushear:

```bash
git add dotbot
git commit -m "Update submodule dotbot to upstream origin/master"
git push origin main
```

5. Si prefieres conservar cambios locales en el submódulo en lugar de forzar upstream, resuelve los conflictos dentro de `dotbot`, commitea y pushea desde `dotbot` hacia el remote apropiado **antes** de actualizar la referencia en el superproyecto.

Notas importantes:
- El submódulo `dotbot` apunta a: https://github.com/anishathalye/dotbot.git
- En esta actualización se actualizó `dotbot` a `614c9fb` (upstream `origin/master`).
- Forzar (`reset --hard`) descartará cambios no committeados en el submódulo.
- Si tu copia del submódulo apunta a un remoto al que no tienes permisos de push, no intentes pushear cambios en ese submódulo sin antes configurar un fork o cambiar el `remote`.

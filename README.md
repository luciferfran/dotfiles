# dotfiles

Mi configuración personal para el entorno de terminal, optimizada para productividad con **Zsh**, **Oh My Posh**, **Tmux** y **Nano**.

## Prerrequisitos
- **Zsh** y **Oh My Zsh**
- **Oh My Posh** (con tema `craver.omp.json`)
- **NVM** (Node Version Manager)
- **Plugins de Oh My Zsh**:
  - `git`
  - `zsh-syntax-highlighting`
  - `zsh-autosuggestions`

## Instalación rápida
```console
git clone https://github.com/luciferfran/dotfiles && cd dotfiles && ./install
```

## Elementos incluidos
*   `.zshrc`: Configuración principal de la shell con Oh My Posh.
*   `.bash_aliases`: Alias compartidos para Rclone, Docker y navegación (cargados en Zsh y Bash).
*   `.tmux.conf`: Configuración avanzada de Tmux con gestión de sesiones.
*   `.nanorc`: Nano moderno con atajos estándar (Ctrl+S, Ctrl+F) y resaltado de sintaxis.
*   `.gitconfig`: Configuración de Git con alias útiles (`git st`, `git lg`, etc.).
*   `.editorconfig`: Estándares de codificación para consistencia entre proyectos.

## Alias personalizados destacados
- `nubes`: Monta unidades de Rclone.
- `nonubes`: Desmonta unidades de Rclone.
- `docker-on/off`: Gestiona el servicio de Docker.
- `lg`: Log de Git visual y detallado.

## Actualización
Para actualizar los submódulos (como Dotbot):
```bash
git submodule update --init --recursive --remote
```

---
Gestionado con [Dotbot](https://github.com/anishathalye/dotbot).

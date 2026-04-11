# === Alias de Navegación ===
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# === Alias de Git (adicionales a .gitconfig) ===
alias gs='git status'
alias gp='git push'
alias gl='git pull'

# === Comandos rápidos para Rclone ===
alias nubes='/home/francisco/rclone_montar.sh'
alias nonubes='/home/francisco/rclone_desmontar.sh'
alias cuantas='mount | grep rclone | wc -l'

# === Control de Docker ===
alias docker-on='sudo systemctl start docker && echo "Docker encendido"'
alias docker-off='sudo systemctl stop docker && echo "Docker apagado"'

# === Herramientas (si están instaladas) ===
# alias cat='batcat'

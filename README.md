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
*   `bin/sync-mcp`: Propaga `~/.agents/mcp.json` a las configuraciones MCP de Claude Code, Codex, opencode y pi.
*   `agents/mcp.json`: Fuente única de servidores MCP (sólo nombres de variables, nunca credenciales).

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

## Agentes de IA

Claude Code, Codex, opencode y pi comparten dos cosas a través de `~/.agents`:

*   **Skills**: viven en `~/.agents/skills/`, que Codex, opencode y pi leen tal cual;
    `~/.claude/skills` es un enlace simbólico a ese mismo directorio.
*   **Servidores MCP**: aquí no vale enlazar, porque cada cliente usa un formato distinto
    (JSON, TOML y el esquema propio de opencode). La fuente es `~/.agents/mcp.json` y
    `sync-mcp` la traduce a cada archivo:

    ```console
    sync-mcp              # muestra el diff, no escribe
    sync-mcp --apply      # escribe, dejando una copia .bak-<fecha> de cada archivo
    ```

    Sólo toca la sección MCP: lo que cada cliente tenga de más se respeta (a menos que
    se pase `--prune`), así que los servidores con credenciales literales —como Grafana—
    se quedan donde están y nunca entran en este repositorio.

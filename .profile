# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# ssh-agent
#eval `keychain --eval --agents ssh id_ed25519`
eval `ssh-agent`

# creamos la variable de entorno con el nombre del socket Unix
# (en este caso, dentro de ~/.ssh/
export SSH_AUTH_SOCK=~/.ssh/ssh-agent.$HOSTNAME.sock

# Verificamos si está corriendo el daemon ssh-agent
ssh-add -l 2>/dev/null >/dev/null

# si estaba corriendo, ssh-add lo usará y retornará 1 (no hay claves)
# si no estaba corriendo, su retorno será 2, por lo que
# procedemos a ejecutar el ssh-agent,
# y le decimos dónde crear el socket Unix (SSH_AUTH_SOCK):

if [ $? -ge 2 ]; then
  ssh-agent -a "$SSH_AUTH_SOCK" >/dev/null
fi
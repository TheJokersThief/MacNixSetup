function ports(){
    sudo lsof -iTCP -sTCP:LISTEN -iUDP -n -P
}

function reload_nix(){
    sudo -i sh -c 'launchctl load /Library/LaunchDaemons/org.nixos.nix-daemon.plist'
}

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

source $HOME/.local/bin/env
#
# ~/.bashrc
#

export PATH=$PATH:~/bin

#Pywal Config
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

#Pureline
#To use, copy a config from /usr/share/pureline/configs to ~/.pureline.conf
#then add the following lines to ~/.bashrc:
if [[ -r "/usr/share/pureline/pureline" ]]; then
    source /usr/share/pureline/pureline ~/.pureline.conf
fi

export XDG_CONFIG_HOME="$HOME/.config"
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
export PATH="$NVM_DIR/versions/node/v$(<$NVM_DIR/alias/default)/bin:$PATH"
alias nvm="unalias nvm; [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"; nvm $@"

### Default config causing shell to load slow
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### Alias'
alias vim='nvim'

set -o vi

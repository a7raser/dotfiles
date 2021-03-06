if [[ -r "{XDG_CACHE_HOME:-$HOME/.cache}p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### Sets terminal colorscheme to match background
### Does not work when launched /w tmux
#(cat ~/.cache/wal/sequences &)
#source ~/.cache/wal/colors-tty.sh

export ZSH="/home/a7raser/.oh-my-zsh"
export PATH=$PATH:$HOME/bin:$HOME/.local/bin
export PYTHONPATH=/usr/local/bin/python3

ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fzf configuration
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
export FZF_COMPLETION_OPTS='+c -x'
export FZF_DEFAULT_OPTS='--height 60% --layout reverse --inline-info --color --multi --extended'
fzf_compgen_path() {
fd --no-ignore-vcs --follow --exclude ".git" . "$1"
}
_fzf_compgen_dir() {
fd --type d --no-ignore-vcs --follow --exclude ".git" . "$1"
}

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

export XDG_CONFIG_HOME="$HOME/.config"
export NVM_DIR="$HOME/.nvm"

### Alias'
alias vim='nvim'
alias ytop='ytop -p'
alias ls='exa'
alias l='exa -lahF'

set -o vi
KEYTIMEOUT=1

### LaTeX
PATH=/usr/local/texlive/2019/bin/x86_64-linux:$PATH; export PATH
MANPATH=/usr/local/texlive/2019/texmf-dist/doc/man:$MANPATH; export MANPATH
INFOPATH=/usr/local/texlive/2019/texmf-dist/doc/info:$INFOPATH; export INFOPATH

### NVM Config - Default causes slow shell start
#export XDG_CONFIG_HOME="$HOME/.config"
#export NVM_DIR="$HOME/.nvm"
#export PATH="$NVM_DIR/versions/node/v$(<$NVM_DIR/alias/default)/bin:$PATH"
#alias nvm="unalias nvm; [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"; nvm $@"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"
plugins=(
    ssh-agent
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-autocomplete
)

ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd history completion)

# Fix slowness of pastes with zsh-syntax-highlighting.zsh {{{
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
# }}}

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

mkcd() {
    if [ -n "$1" ]; then
        mkdir "$@" && cd "$_"
    else
        echo "mkcd: missing operand"
    fi
}

alias ls='lsd'
alias lt='ls --tree'
alias lta='lt -A'
alias lat='lta'
alias objdump='objdump -m intel'

if [ -d ~/.rbenv ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

if [ -d ~/.pyenv ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
fi

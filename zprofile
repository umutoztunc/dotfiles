if [ -d ~/.local/bin ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

if [ -f /usr/bin/ruby ]; then
    export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
	export PATH="$PATH:$GEM_HOME/bin"
fi

if [ -d ~/.rbenv ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
fi

if [ -d ~/.pyenv ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
fi

picom -b

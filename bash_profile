# prompt settings
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

# color settings
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# import aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# import bashrc
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Add my custom script directory to path
export PATH="$PATH:$HOME/bin"

# webp converter to PATH
export PATH="$PATH:$HOME/bin/libwebp-1.5.0-mac-arm64/bin"

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
export PATH="$PATH:/Users/julian/bin"

# setting pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"

# MacPorts Installer addition on 2021-12-23_at_21:42:14: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/julian/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/julian/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/julian/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/julian/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# newer bash
export PATH="/opt/bash/bin:$PATH"

# webp converter to PATH
export PATH="$PATH:$HOME/bin/libwebp-1.3.0-mac-arm64/bin"
# source OpenVnmrJ envs
if [ -f ~/.vnmrenvbash ]; then
   . ~/.vnmrenvbash
fi


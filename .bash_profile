# Source aliases
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

# Set terminal prompt
## Activate colors
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced

## Set up git autocompletion
if [ -f ~/bin/git-completion.bash ]; then
  . ~/bin/git-completion.bash
fi

## Get current git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
## Set prompt to username@hostname:$ with colors
export PS1="\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[0;32m\]\$(parse_git_branch)\[\033[00m\]\$ "

# Hide MacOS deprecation warning
export BASH_SILENCE_DEPRECATION_WARNING=1

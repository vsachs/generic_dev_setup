# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/vsachs/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.bashrc

PROMPT="%~| "
# This prints at the right side of the screen on line overflow
RPS1="=&&="

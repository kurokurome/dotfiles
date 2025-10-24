# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mash/.zshrc'

export EDITOR=nvim
export SUDO_EDITOR=nvim
export VISUAL=nvim
export QT_QPA_PLATFORMTHEME=qt5ct

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select 
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# End of lines added by compinstall

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

[[ $- != *i* ]] && return
fastfetch

alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias rg='rg --color=auto'
alias settdp='sudo /usr/local/bin/ryzenadj-12w.sh'
alias setfan='sudo nbfc start && nbfc set -s 100'

# Catppuccin Mocha themed zsh prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' [%F{#f38ba8}%b%f]'
zstyle ':vcs_info:*' enable git

setopt PROMPT_SUBST

PROMPT='%F{#a6e3a1}%n%f %F{#89b4fa}%~%f%F{#f38ba8}${vcs_info_msg_0_}%f
%F{#89dceb}❯%f '

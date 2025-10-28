fastfetch

# ============================================
# PERFORMANCE - Load first
# ============================================
# Skip global compinit for faster startup
skip_global_compinit=1

# ============================================
# HISTORY SETTINGS
# ============================================
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS  # Don't save duplicates
setopt HIST_SAVE_NO_DUPS     # Don't write duplicates
setopt HIST_FIND_NO_DUPS     # Don't show duplicates when searching
setopt SHARE_HISTORY         # Share history across terminals
setopt APPEND_HISTORY        # Append to history file
setopt INC_APPEND_HISTORY    # Write to history immediately

# ============================================
# ZSH OPTIONS
# ============================================
setopt AUTO_CD              # Type directory name to cd
setopt AUTO_PUSHD           # Make cd push old directory onto stack
setopt PUSHD_IGNORE_DUPS    # Don't push duplicates
setopt PUSHD_SILENT         # Don't print directory stack
setopt CORRECT              # Try to correct spelling
setopt COMPLETE_IN_WORD     # Complete from both ends of word
setopt ALWAYS_TO_END        # Move cursor to end after completion

# ============================================
# COLORS & PROMPT
# ============================================
autoload -U colors && colors
autoload -Uz vcs_info
setopt PROMPT_SUBST

# Configure vcs_info with your color palette
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %F{#6fbc8d}[%b]%f%F{#ff6b35}%u%f'
zstyle ':vcs_info:git:*' actionformats ' %F{#6fbc8d}[%b|%a]%f'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:*' enable git

# Main prompt using vcs_info
PROMPT='%F{#ff6b35}%n%f@%F{#4d9dbf}%m%f:%F{#fef5e7}%~%f${vcs_info_msg_0_}
%F{#ff8c5d}❯%f '

# ============================================
# COMPLETIONS
# ============================================
autoload -Uz compinit

# Only check compinit cache once a day for speed
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
    compinit
else
    compinit -C
fi

# Completion styling
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # Case insensitive
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:descriptions' format '%F{#ff6b35}%d%f'
zstyle ':completion:*:warnings' format '%F{#e85d3a}No matches found%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' squeeze-slashes true

# ============================================
# LS COLORS
# ============================================
export LS_COLORS='di=34:ln=35:so=31:pi=33:ex=32:bd=34:cd=34:su=31:sg=31:tw=34:ow=34'
export CLICOLOR=1

# ============================================
# ALIASES
# ============================================
# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# List files
alias ls='ls --color=auto'
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

# Common commands
alias grep='grep --color=auto'
alias c='clear'
alias h='history'
alias mkdir='mkdir -pv'

# Git shortcuts
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline'

# Safety nets
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ============================================
# KEY BINDINGS
# ============================================
bindkey -e  # Emacs style keybindings
bindkey '^[[A' history-search-backward  # Up arrow
bindkey '^[[B' history-search-forward   # Down arrow
bindkey '^[[H' beginning-of-line        # Home
bindkey '^[[F' end-of-line              # End
bindkey '^[[3~' delete-char             # Delete

# ============================================
# PLUGINS (install these for best experience)
# ============================================
# Install plugins:
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# Syntax highlighting
if [[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    
    typeset -A ZSH_HIGHLIGHT_STYLES
    ZSH_HIGHLIGHT_STYLES[command]='fg=#ff6b35,bold'
    ZSH_HIGHLIGHT_STYLES[builtin]='fg=#ff6b35'
    ZSH_HIGHLIGHT_STYLES[alias]='fg=#ff6b35'
    ZSH_HIGHLIGHT_STYLES[function]='fg=#2d5366'
    ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#e85d3a'
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#6fa8bf'
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#6fa8bf'
    ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#4a5c52'
    ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#4a5c52'
    ZSH_HIGHLIGHT_STYLES[path]='fg=#f4e8d0,underline'
    ZSH_HIGHLIGHT_STYLES[globbing]='fg=#ff6b35'
    ZSH_HIGHLIGHT_STYLES[redirection]='fg=#ff6b35'
fi

# Autosuggestions
if [[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#3d5f72'
    ZSH_AUTOSUGGEST_STRATEGY=(history completion)
fi

# ============================================
# 
# ============================================
export EDITOR="nvim"
export VISUAL="nvim"

alias settdp="sudo /usr/local/bin/ryzenadj-12w.sh"

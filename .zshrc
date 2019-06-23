# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/konigby/.config/oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export TERM=tmux-256color
# export POWERLEVEL9K_IGNORE_TERM_COLORS=true
POWERLEVEL9K_MODE="nerdfont-complete"
# Powerline level 9k setup
MULTILINE_NEWLINE_PROMPT_PREFIX=""
# POWERLEVEL9K_CUSTOM_SPOTIFY_NOW="spotify_now_playing"
# POWERLEVEL9K_CUSTOM_SPOTIFY_NOW_BACKGROUND="008"
# POWERLEVEL9K_CUSTOM_SPOTIFY_NOW_FOREGROUND="green"

# POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
# POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="blue"
# POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="yellow"

# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_DIR_HOME_BACKGROUND="067"
POWERLEVEL9K_DIR_HOME_FOREGROUND="253"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="067"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="253"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="067"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="253"
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_TIME_ICON=''

# POWERLEVEL9K_PYENV_BACKGROUND="006"
# POWERLEVEL9K_PYENV_FOREGROUND="015"
# POWERLEVEL9K_VIRTUALENV_BACKGROUND="006"
# POWERLEVEL9K_VIRTUALENV_FOREGROUND="015"

# POWERLEVEL9K_RBENV_BACKGROUND="204"
# POWERLEVEL9K_RBENV_FOREGROUND="015"

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='144'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='144'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='144'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='016'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='016'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='016'
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=''
# POWERLEVEL9K_VCS_GIT_ICON=''
# POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

POWERLEVEL9K_CUSTOM_GOLANG="echo -n '\ue626' Golang"
POWERLEVEL9K_CUSTOM_GOLANG_BACKGROUND="186"
POWERLEVEL9K_CUSTOM_GOLANG_FOREGROUND="045"

POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='197'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='white'

POWERLEVEL9K_BATTERY_LOW_BACKGROUND="008"
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND="008"
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND="008"
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND="008"
# POWERLEVEL9K_BATTERY_BACKGROUND="008"
# POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='yellow'
# POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='green'
# POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='green'
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_BATTERY_VERBOSE=true

# POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="008"
# POWERLEVEL9K_LOAD_WARNING_BACKGROUND="008"
# POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="008"
# POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="green"
# POWERLEVEL9K_LOAD_WARNING_FOREGROUND="green"
# POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="green"

# POWERLEVEL9K_RAM_ELEMENTS=(ram_free)
# POWERLEVEL9K_RAM_BACKGROUND="008"
# POWERLEVEL9K_RAM_FOREGROUND="green"
# POWERLEVEL9K_RAM_ICON=" "
#
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uE868  %d.%m.%y}"

POWERLEVEL9K_PYTHON_ICON='\ue63c'

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='$ '
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B8'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0BA\u2588'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time status background_jobs dir rbenv pyenv vcs go_version)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

~/.vim/plugged/gruvbox/gruvbox_256palette.sh &
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias e='exit'
alias vc1='nvim ~/.zshrc && source ~/.zshrc'
alias unifi='sudo systemctl start mongodb && sudo systemctl start unifi'
alias unistart='sudo systemctl start mongodb && sudo systemctl start unifi'
alias unistop='sudo systemctl stop unifi && sudo systemctl stop mongodb '
alias psa='ps -aef |grep '
alias gs='git status'

colors2() {
    for i in {0..255}; do echo -e "\e[38;05;${i}m${i}"; done | column -c 80 -s ' '; echo -e "\e[m"
}

# Set up the prompt

# autoload -Uz promptinit
# promptinit
# prompt adam1

setopt sharehistory appendhistory incappendhistory histignoredups histignorespace

bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

# Keep 20000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=20000
SAVEHIST=20000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# source ~/.shell_prompt.sh
# source ~/.bash_aliases
# export PATH=$PATH:~/bin:~/.local/bin

# [ -f ~/.config/fzf/zsh.config ] && source ~/.config/fzf/zsh.config

# Use vim to man
export MANPAGER="/bin/sh -c \"col -b | nvim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""

# Some aliases
alias e=exit
alias h='history 1'

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

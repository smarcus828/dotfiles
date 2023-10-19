# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#export ZSH="~/.oh-my-zsh"
### for MACOS ###
#export ZSH="/Users/smarcus/.oh-my-zsh"
### for Linux ###
#export ZSH="/home/smarcus/.oh-my-zsh"

#ZZZ=$(uname -s)
#echo ${ZZZ}
#if [[ "${ZZZ}" == "Darwin" ]]; then
if [[ "$(uname -s)" == "Darwin" ]]; then
export ZSH="/Users/smarcus/.oh-my-zsh"
else
export ZSH="/home/smarcus/.oh-my-zsh"
fi


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="af-magic"
#ZSH_THEME="gallois"
ZSH_THEME="steven"

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
# 
#### SMARCUS Additions  ######
#NORMAL="\e[1;49;0m"
NORMAL='\e[0m'
#GREEN="\e[1;49;32m"
GREEN='\e[0;32m'
RED="\e[1;49;31m"
#PS1=$'\e[0;31m$ \e[0m'
BLUE="\e[1;49;34m"
#CYAN="\e[1;49;36m"
CYAN='\e[0;36m'
PURPLE="\e[1;49;35m"
BROWN="\e[1;49;33m"
LTGRAY="\e[1;49;37m"
DKGRAY="\e[1;49;30m"
LTBLUE="\e[1;49;34m"
LTGREEN="\e[1;49;32m"
LTRED="\e[1;49;31m"
LTPURPLE="\e[1;49;35m"
YELLOW="\e[1;49;33m"
WHITE="\e[1;49;37m"

alias cda='cd ~/ansible'
alias s='openssl x509 -noout -text -in '
#PS1="%{%F{red}%}%n%{%f%}@%{%F{blue}%}%m %{%F{yellow}%}%~ %{$%f%}%% "
#PS1="${CYAN}\h:${GREEN}\w$ ${NORMAL}"

#PS1="%{%F{014}%}%m:%{%F{010}%~%$%{$ %f%}% "
#
#
#
#
#
#
#
#
#
#
#
#
#
#

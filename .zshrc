# Path to your oh-my-zsh installation.
export ZSH=/Users/nicolasVinson/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

## User configuration
# Local directories
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# Sublime
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin"
# Databases
export PATH="$PATH:/usr/local/mysql/bin:/usr/local/mongodb/bin"
# Python
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.5/bin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

############ CUSTOM SETUP #####################

# Shortcuts
alias nix.count_files="ls | wc -l"

function nix.trim_file_names () {
  for f in *; do mv "$f" "${f:$1}"; done;
}
export -f nix.trim_file_names

# Python Dev
alias pr="pipenv run"

# NPM
alias jspub="npm publish --access=public"

# Define colors
green="\[\033[0;32m\]"
light_green="\[\033[1;32m\]"
blue="\[\033[0;34m\]"
light_blue="\[\033[1;34m\]"
cyan="\[\033[0;36m\]"
light_cyan="\[\033[1;36m\]"
purple="\[\033[0;35m\]"
light_purple="\[\033[1;35m\]"
yellow="\[\033[1;33m\]"
reset="\[\033[0m\]"

# Git bash changes
# Enable tab completion
source ~/git-completion.bash

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# If id command returns zero, you’ve root access.
if [ $(id -u) -eq 0 ];
then # you are root, set red colour prompt
  PS1="\\[$(tput setaf 1)\\]\\u@\\h:\\w #\\[$(tput sgr0)\\]"
else # normal
  # Set prompt to date 24h00
  # user@hostserver: currentdirectory
  export PS1="$purple\d \t\n $cyan\u@\H:$green\$(__git_ps1)$blue \W $ $reset"
fi

# Sublime Text
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin

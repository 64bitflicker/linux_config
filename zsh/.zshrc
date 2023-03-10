# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/lib/ccache/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ISG_WORK=/code/object/LinuxCode/

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="random"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git textmate ruby autojump osx mvn gradle)

# add
echo "R X G ArchLinux" | figlet | boxes -d dog -a c | lolcat

plugins=(
  git pip command-not-found python systemd vim-interaction lighthouse textmate python sudo thefuck man archlinux themes history-substring-search history heroku golang rust tmux jsontools
)
source $HOME/.zsh/laozi.sh
source $ZSH/oh-my-zsh.sh

#################################################################
## zsh plugins manager
#################################################################
source ~/.zsh/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle chrissicool/zsh-256color
antigen bundle hlissner/zsh-autopair

antigen apply

#################################################################
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/autojump/autojump.zsh
export EDITOR='vim'

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

bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

# .zshrc ????????????
#set proxy
# http proxy
#export http_proxy="http://127.0.0.1:8888"
#export https_proxy="http://127.0.0.1:8888"  
# socks5 proxy
#export http_proxy="socks5://127.0.0.1:8888"
#export https_proxy="socks5://127.0.0.1:8888"  
export https_proxy=http://127.0.0.1:8888;
export http_proxy=http://127.0.0.1:8888;
export all_proxy=socks5://127.0.0.1:8888;

# ??????????????????
# http
#  git config --global https.proxy http://127.0.0.1:1080
# https
#  git config --global https.proxy https://127.0.0.1:1080
# ??????socks5????????? ??????ss???ssr 1080???windows???ss?????????????????????,mac??????????????????????????????????????????????????????
#  git config --global http.proxy socks5://127.0.0.1:1080
#  git config --global https.proxy socks5://127.0.0.1:1080

# ??????github.com???????????????????????????????????????
#  git config --global http.https://github.com.proxy socks5://127.0.0.1:1080
#  git config --global https.https://github.com.proxy socks5://127.0.0.1:1080
# ??????github??????
#  git config --global --unset http.https://github.com.proxy
#  git config --global --unset https.https://github.com.proxy

# ??????????????????
#  git config --global --unset http.proxy
#  git config --global --unset https.proxy


alias get_idf='. $HOME/esp/esp-idf/export.sh'
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias le='exa --icons'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=mate   # ????????????????????????????????? html ????????????????????? TextMate ?????????
alias -s rb=mate     # ???????????????????????? ruby ??????????????? TextMate ?????????
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias asciiq='asciiquarium'

alias gccc="ccache gcc"
alias open="xdg-open"
	
# ?????? oh-my-zsh ???????????????????????????
alias gitzsh_down="git config --add oh-my-zsh.hide-dirty 1"
alias gitzsh_up="git config --add oh-my-zsh.hide-dirty 0"

alias gitzsh_alldown="git config --add oh-my-zsh.hide-status 1"
alias gitzsh_allup="git config --add oh-my-zsh.hide-status 0"
alias arch="neofetch"
alias wkbd="sed -r \"s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g\"  | trans -b :zh -"
source <(/usr/bin/starship init zsh --print-full-init)

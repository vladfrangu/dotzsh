# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH

#Exports full range of colors
export TERM="xterm-256color"

blu="$(tput setaf 4)"
norm="$(tput sgr0)"

#Checks if oh-my-zsh is installed
if [ ! -d $HOME/.zsh/.oh-my-zsh ]; then
    printf "${blu}Installing oh-my-zsh...${norm}\n"
    git clone --depth=1 git@github.com:robbyrussell/oh-my-zsh.git $HOME/.zsh/.oh-my-zsh &> /dev/null
    CUSTOM=$HOME/.zsh/.oh-my-zsh/custom
    if [ ! -d $CUSTOM ]; then
        mkdir -p $CUSTOM
    fi
    git clone https://github.com/bhilburn/powerlevel9k.git $CUSTOM/themes/powerlevel9k &> /dev/null
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $CUSTOM/plugins/zsh-syntax-highlighting &> /dev/null
    git clone git://github.com/zsh-users/zsh-autosuggestions $CUSTOM/plugins/zsh-autosuggestions &> /dev/null
    printf "${blu}Done installing oh-my-zsh${norm}\n"
fi

# Path to your oh-my-zsh installation.
export ZSH_HOME=$HOME/.zsh
export ZSH=$ZSH_HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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
ENABLE_CORRECTION="true"

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
plugins=(git sudo rsync zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
#
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#Plugin and theme setup
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator virtualenv ram time)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=("fg=6")
ZSH__AUTOSUGGEST_STRATEGY=match_prev_cmd
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=zsh

#Aliases
alias zshconfig="$EDITOR $ZSH_HOME/zshrc"
alias ohmyzsh="$EDITOR $ZSH"


#.zshrc addons
addons=(.zshaddons)
for addon in ${addons[@]}
do
    ADDON=$HOME/$addon
    if [ -f $ADDON ]; then
        printf "${blu}Loading ZSH addon: $ADDON${norm}\n"
        source $ADDON
    fi
done
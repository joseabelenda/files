# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/joseabelenda/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

source $ZSH/oh-my-zsh.sh
source /Users/joseabelenda/git/zsh-z/zsh-z.plugin.zsh

zstyle ':completion:*' menu select

plugins=(git zsh-z)

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

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_271.jdk/Contents/Home
ANT_HOME=/Users/joseabelenda/apache-ant-1.9.15
ANT_OPTS="-Xmx10240m"
MVN_HOME=$HOME/apache-maven-3.8.1
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$MVN_HOME/bin
export JAVA_HOME ANT_HOME ANT_OPTS PATH MVN_HOME
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

NPM_PACKAGES=/Users/joseabelenda/.npm-packages
PATH=${PATH}:${NPM_PACKAGES}/bin

export GRADLE_OPTS="-Xmx10240m"
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting

### End of Zinit's installer chunk

LS_COLORS=$LS_COLORS:'ow=01;34' ; export LS_COLORS

export GH_HOME=/Users/joseabelenda/git/gh/dist

IJ_CLONE_PATH=/Users/joseabelenda/git/liferay-intellij


export PATH=$PATH:$HOME/Library/PackageManager/bin;
export PATH=$PATH:$GH_HOME;

alias aa='ant_all'
alias afcb='ant format-source-current-branch'
alias aux='ps aux | grep tomcat'

alias b='bundles'
alias bbm='backup_bundle_master'

alias classpath='curl https://raw.githubusercontent.com/jorgediaz-lr/generate-modules-classpath/master/generate_modules_classpath.sh | sh'
alias cdt='cd ~/git/liferay-portal'

alias d='docker'

alias g='git'
alias gck='git checkout'
alias gcm='git commit -m'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gg='git_grep'
alias ggpr='git_get_pr'
alias gl='git log'
alias glo='git log --oneline'
alias gpcb='gpcb'
alias gri='git_rebase_interactive'
alias gs='git status -uno'
alias gspr='git_send_pr'
alias gsu='git status'
alias gsync='gsync'
alias gt="/Users/joseabelenda/git/gh/dist/index.js"
alias gradle=gw
alias gradlew=/usr/local/opt/gradle/bin/gradle
alias grep-file="grep_file"
alias gwc='gw clean'
alias gwcd='gw clean deploy'
alias gwfd='gw forceDeploy'
alias gwd='gw deploy'
alias gwfs='gw formatSource'

alias kt='kill_tomcat'

alias my="docker exec -it mysql mysql -uroot -proot"

alias tomcat='tomcat'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

function ant_all {
    b
    rm -rf master
    cdt
    gsync
    ant all
    b
    cp portal-ext.properties master
    rm -rf master_0
    cp -r master master_0
    cdt
}

function bundles {
    if [ ${#} -eq 0 ]
    then
        cd ~/liferay/bundles
    elif [ ${#} -eq 1 ]
    then
        cd ~/liferay/bundles/${1}
    fi
}

function backup_bundle_master {
   b
   cp portal-setup-wizard.properties master
   rm -rf master_0
   cp -r master master_0
   cd
}

function execute_gradlew {
	if [ -e ../gradlew ]
	then
		../gradlew ${@}
	elif [ -e ../../gradlew ]
	then
		../../gradlew ${@}
	elif [ -e ../../../gradlew ]
	then
		../../../gradlew ${@}
	elif [ -e ../../../../gradlew ]
	then
		../../../../gradlew ${@}
	elif [ -e ../../../../../gradlew ]
	then
		../../../../../gradlew ${@}
	elif [ -e ../../../../../../gradlew ]
	then
		../../../../../../gradlew ${@}
	elif [ -e ../../../../../../../gradlew ]
	then
		../../../../../../../gradlew ${@}
	elif [ -e ../../../../../../../../gradlew ]
	then
		../../../../../../../../gradlew ${@}
	elif [ -e ../../../../../../../../../gradlew ]
	then
		../../../../../../../../../gradlew ${@}
    elif [ -e ../../../../../../../../../../gradlew ]
	then
		../../../../../../../../../../gradlew ${@}
    elif [ -e ../../../../../../../../../../../gradlew ]
	then
		../../../../../../../../../../../gradlew ${@}
    elif [ -e ../../../../../../../../../../../../gradlew ]
	then
		../../../../../../../../../../../../gradlew ${@}
    elif [ -e ../../../../../../../../../../../../../gradlew ]
	then
		../../../../../../../../../../../../../gradlew ${@}
    elif [ -e ../../../../../../../../../../../../../../gradlew ]
	then
		../../../../../../../../../../../../../../gradlew ${@}
    elif [ -e ../../../../../../../../../../../../../../../gradlew ]
	then
		../../../../../../../../../../../../../../../gradlew ${@}
	else
		echo "Unable to find locate Gradle wrapper."
	fi
}

function grep_file {
    if [ ${#} -eq 0 ]
    then
        echo "Enter search text."
    else
        grep -R ${1} ./ | cut -d: -f1 | uniq
    fi
}

function git_grep {
    if [ ${#} -eq 1 ]
    then
        git --no-pager grep --files-with-matches "${1}"
    elif [ ${#} -eq 2 ]
    then
        git --no-pager grep --files-with-matches "${1}" -- "${2}"
    elif [ ${#} -eq 3 ]
    then
        git --no-pager grep --files-with-matches "${1}" -- "${2}" "${3}"
    elif [ ${#} -eq 4 ]
    then
        git --no-pager grep --files-with-matches "${1}" -- "${2}" "${3}" "${4}"
    fi
}

function git_get_pr {
    if [ ${#} -eq 1 ]
    then
        git fetch origin pull/${1}/head:pr-${1}
        git checkout pr-${1}
    elif [ ${#} -eq 2 ]
    then
        git fetch ${2} pull/${1}/head:pr-${1}
        git checkout pr-${1}
    elif [ ${#} -eq 3 ]
    then
        git fetch ${2} pull/${1}/head:${3}-${1}
        git checkout ${3}-${1}
    fi
}

function git_send_pr {
    if [ ${#} -eq 1 ]
    then
        gh pr create --repo ${1}/liferay-portal --base master
    fi
}

function gw {
	execute_gradlew "${@//\//:}" --daemon
}

ij() {
        ${IJ_CLONE_PATH}/intellij "$@"
}

function tomcat {
    if [ ${#} -eq 0 ]
    then
        /Users/joseabelenda/liferay/bundles/master/tomcat-9.0.68/bin/catalina.sh jpda run

    elif [ ${#} -eq 1 ]
    then
        /Users/joseabelenda/liferay/bundles/master/tomcat-9.0.68/bin/shutdown.sh
    fi
}

function gsync {
    if [ ${#} -eq 0 ]
    then
        gck master
        git fetch upstream master
        git reset upstream/master --hard
        git push origin master -f

    elif [ ${#} -eq 1 ]
    then
        gck ${1}
        git fetch ${1} master
        git reset ${1}/master --hard
        git push origin ${1} -f
    fi
}

function grebase {
    if [ ${#} -eq 0 ]
    then
        git fetch upstream master
        git rebase origin/master

    elif [ ${#} -eq 1 ]
    then
        git fetch ${1} master
        git rebase ${1}/master
    fi
}

function git_rebase_interactive {
    if [ ${#} -eq 1 ]
    then
        git rebase -i HEAD~${1}
    else
        echo "It's necessary to define number of commits"
    fi
}

function gpcb {
    current_branch=$(git branch --show-current) 
    git push origin $current_branch ${1}
}

function kill_tomcat {
    ps -ef | grep catalina.startup.Bootstrap | awk '{print $2}' | xargs kill -9
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

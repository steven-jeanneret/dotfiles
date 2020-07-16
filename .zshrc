#source ~/.fonts/*.sh
export ZSH=$HOME/.oh-my-zsh
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv

CASE_SENSITIVE="false"

source $ZSH/oh-my-zsh.sh
source "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
source "$ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
#source /usr/bin/virtualenvwrapper.sh

ZSH_THEME="spaceship"
# ORDER
SPACESHIP_PROMPT_ORDER=(
  time     #
  vi_mode  # these sections will be
  user     # before prompt char
  host     #
  dir
  git
  node
  ruby
  xcode
  swift
  golang
  docker
  venv
  pyenv
  char
)

#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

SPACESHIP_CHAR_SYMBOL="➤  "

# USER
SPACESHIP_USER_PREFIX="" # remove `with` before username
SPACESHIP_USER_SUFFIX="" # remove space before host
# HOST
# Result will look like this:
#   username@:(hostname)
SPACESHIP_HOST_PREFIX="@:("
SPACESHIP_HOST_SUFFIX=") "
# DIR
SPACESHIP_DIR_PREFIX='' # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC='1' # show only last directory
SPACESHIP_DIR_TRUNC_REPO=false
# GIT
# Disable git symbol
#SPACESHIP_GIT_SYMBOL="" # disable git prefix
#SPACESHIP_GIT_BRANCH_PREFIX="" # disable branch prefix too
# Wrap git in `git:(...)`
#SPACESHIP_GIT_PREFIX='('
SPACESHIP_GIT_PREFIX=''
#SPACESHIP_GIT_SUFFIX=") "
#SPACESHIP_GIT_SUFFIT=''
SPACESHIP_GIT_BRANCH_SUFFIX="" # remove space after branch name
# Unwrap git status from `[...]`
SPACESHIP_GIT_STATUS_PREFIX=""
SPACESHIP_GIT_STATUS_SUFFIX=""
# NODE
SPACESHIP_NODE_PREFIX="node:("
SPACESHIP_NODE_SUFFIX=") "
SPACESHIP_NODE_SYMBOL=""
# RUBY
SPACESHIP_RUBY_PREFIX="ruby:("
SPACESHIP_RUBY_SUFFIX=") "
SPACESHIP_RUBY_SYMBOL=""
# XCODE
SPACESHIP_XCODE_PREFIX="xcode:("
SPACESHIP_XCODE_SUFFIX=") "
SPACESHIP_XCODE_SYMBOL=""
# SWIFT
SPACESHIP_SWIFT_PREFIX="swift:("
SPACESHIP_SWIFT_SUFFIX=") "
SPACESHIP_SWIFT_SYMBOL=""
# GOLANG
SPACESHIP_GOLANG_PREFIX="go:("
SPACESHIP_GOLANG_SUFFIX=") "
SPACESHIP_GOLANG_SYMBOL=""
# DOCKER
SPACESHIP_DOCKER_PREFIX="docker:("
SPACESHIP_DOCKER_SUFFIX=") "
SPACESHIP_DOCKER_SYMBOL=""
# VENV
SPACESHIP_VENV_SUFFIX=""
SPACESHIP_VENV_PREFIX="\Uf3e2 "
SPACESHIP_VENV_GENERIC_NAMES="()"

# PYENV
SPACESHIP_PYENV_PREFIX="python:("
SPACESHIP_PYENV_SUFFIX=") "
SPACESHIP_PYENV_SYMBOL=""
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(
  git
  # k
  #colored-man
  colorize
  # dirhistory
  copydir
)
typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=orange,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green, bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

bindkey '^ ' autosuggest-toggle

export LANG=en_US.UTF-8
#alias cat="colorize"
alias cpd="copydir"
alias l="ls"
alias ll="ls -l"
alias la="ls -la"
alias drl="python manage.py livereload & python manage.py runserver --livereload-port 9000 &"
alias drs="python manage.py runserver"
alias dsp="python manage.py shell_plus"
alias dmm="python manage.py makemigrations"
alias dmi="python manage.py migrate"
alias dsu="python manage.py createsuperuser"

xpwd() {
    pwd | xclip -selection clipboard
}
gall() {
    git add .
    git commit -a -m"$1"
    git push
}
manage() {
    python manage.py $1
}
dotup() {
  ./mngDotF.sh
  git add .
  git commit -m "sync"
  git push origin master
}
gsvcred() {
  git config --global credential.helper 'cache --timeout=36000'
}
cpr() {
  rsync -ahr --info=progress2 $1 $2
}

#fpath=($fpath "$HOME/.zfunctions")
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/steven/.config/composer/vendor/bin:/home/steven/.scc/scc.py:/home/steven/.npm-global/bin"
alias scc='/home/steven/.scc/scc.py'
alias dotFiles='/usr/bin/git --git-dir=$HOME/.dotFiles/ --work-tree=$HOME'

fpath=(~/Documents/cheatsheets/ $fpath)

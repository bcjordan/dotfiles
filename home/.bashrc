PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig:$PKG_CONFIG_PATH"

source ~/.secrets

alias drush=~/code_others/drush/drush

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="~/bin:$PATH"

# History
HISTTIMEFORMAT="%d/%m/%y %T "
HISTSIZE=9000
SAVEHIST=9000
HISTFILE=~/.history
HISTCONTROL=ignoredups:erasedups  
shopt -s histappend
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

alias pandoc-watch="python ~/code_others/pandoc-watch/pandocwatch.py"
alias hb="hub browse"
alias gpom="git push origin master"
alias gphm="git push heroku master&"
alias gp="git pull origin master"
alias gcam="git commit -a -m"
alias gcm="git commit -m"
alias gsa="git stash apply"
alias gs="git status"
alias ga="git add"
alias gd="git diff --cached"
alias gb="git branch"
alias gcb="git checkout -b"
alias gco="git checkout"
alias gsu="git submodule update"
alias psg="ps aux | grep"
alias ..="cd .."
alias o.="open ."

alias rc="vim ~/.bashrc"
alias src="source ~/.bashrc"

alias ls="ls -FGa"

# Bookmarks
source ~/.bash_apparix
alias cfi="cd ~/code/coding-for-interviews"
alias 2048="cd ~/code/the2048game.com"
alias bcj="cd ~/code/bcjordan.github.com"
alias practice="cd ~/code/practice"
alias gym="cd ~/code/fantasy-gymnastics"
alias code="cd ~/code"
alias co="cd ~/code_others"

#### Django Setup

# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# code.org

alias cdo="cd ~/code/cdo-curriculum"
alias block="cd ~/code/cdo-curriculum/projects/blockly"
alias core="cd ~/code/cdo-curriculum/projects/blockly-core"
alias peg="cd ~/code/pegasus"
alias dash="cd ~/code/cdo-curriculum/projects/dashboard"
alias test="cd ~/code/cdo-curriculum/projects/dashboard/test/ui"
alias blo="cd ~/code/cdo-curriculum/projects/blockly"

alias rgrep="grep -r"

# alias rake="bundle exec rake"

ulimit -n 2048

alias serve="ngrok 3000"

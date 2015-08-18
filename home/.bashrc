PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
export PKG_CONFIG_PATH="/usr/X11/lib/pkgconfig:/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"
#export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig:$PKG_CONFIG_PATH"
export DISABLE_SPRING=true


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
alias gpsm="git push staging master&"
alias gp="git pull origin master"
alias gcam="git commit -a -m"
alias gcm="git commit -m"
alias gsa="git stash apply"
alias g="git status"
alias ga="git add"
alias gd="git diff"
alias gf="git fetch"
alias gdc="git diff --cached"
alias glg="git log --graph"
alias gb="git branch"
alias witchhunt="git bisect"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gsu="git submodule update"
alias di="docker images"
alias dps="docker ps"
alias fuckit="git commit -a -m 'commit'; git push heroku master; heroku logs -t"
alias yolo="git commit -a -m 'commit'; git push heroku master"
alias grh="git reset HEAD"
alias gc-="git checkout --"
alias gitundocommit="git reset --soft HEAD^"
alias psg="ps aux | grep"
alias ..="cd .."
alias o.="open ."
alias pushdd="pushd \$PWD > /dev/null"
alias o0="open http://0.0.0.0:3000"
alias ol="open http://localhost:3000"

alias rc="vim ~/.bashrc"
alias src="source ~/.bashrc"
alias tsrc="tmux source-file ~/.tmux.conf"
alias dot="cd ~/.homesick/repos/dotfiles/"

alias ls="ls -FGa"

function realpath() {
  pushd $(dirname "${1}") > /dev/null
  basedir=$(pwd -L)
  filename=$(basename "${1}")
  popd > /dev/null
  echo "${basedir}${filename}"
}

alias fp="realpath"


function pb() {
  $@ | pbcopy
}


# Rails
alias rs="rails s"
alias bi="bundle install"

# Bookmarks
source ~/.bash_apparix
alias cfi="cd ~/code/coding-for-interviews"
alias 2048="cd ~/code/the2048game.com"
alias bcj="cd ~/code/bcjordan.github.com"
alias practice="cd ~/code/practice"
alias cr="chromerefresh"
alias gym="cd ~/code/fantasy-gymnastics"
alias gifwhack="cd ~/code/gifwhack"
alias dc="cd ~/code/whatthediff"
alias gb="cd ~/code/grabbalicious"
alias code="cd ~/code"
alias codeo="cd ~/code_others"
alias cdo="cd ~/code/code-dot-org"
alias cdo2="cd ~/code/code-dot-org-2"
alias gate="ssh gateway.code.org"
alias esb="cd ~/cdo/Dropbox\ \(Personal\)/ESB"
alias co="cd ~/code_others"
alias chromerefresh="~/scripts/chromerefresh.sh"
alias pr="~/scripts/openpr.sh"

alias playground-chef="cd ~/code/chef-playground"

#### Django Setup

# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=false
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# code.org

alias apps="cd ~/code/code-dot-org/apps"
alias apps2="cd ~/code/code-dot-org-2/apps"
alias core="cd ~/code/code-dot-org/blockly-core"
alias ct="cd ~/code/code-dot-org/blockly-core/tests"
alias core2="cd ~/code/code-dot-org-2/blockly-core"
alias play="open ~/code/code-dot-org/blockly-core/tests/playground.html"
alias op="play"
alias dash="cd ~/code/code-dot-org/dashboard"
alias dash2="cd ~/code/code-dot-org-2/dashboard"
alias archive="cd ~/code/code-dot-org/dashboard/scripts/archive"
alias ci="cd ~/code/code-dot-org"
alias ui="cd ~/code/code-dot-org/dashboard/test/ui"
alias ui2="cd ~/code/code-dot-org-2/dashboard/test/ui"
alias blo="cd ~/code/code-dot-org/blockly"
alias peg="cd /Users/brian/code/code-dot-org/pegasus"

alias i18ncore="core &&i18n/codeorg-messages.sh && cp msg/js/en_us.js ../blockly/lib/blockly/ && cd ../blockly && grunt build && cd -"

alias rgrep="grep -r"
alias unstage='git reset HEAD $0 && git checkout $0'

# rails

alias rake="rake"
alias rdm="bundle exec rake db:migrate"
alias ios="cd ~/code/ios"

ulimit -n 2048

alias serve="ngrok 3000"

# added by travis gem
[ -f /Users/brian/.travis/travis.sh ] && source /Users/brian/.travis/travis.sh

# transfer.sh

transfer() {
if [ $# -eq 0 ]; then
echo "No arguments specified. Usage:"
echo "$ transfer /tmp/test.md"
echo "$ cat /tmp/test.md | transfer test.md"
return 1
fi

# write to output to tmpfile because of progress bar
tmpfile=$( mktemp -t transferXXX );

if tty -s; then
basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g');
curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile;
else
curl --progress-bar --upload-file "-" "https://transfer.sh/$1"
fi


cat $tmpfile | pbcopy;
cat $tmpfile; rm -f $tmpfile;
}

alias transfer=transfer

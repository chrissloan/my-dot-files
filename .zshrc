# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git lighthouse osx bundler rvm brew)

GIT_MERGE_AUTOEDIT=no
export GIT_MERGE_AUTOEDIT

source $ZSH/oh-my-zsh.sh

unalias gco
gco()
{
  git checkout $*
  if [[ -s $PWD/.rvmrc ]] ; then
    echo "Reloading rvmrc from $PWD/.rvmrc"
    unset rvm_rvmrc_cwd
    source $PWD/.rvmrc
  fi
}

# Customize to your needs...
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

#
# SSH #
#
alias sshchris='ssh chrisslo@chrissloan.info'
alias sshut='ssh deploy@www.usertesting.com'

#
# PROJECTS #
#
alias fbapps='cd ~/Sites/reccenter/facebook_apps'
alias bfb='cd ~/Sites/chrissloan/bfurby'
alias uto='cd ~/Sites/usertesting/orders'
alias simp='cd ~/Sites/chrissloan/simplyscrum.com'
alias haidee='cd ~/Sites/chrissloan/haidee'
alias smt='cd ~/Sites/reccenter/roadrunnerrecords/signmeto.roadrunnerrecords.com'
alias goswim='cd ~/Sites/reccenter/goswim/goswim-com'
alias rrcom='cd ~/Sites/reccenter/roadrunnerrecords/roadrunner-records-com'
alias frcom='cd ~/Sites/reccenter/roadrunnerrecords/forum-roadrunnerrecords'
alias rdbl='cd ~/Sites/reccenter/redbull'
alias rrn='cd ~/Sites/reccenter/roadrunnerrecords/network-roadrunnerrecords-com' 
alias tube='cd ~/Sites/chrissloan/testtubeapp.com ; rvm 1.9.2 ; rvm gemset create testtubeapp ; rvm gemset use testtubeapp'
alias rrdb='rrcom ; rm latest.dump ;  heroku pgbackups:capture ; curl -o latest.dump `heroku pgbackups:url` ; pg_restore --verbose --clean --no-acl --no-owner -h localhost -U root -d rr_development_prod latest.dump'
#
# GENERAL #
#
alias home='cd ~' # the tilda is too hard to reach
alias l='ls -lah' # l for list style, a for all including hidden, h for human readable file sizes
alias h='history' # shortcut for history
alias c='clear' # shortcut to clear your terminal
alias ..='cd ..' # move up 1 dir
alias ...='cd ../..' # move up 2 dirs
alias rmorig='find . -type f -name "*.orig" -exec rm -f {} \;'
alias rmds='find . -type f -name ".DS_Store" -exec rm -f {} \;'
#
# TEXTMATE #
#
alias e='vim' # open current dir
alias v='mvim' # use mvim
#
# GIT #
#
alias g='git'
alias gpl='git pull'
alias gad='git add *'
alias gcm='git commit -m'
alias gps='git push'
alias gco='git checkout '
alias glog="git log --pretty=format:'%h was %an, message: %s'"

#
# RAKE #
#
alias rdbm='rake db:migrate'
alias rdbv='rake db:version'
alias seedme='rake db:drop && rake db:create && rake db:migrate && rake db:seed'

#
# RUBY #
#
alias irb='irb --readline -r irb/completion -rubygems' # use readline, completion and require rubygems$
# really awesome function, use: cdgem <gem name>, cd's into your gems directory and opens gem that bes$
alias be='bundle exec'

[[ -s "/Users/lightmac/.rvm/scripts/rvm" ]] && source "/Users/lightmac/.rvm/scripts/rvm"

export PATH=$HOME/.rvm/bin:./bin:/usr/local/bin:/usr/local/sbin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export RUN_JS=true

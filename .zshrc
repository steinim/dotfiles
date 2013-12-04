# Path to your oh-my-zsh configuration:.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="stein_inge"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git git-flow)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

_useJava() {
  export JAVA_HOME=$(/usr/libexec/java_home -v ${1} -d64)
}

export LC_CTYPE="UTF-8"

_useJava 1.7

export DPOST_USER=SIM
export DPOST_HOME=/server/java

export DPOST_MAIN_REPO="/Users/steinim/src/digipost"
export DPOST_POSTIT_REPO="/Users/steinim/src/digipost-postit"
export DPOST_WEBAPP_REPO="/Users/steinim/src/digipost-webapp"

export M2_HOME=/usr/local/maven
export M2_REPO=/Users/steinim/.m2/repository
export MAVEN_OPTS="-Xms8192m -Xmx8192m -XX:MaxPermSize=2048m -XX:PermSize=2048m -XX:+CMSClassUnloadingEnabled -Dfile.encoding=UTF-8 -Djava.security.egd=file:///dev/urandom"
export LIQUIBASE_HOME=~/src/digipost/liquibase

alias ll='ls -al'
alias dpo='cd ~/src/digipost'
alias cde='cd ~/src/Continuous-Delivery-example'
alias noc='cd ~/src/NoCommons'
alias sca='cd ~/src/scala_intro_kurs'
alias box='cd ~/src/my-boxen'
alias src='cd ~/src'
alias pro='cd ~/src/provisioning-workshop'

alias mvn='nocorrect mvn'
alias subl='nocorrect subl'
alias git='nocorrect git'
alias hub="nocorrect hub"
alias mvnv='~/src/digipost/scripts/maven/version.sh'
alias mcis='~/src/digipost/scripts/maven/snapshot.sh clean install'
alias mvns='~/src/digipost/scripts/maven/snapshot.sh'
alias mvnr='~/src/digipost/scripts/maven/release.sh'

# liquibase 
alias ludo="mvn liquibase:update -Dliquibase.dropFirst=true -Pora" 
alias luo="mvn liquibase:update -Dliquibase.dropFirst=false -Pora" 
alias ludh="mvn liquibase:update -Dliquibase.dropFirst=true -Phsql" 
alias luh="mvn liquibase:update -Dliquibase.dropFirst=false -Phsql" 
#
function lrco { mvn liquibase:rollback -Dliquibase.rollbackCount="$1" -Pora ; } 
function lrto { mvn liquibase:rollback -Dliquibase.rollbackTag="$1" -Pora ; } 
function lrch { mvn liquibase:rollback -Dliquibase.rollbackCount="$1" -Phsql ; } 
function lrth { mvn liquibase:rollback -Dliquibase.rollbackTag="$1" -Phsql ; }

PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
PATH=$PATH:$M2_HOME/bin
PATH=$PATH:$LIQUIBASE_HOME
PATH=$PATH:~/bin
PATH=$PATH:/Applications/eclipse
PATH=$PATH:~/src/digipost/dpost-deploy/scripts:~/src/digipost/scripts:~/src/digipost/scripts/util:~/src/digipost/scripts/log:~/src/digipost/scripts/maven
#PATH=$PATH:/opt/boxen/nvm/v0.8.8/lib/node_modules/pacman/bin
#PATH=$PATH:$HOME/src/rerun

#RERUN_MODULES=$HOME/src/digibash/modules
#RERUN_LOGS=$HOME/src/digibash/logs
#RERUN_MODULES=$HOME/src/digipost/scripts/modules
#RERUN_LOGS=$HOME/src/digipost/scripts/logs
#[ -t 0 ] && export RERUN_COLOR=true
#source $HOME/src/rerun/etc/bash_completion.sh
#
#PATH=/opt/boxen/nvm/v0.8.8/lib/node_modules/jshint/bin:$PATH

export PATH # RERUN_MODULES RERUN_LOGS

source /opt/boxen/env.sh

# Sjekk for endringer siden sist
git status


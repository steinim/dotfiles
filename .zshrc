ZSH=$HOME/.oh-my-zsh
ZSH_THEME="stein_inge"

alias sourcetree="open -a SourceTree"

export PASSWORD_STORE_DIR=/Users/steinim/src/passwords

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
  export PATH=$JAVA_HOME/bin:$PATH
}

export LC_CTYPE="UTF-8"

export USER=steinim
export DPOST_USER=SIM
export DPOST_HOME=/server/java
export MF_USER=sim

export DPOST_REPOS_PATH="/Users/steinim/src"
export DPOST_MAIN_REPO="$DPOST_REPOS_PATH/digipost"
export DPOST_POSTIT_REPO="$DPOST_REPOS_PATH/digipost-postit"
export DPOST_WEBAPP_REPO="$DPOST_REPOS_PATH/digipost-webapp"
export DPOST_OFFENTLIG_REPO="$DPOST_REPOS_PATH/digipost-offentlig"
export DPOST_ANSIBLE_REPO="$DPOST_REPOS_PATH/digipost-ansible"
export DPOST_DEPLOY_REPO="$DPOST_REPOS_PATH/digipost-deploy"
export DPOST_POSTGRES_REPO="$DPOST_REPOS_PATH/postgres-ansible"
export DPOST_SUB_REPO="$DPOST_REPOS_PATH/digipost-sub"
export DPOST_MONITORING_WEBAPP_REPO="$DPOST_REPOS_PATH/digipost-monitoring-webapp"
export DPOST_LABS_REPO="$DPOST_REPOS_PATH/digipost-labs"
export DPOST_LABS_WEBAPP_REPO="$DPOST_LABS_REPO/labs/frontend"
export MF_WEBAPP_REPO="$DPOST_OFFENTLIG_REPO/mf-webapp"
export FRONTEND_DEPLOY="$DPOST_REPOS_PATH/frontend-deploy"

export M2_HOME=/usr/local/maven
export M2_REPO=/Users/steinim/.m2/repository
#export MAVEN_OPTS="-Xms8192m -Xmx8192m -XX:+CMSClassUnloadingEnabled -Dfile.encoding=UTF-8 -Djava.security.egd=file:///dev/urandom -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true"
export MAVEN_OPTS="-Xms8192m -Xmx8192m -XX:+CMSClassUnloadingEnabled -Dfile.encoding=UTF-8 -Djava.security.egd=file:///dev/urandom"
export LIQUIBASE_HOME=~/src/digipost/liquibase
export ANDROID_HOME=~/.android-sdk

alias ll='ls -al'
alias dpo="cd $DPOST_OFFENTLIG_REPO"
#alias dp="cd $DPOST_MAIN_REPO"
alias da="cd $DPOST_ANSIBLE_REPO"
alias dpd="cd $DPOST_DEPLOY_REPO"
alias pa="cd $DPOST_POSTGRES_REPO"
alias fed="cd $FRONTEND_DEPLOY"
alias zd='cd ~/src/zero-downtime-ansible'
alias cde='cd ~/src/Continuous-Delivery-example'
alias noc='cd ~/src/NoCommons'
alias sca='cd ~/src/scala_intro_kurs'
#alias box='cd ~/src/my-boxen'
alias src='cd ~/src'
alias pro='cd ~/src/provisioning-workshop'
alias coachany='cd ~/src/coachany'
alias dcp='cd ~/src/digipost-cloud-provisioning'

alias mvn='nocorrect mvn'
alias subl='nocorrect subl'
alias git='nocorrect git'
alias hub="nocorrect hub"
alias mvnv='~/src/digipost/scripts/maven/version.sh'
alias mcis='~/src/digipost/scripts/maven/snapshot.sh clean install'
alias mvns='~/src/digipost/scripts/maven/snapshot.sh'
alias mvnr='~/src/digipost/scripts/maven/release.sh'

PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
PATH=$PATH:$M2_HOME/bin
PATH=$PATH:$LIQUIBASE_HOME
PATH=$PATH:~/bin
PATH=$PATH:/Applications/eclipse
PATH=$PATH:~/src/digipost/scripts:~/src/digipost/scripts/util:~/src/digipost/scripts/log:~/src/digipost/scripts/maven
PATH=$(/usr/local/bin/brew --prefix coreutils)/libexec/gnubin:$PATH
PATH=$PATH:~/.android_sdk/platform-tools:~/.android_sdk/tools

#export DYLD_LIBRARY_PATH=~/bin/instantclient_11_2
#PATH=$PATH:$DYLD_LIBRARY_PATH

export PATH

export EDITOR=/usr/bin/vim
export LC_ALL=en_US.UTF-8

_useJava 1.8

# Sjekk for endringer siden sist
#git status
eval "$($DPOST_SUB_REPO/bin/dp init -)"

export DYLD_LIBRARY_PATH=/opt/oracle/instantclient_11_2:$DYLD_LIBRARY_PATH
export PATH=/opt/oracle/instantclient_11_2:$PATH
export ORACLE_SID=XE

export GOPATH=~/

eval $(gpg-agent --daemon)

alias ssh="/usr/local/bin/ssh"

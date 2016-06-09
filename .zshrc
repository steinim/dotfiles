ulimit -n 65536
ulimit -u 2048

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="stein_inge"

alias sourcetree="open -a SourceTree"

export PASSWORD_STORE_DIR=/Users/steinim/src/passwords

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

_useJava() {
  export JAVA_HOME=$(/usr/libexec/java_home -v ${1} -d64)
  export PATH=$JAVA_HOME/bin:$PATH
}

_useJava 1.8

export LC_CTYPE="UTF-8"

export USER=steinim

export M2_HOME=/usr/local/maven
export M2_REPO=/Users/steinim/.m2/repository
export MAVEN_OPTS="-Xms8192m -Xmx8192m -Denv.CMS_HOME=/Users/steinim/src/nsb/enonic/cms_home"
export ANDROID_HOME=~/.android-sdk

alias ll='ls -al'
alias coachany='cd ~/src/coachany'
alias nsb='cd ~/src/nsb'

alias mvn='nocorrect mvn'
alias subl='nocorrect subl'
alias git='nocorrect git'
alias hub="nocorrect hub"

PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
PATH=$PATH:$M2_HOME/bin
PATH=$PATH:$LIQUIBASE_HOME
PATH=$PATH:~/bin
PATH=$PATH:/Applications/eclipse
PATH=$(/usr/local/bin/brew --prefix coreutils)/libexec/gnubin:$PATH
PATH=$PATH:~/.android_sdk/platform-tools:~/.android_sdk/tools

export EDITOR=/usr/bin/vim
export LC_ALL=en_US.UTF-8

export GOPATH=~/src/go
PATH=$GOPATH/bin:$PATH
export PATH
eval $(gpg-agent --daemon)

alias ssh="/usr/local/bin/ssh"

# AWS Credentials
[[ -f ~/.bash_aws ]] && . ~/.bash_aws

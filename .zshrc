ulimit -n 65536
ulimit -u 2048

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="stein_inge"

alias sourcetree="open -a SourceTree"
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

export PASSWORD_STORE_DIR=~/src/nsb/.password-store

source $ZSH/oh-my-zsh.sh

_useJava() {
  export JAVA_HOME=$(/usr/libexec/java_home -v ${1} -d64)
  export PATH=$JAVA_HOME/bin:$PATH
}

_useJava 1.8

export LC_CTYPE="UTF-8"

export M2_HOME=/usr/local/maven
export M2_REPO=/Users/steinim/.m2/repository
export CMS_HOME="/Users/steinim/src/nsb/enonic/cms_home"
export MAVEN_OPTS="-Xmx2048m -Denv.CMS_HOME=${CMS_HOME}"
export ANDROID_HOME=~/.android-sdk

alias ll='ls -al'
alias coachany='cd ~/src/coachany'

alias mvn='nocorrect mvn'
alias subl='nocorrect subl'
alias git='nocorrect git'
alias hub="nocorrect hub"

PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
PATH=$PATH:$M2_HOME/bin
PATH=$PATH:~/bin
PATH=$PATH:~/.android_sdk/platform-tools:~/.android_sdk/tools
PATH=$PATH:~/boxfuse

export EDITOR=/usr/bin/vim
export LC_ALL=en_US.UTF-8

export GOPATH=~/src/go
export GOBIN=$GOPATH/bin
PATH=$GOBIN:$PATH
export PATH
eval $(gpg-agent --daemon)

alias ssh="/usr/local/bin/ssh"

# AWS Credentials
[[ -f ~/.bash_aws ]] && . ~/.bash_aws
. ~/.nsb_env

# added by travis gem
[ -f /Users/steiningemorisbak/.travis/travis.sh ] && source /Users/steiningemorisbak/.travis/travis.sh

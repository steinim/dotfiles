#ulimit -n 65536
#ulimit -u 2048

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="stein_inge"

alias sourcetree="open -a SourceTree"
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

export PASSWORD_STORE_DIR=~/src/nsb/.password-store

source $ZSH/oh-my-zsh.sh

export JAVA_HOME=$(/usr/libexec/java_home)
PATH=$JAVA_HOME:$PATH

export LC_CTYPE="UTF-8"

export M2_HOME=/usr/local/maven
export M2_REPO=/Users/steinim/.m2/repository
export MAVEN_OPTS="-Xmx2048m"
export ANDROID_HOME=~/.android-sdk

alias ll='ls -al'
alias coachany='cd ~/src/coachany'

alias mvn='nocorrect mvn'
eval "$(hub alias -s)"

PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
PATH=$PATH:$M2_HOME/bin
PATH=$PATH:~/bin
PATH=$PATH:~/.android_sdk/platform-tools:~/.android_sdk/tools
PATH=$PATH:~/bin/boxfuse
PATH=$PATH:~/src/nsb/nsb.no-dev/scripts/bin

export EDITOR=/usr/bin/vim
export LC_ALL=en_US.UTF-8

export GOPATH=~/src/go
export GOBIN=$GOPATH/bin
PATH=$GOBIN:$PATH
export PATH
#eval $(gpg-agent --daemon)

alias ssh="/usr/local/bin/ssh"

# AWS Credentials
[[ -f ~/.bash_aws ]] && . ~/.bash_aws

# google-cloud-sdk
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# nsb tool
source ~/src/nsb/nsb.no-dev/scripts/completions/nsb.zsh

# added by travis gem
[ -f /Users/steiningemorisbak/.travis/travis.sh ] && source /Users/steiningemorisbak/.travis/travis.sh

PATH="/Users/steiningemorisbak/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/steiningemorisbak/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/steiningemorisbak/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/steiningemorisbak/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/steiningemorisbak/perl5"; export PERL_MM_OPT;
export CMS_HOME="/Users/steiningemorisbak/src/nsb/nsb.no-infrastructure/cms.home"
export MAVEN_OPTS="-Xmx2048m -Denv.CMS_HOME=/Users/steiningemorisbak/src/nsb/nsb.no-infrastructure/cms.home"

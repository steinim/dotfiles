# .bashrc

if [ -f ~/.bash_profile ]; then
  . ~/.bash_profile
fi

# User specific aliases and functions
bind -f ~/.bash_key_bindings

# functions

_useJava() {
  export JAVA_HOME=$(/usr/libexec/java_home -v ${1} -d64)
}

_log(){
  echo $( date ): ${@}
}

_useJava 1.7


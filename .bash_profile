# .bash_profile

# User specific environment and startup programs

# git functions

_parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'

}

_get_git_color() {

    isred=`git status -s 2> /dev/null | egrep "^.[^? ]" | wc | awk '{print $1}'`
    isorange=`git status -s 2> /dev/null | egrep "^[^? ]" | wc | awk '{print $1}'`

    git_prompt_color=32

    if [ $isorange -ne 0 ]
    then
    git_prompt_color=33
    fi
    if [ $isred -ne 0 ]
    then
    git_prompt_color=31
    fi

    echo "$git_prompt_color"
}

#

# prompt
export PS1="\[\e]0;\t\w\a\]\[\e[1;\$(_get_git_color)m\]\$(_parse_git_branch)\[\e[0m\]: "


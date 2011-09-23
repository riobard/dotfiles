# Login greeting ------------------
#if [ "$TERM" = "screen" -a ! "$SHOWED_SCREEN_MESSAGE" = "true" ]; then
#    detached_screens=`screen -list | grep Detached`
#    if [ ! -z "$detached_screens" ]; then
#        echo "+---------------------------------------+"
#        echo "| Detached screens are available:       |"
#        echo "$detached_screens"
#        echo "+---------------------------------------+"
#    else
#        echo "[ screen is activated ]"
#    fi
#    export SHOWED_SCREEN_MESSAGE="true"
#fi


# use Vi-style keybinding; default is emacs
#set -o vi

# my alias
alias ll="ls -lh"
alias la="ls -ha"
alias lla="ls -lha"
alias l="ls -CF"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias e="mvim"
alias g="git add -A"
alias gg="git add -A && git commit"
alias ggg="git add -A && git commit && git push"
alias ipy="ipython"
alias bpy="bpython"
alias tree="tree -C"
alias objcc="cc -framework Foundation"
alias glutc="gcc -O3 -framework GLUT -framework OpenGL -framework Cocoa"


###############################
# handy tput commands
# 
# tput bold - Bold effect
# tput rev - Display inverse colors
# tput sgr0 - Reset everything
# tput setaf {CODE}- Set foreground color, see color {CODE} below
# tput setab {CODE}- Set background color, see color {CODE} below
# Colors {code} code for tput command
# 
# Color {code}    Color
# 0    Black
# 1    Red
# 2    Green
# 3    Yellow
# 4    Blue
# 5    Magenta
# 6    Cyan
# 7    White
###############################

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
RESET=$(tput sgr0)
INVERSE=$(tput rev)
BOLD=$(tput bold)



if [ ! `which -s git` ]; then

    parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/--(git branch \1)/'
    }

    #PROMPT_COMMAND="echo $PWD"
    # this will get executed before each PS1 prompot

    # change bash prompt
    #PS1='\[\e[1;36m\]\w\[\e[m\]\[\e[1;00m\]\$\[\e[m\] '
    PS1='\n\[$RESET$WHITE\]\n(\[$CYAN\]#\!\[$WHITE\])--(\[$RED\]\D{%T}\[$WHITE\])--(\[$RESET$MAGENTA\]\u\[$RESET$WHITE\]@\[$RESET$GREEN\]\h\[$RESET$WHITE\]:\[$RESET$BOLD$WHITE\]\w\[$RESET$WHITE\])$(parse_git_branch)\n\[$RESET$WHITE\]\$ \[$RESET\]'

else

    # Without git branch info 
    PS1='\n\[$RESET$WHITE\]\n(\[$CYAN\]#\!\[$WHITE\])--(\[$RED\]\D{%T}\[$WHITE\])--(\[$RESET$MAGENTA\]\u\[$RESET$WHITE\]@\[$RESET$GREEN\]\h\[$RESET$WHITE\]:\[$RESET$BOLD$WHITE\]\w\[$RESET$WHITE\])\n\[$RESET$WHITE\]\$ \[$RESET\]'


fi


# ls color output
export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxEgEdAbAgAcAd  # bold
#export LSCOLORS=GxFxCxDxBxGgGdAbAgAcAd  # bold
#export LSCOLORS=exfxcxdxbxegedabagacad # default


export PATH=$PATH:/usr/local/bin:/usr/local/sbin:~/bin/:/usr/local/share/python
export MANPATH=$MANPATH
export EDITOR=/usr/bin/vim


export JAVA_OPTS="-Dfile.encoding=utf-8 -Xmx2g"
# set heap size to max 2g (this is a usual amount of memory
# freely accessible on Bender without causing too much swaping



if [ ! `which -s vimpager` ]; then
    export PAGER=`which vimpager`
    alias vless=$PAGER
fi


# Homebrew stuff
if [ ! `which -s brew` ]; then
    BREW=`brew --prefix`
    if [ -f $BREW/etc/bash_completion ]; then
        source $BREW/etc/bash_completion
    fi

    # Use Homebrew version of Python for virtualenvwrapper
    export VIRTUALENVWRAPPER_PYTHON=$BREW/bin/python
    if [ -f $BREW/share/python/virtualenvwrapper.sh ]; then
        source $BREW/share/python/virtualenvwrapper.sh
    fi

fi



# Python virtualenv
if [ -f /usr/local/share/python/virtualenvwrapper.sh ]; then
    . /usr/local/share/python/virtualenvwrapper.sh
fi


# Bash shell driver for 'go' (http://code.google.com/p/go-tool/).
function go {
    export GO_SHELL_SCRIPT=$HOME/.__tmp_go.sh
    /usr/local/bin/python -m go $*
    if [ -f $GO_SHELL_SCRIPT ] ; then
        source $GO_SHELL_SCRIPT
    fi
    unset GO_SHELL_SCRIPT
}

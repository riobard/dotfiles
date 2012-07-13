if [ "$PS1" ]
then
    # .bashrc only applies to interactive shells. Ignore non-interactive shells
    # like scp by detecting that they do not have $PS1 set. 


    if [ `uname` = 'Darwin' ]; then
        # enable `ls` color output
        export CLICOLOR=1
        #export LSCOLORS=ExFxCxDxBxEgEdAbAgAcAd  # bold
        #export LSCOLORS=GxFxCxDxBxGgGdAbAgAcAd  # bold
        #export LSCOLORS=exfxcxdxbxegedabagacad # default

        alias objcc="cc -framework Foundation"
        alias glutc="gcc -O3 -framework GLUT -framework OpenGL -framework Cocoa"
        alias l="ls -CF"

        PS_SYM=''

    elif [ `uname` = 'Linux' ]; then
        alias ls="ls --color=auto"
        alias l="ls -CF --hide=*.pyc"

        PS_SYM='$'

    else
        PS_SYM='%'

    fi

    # use Vi-style keybinding; default is Emacs-style
    #set -o vi

    export LANG="en_US.UTF-8"
    export LANGUAGE="en_US.UTF-8"
    export LC_ALL="en_US.UTF-8"
    export EDITOR=`which vi`

    export PATH=~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH

    export JAVA_OPTS="-Dfile.encoding=utf-8 -Xmx2g"

    export GOROOT=/usr/local/go
    export GOPATH=~/go
    export PATH=$GOROOT/bin:$PATH

    export HOBOXROOT=~/hobox

    alias ..="cd .."
    alias ...="cd ../.."
    alias ....="cd ../../.."

    alias ll="ls -lh"
    alias la="ls -ha"
    alias lla="ls -lha"

    alias grep="grep --color=auto"
    alias egrep="egrep --color=auto"

    alias g="git add -A"
    alias gg="git add -A && git commit"
    alias ggg="git add -A && git commit && git push"

    alias ipy="ipython"
    alias bpy="bpython"
    alias py="python"
    alias tree="tree -C"
    alias vbox='VBoxManage'


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

    INVERSE=$(tput rev)
    BOLD=$(tput bold)
    RESET=$(tput sgr0)

    # Solarized
    BASE03=$(tput setaf 8)
    BASE02=$(tput setaf 0)
    BASE01=$(tput setaf 10)
    BASE00=$(tput setaf 11)
    BASE0=$(tput setaf 12)
    BASE1=$(tput setaf 14)
    BASE2=$(tput setaf 7)
    BASE3=$(tput setaf 3)
    YELLOW=$(tput setaf 3)
    ORANGE=$(tput setaf 9)
    RED=$(tput setaf 1)
    MAGENTA=$(tput setaf 5)
    VIOLET=$(tput setaf 13)
    BLUE=$(tput setaf 4)
    CYAN=$(tput setaf 6)
    GREEN=$(tput setaf 2)

    git_branch() {
        git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
    }

    PS1='\n\[$RESET$MAGENTA\]\u\[$RESET$BASE00\]@\[$RESET$GREEN\]\h\[$RESET$BASE00\]:\[$RESET$BLUE\]\w \[$RESET$ORANGE\]$(git_branch)\[$RESET$BASE00\]$PS_SYM\[$RESET\] '

    if [ `which vimpager 2>/dev/null` ]; then
        export PAGER=`which vimpager`
        alias vless=$PAGER
    fi


    # Homebrew stuff
    if [ `which brew 2>/dev/null` ]; then
        BREW=`brew --prefix`
        if [ -f $BREW/etc/bash_completion ]; then
            source $BREW/etc/bash_completion
        fi
    fi


    it2bg() {
        if [ "$1" = 'light' ]
        then
            echo -e "\033]50;SetProfile=Rio-light\a"
            export ITERM_PROFILE=Rio-light
            export TERM_BG=light
        elif [ "$1" = 'dark' ]
        then
            echo -e "\033]50;SetProfile=Rio-dark\a"
            export ITERM_PROFILE=Rio-dark
            export TERM_BG=dark
        else
            echo "Usage: $FUNCNAME [dark|light]"
        fi
    }

fi

if [ "$PS1" ]
then
    # .bashrc only applies to interactive shells. Ignore non-interactive shells
    # like scp by detecting that they do not have $PS1 set. 


    # use Vi-style keybinding; default is Emacs-style
    #set -o vi

    export LANG="en_US.UTF-8"
    export LANGUAGE="en_US.UTF-8"
    export LC_ALL="en_US.UTF-8"

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

    BLACK=$(tput setaf 0)
    RED=$(tput setaf 1)
    GREEN=$(tput setaf 2)
    YELLOW=$(tput setaf 3)
    BLUE=$(tput setaf 4)
    MAGENTA=$(tput setaf 5)
    CYAN=$(tput setaf 6)
    WHITE=$(tput setaf 7)

    INVERSE=$(tput rev)
    BOLD=$(tput bold)
    RESET=$(tput sgr0)




    if [ `which git 2>/dev/null` ]; then
        git_branch() {
            git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
        }

        #PROMPT_COMMAND="echo $PWD"
        # this will get executed before each PS1 prompot

        # change bash prompt
        #PS1='\[\e[1;36m\]\w\[\e[m\]\[\e[1;00m\]\$\[\e[m\] '
        #PS1='\n\[$RESET$WHITE\]\n(\[$CYAN\]#\!\[$WHITE\])--(\[$RED\]\D{%T}\[$WHITE\])--(\[$RESET$MAGENTA\]\u\[$RESET$WHITE\]@\[$RESET$GREEN\]\h\[$RESET$WHITE\]:\[$RESET$BOLD$WHITE\]\w\[$RESET$WHITE\])$(parse_git_branch)\n\[$RESET$WHITE\]\$ \[$RESET\]'
        
        ### Dark background
        PS1='\n\[$RESET$BOLD$RED\]\u\[$RESET$WHITE\]@\[$RESET$BOLD$GREEN\]\h\[$RESET$WHITE\]:\[$RESET$BOLD$YELLOW\]\w\[$RESET$BOLD$MAGENTA\]$(git_branch)\[$RESET$YELLOW\]\$\[$RESET\] '
        ### Light background
        #PS1='\n\[$RESET$RED\]\u\[$RESET$BLACK\]@\[$RESET$GREEN\]\h\[$RESET$BLACK\]:\[$RESET$BLUE\]\w\[$RESET$MAGENTA\]$(git_branch)\[$RESET$YELLOW\]\$\[$RESET\] '
    else
        ### Dark background
        PS1='\n\[$RESET$BOLD$RED\]\u\[$RESET$WHITE\]@\[$RESET$BOLD$GREEN\]\h\[$RESET$WHITE\]:\[$RESET$BOLD$YELLOW\]\w\[$RESET$YELLOW\]\$\[$RESET\] '
        ### Light background
        #PS1='\n\[$RESET$RED\]\u\[$RESET$BLACK\]@\[$RESET$GREEN\]\h\[$RESET$BLACK\]:\[$RESET$BLUE\]\w\[$RESET$YELLOW\]\$\[$RESET\] '
    fi


    if [ `uname` = 'Darwin' ]; then
        export EDITOR=/usr/local/bin/vim

        # enable `ls` color output
        export CLICOLOR=1
        #export LSCOLORS=ExFxCxDxBxEgEdAbAgAcAd  # bold
        #export LSCOLORS=GxFxCxDxBxGgGdAbAgAcAd  # bold
        #export LSCOLORS=exfxcxdxbxegedabagacad # default

        alias objcc="cc -framework Foundation"
        alias glutc="gcc -O3 -framework GLUT -framework OpenGL -framework Cocoa"

        alias l="ls -CF"

    elif [ `uname` = 'Linux' ]; then
        export EDITOR=/usr/bin/vim

        alias ls="ls --color=auto"
        alias l="ls -CF --hide=*.pyc"
    fi



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

        # Use Homebrew version of Python for virtualenvwrapper
        export VIRTUALENVWRAPPER_PYTHON=$BREW/bin/python
        if [ -f $BREW/share/python/virtualenvwrapper.sh ]; then
            source $BREW/share/python/virtualenvwrapper.sh
        fi

    fi
fi

############### COLOR ##################
export CLICOLOR=1


############### LOCALE #################
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


############### SYSTEM #################
# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Ensure user-installed binaries take precedence
export PATH=/usr/local/sbin:$PATH
#export PATH=/usr/local/bin:$PATH


############## APPS ###################
[[ -r ~/.bash.d/bash-completion ]] && source ~/.bash.d/bash-completion
[[ -r ~/.bash.d/pip ]] && source ~/.bash.d/pip
[[ -r ~/.bash.d/heroku ]] && source ~/.bash.d/heroku
[[ -r ~/.bash.d/vbox ]] && source ~/.bash.d/vbox
[[ -r ~/.bash.d/jenv ]] && source ~/.bash.d/jenv
[[ -r ~/.bash.d/rbenv ]] && source ~/.bash.d/rbenv

############## SCRIPTS ################
export PATH="$PATH:~/scripts"


############### ALIASES ###############
alias la="ls -lhA"
alias cd..="cd .."
alias clearh="clear && printf '\e[3J'"

alias w3g="w3m www.google.com"
alias w3b="w3m -B"

alias spot="spotify-cli play-track"
alias spob="spotify-cli play-album"
alias spoa="spotify-cli play-artist"

alias gita="git add"
alias gitas='function _gitas(){ git add $1; git status; };_gitas'
alias gitb="git branch -v"
alias gitch="git checkout"
alias gitl="git log --graph"
alias gits="git status"


############### PROMPT #################
export GIT_PS1_SHOWDIRTYSTATE=1
[[ -r ~/.bash.d/git-prompt.sh ]] && source ~/.bash.d/git-prompt.sh

export VIRTUAL_ENV_DISABLE_PROMPT=1

if [[ -z $TMUX ]] ; then
    export PROMPT_COMMAND='\
        exit_code=$?;\
        if [[ $exit_code -ne 0 ]] ; then\
            status="\[\e[00;31m\][ $(printf %03d $exit_code) ]\[\e[0m\] ";\
        else\
            status="\[\e[00;32m\][ OK! ]\[\e[0m\] ";\
        fi;\
        git=`__git_ps1 %s`;\
        venv=`basename "$VIRTUAL_ENV"`;\
        if [[ $git ]] || [[ $venv ]] ; then\
            context="($venv | $git) ";\
        else\
            context="";\
        fi;\
    PS1="$status\[\e[00;36m\]\t \[\e[00;34m\][\u@\h] \[\e[00;35m\]$context\[\e[00;37m\]\w\[\e[0m\]\n\\$ ";'
else
    export PROMPT_COMMAND='\
        exit_code=$?;\
        if [[ $exit_code -ne 0 ]] ; then\
            status="\[\e[00;31m\][ $(printf %03d $exit_code) ]\[\e[0m\] ";\
        else\
            status="\[\e[00;32m\][ OK! ]\[\e[0m\] ";\
        fi;\
        git=`__git_ps1 %s`;\
        venv=`basename "$VIRTUAL_ENV"`;\
        if [[ $git ]] || [[ $venv ]] ; then\
            context="($venv | $git) ";\
        else\
            context="";\
        fi;\
    PS1="$status\[\e[00;35m\]$context\[\e[00;37m\]\w\[\e[0m\]\\$ ";'
fi

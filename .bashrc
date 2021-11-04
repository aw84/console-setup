git_current_branch()
{
    b=`git branch --show-current 2>&1`
    case "$?" in
        0)
            echo "($b)"
            ;;
        *)
            echo ""
            ;;
    esac;
}


export PS1="[ \\[\e[0;34m\\]\u\\[\e[m\\]@\\[\e[0;33m\\]\h\\[\e[m\\] ] \\[\e[0;35m\\]\`git_current_branch\`\\[\e[m\\]\n[ \\[\e[0;32m\\]\`pwd\`\\[\e[m\\] ]\n\$ "
export TMOUT=
export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTFILESIZE=10000

bind 'set bell-style none'

#!/bin/sh
if [ -n "$ZSH_VERSION" ]; then
    SHELL_NAME="zsh"
elif [ -n "$BASH_VERSION" ]; then
    SHELL_NAME="bash"
else
    SHELL_NAME="sh"
fi
echo PDE execute with $SHELL_NAME
##
##
if [[ "$(uname)" = "Darwin" ]]; then
    # Mac OS X
    if [[ "$SHELL_NAME" == "zsh" ]]; then
        DIR=$(cd "$(dirname "$(readlink -f "$0")")"; pwd)
    else
        DIR=$(cd "$(dirname "${BASH_ARGV[0]}")"; pwd)
    fi
elif [[ "$(expr substr $(uname -s) 1 5)" = "Linux" ]] ; then
    # GNU/Linux
    echo Linux
elif [[ "$(expr substr $(uname -s) 1 5)" = "MINGW" ]] ; then
    # Windows NT
    DIR=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))
fi
if [ ! -n $DIR ]; then
    echo "Can't support!!!"
    exit 0
fi
echo "Work Directory: "$DIR
if [[ "$SHELL_NAME" == "zsh" ]]; then
    bash --init-file <(echo 'source ~/pde/bin/pdemain')
else
    source $DIR/bin/pdemain $*
fi

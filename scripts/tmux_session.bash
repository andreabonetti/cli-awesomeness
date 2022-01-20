#!/bin/bash

# tmux session
#
# Description:
# Creates a prepared tmux session according
# to the needs of a project. 
#
# Usage:
# ./tmux_example.bash
#

# -------------------------------------------------------
# init
# -------------------------------------------------------

# name of the session
SESSION="my_awesome_project"

# commands
#CMD_SSH="ssh fastestmachine"

# paths
#FOLD_PRJ="/home/my_awesome_project"
#FOLD_SRC="${FOLD_PRJ}/src"


# -------------------------------------------------------
# main
# -------------------------------------------------------

# create tmux session if it doesn't exist
if [ "$SESSION_EXISTS" = "" ]
then

    # start new session detached
    tmux new -d -s $SESSION

    # define index
    declare -i i=0

    # TODO: need to improve it by adding a function that does:
    # - new-window (if i=!0)
    # - rename-window
    # The other commands are kept out of the function as they're specific to each window

    # main (window 0)
    WIN=$SESSION:$i
    tmux rename-window  -t $WIN main
    #tmux send-keys      -t $WIN $CMD_SSH C-m
    #tmux send-keys      -t $WIN "cd Space ${FOLD_PRJ}" C-m

    # src (window 1)
    i=$i+1
    WIN=$SESSION:$i
    tmux new-window     -t $WIN
    tmux rename-window  -t $WIN src
    #tmux send-keys      -t $WIN $CMD_SSH C-m
    #tmux send-keys      -t $WIN "cd Space ${FOLD_SRC}" C-m

    # ...

fi

# attach session
tmux a -t $SESSION:0



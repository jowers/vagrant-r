#! /bin/sh

tmux new-session -d -s jowers-r-studio

tmux new-window -t jowers-r-studio:1 -n "R-Studio"
tmux select-window -t jowers-r-studio:1
tmux split-window -h 'exec R'
tmux split-window -v

tmux -2 attach-session -t jowers-r-studio

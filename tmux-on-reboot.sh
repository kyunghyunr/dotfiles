#!/bin/zsh                                                                                                   

SESSIONNAME="demon"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ] 
 then
	# Use -d to allow the rest of the function to run
    tmux new-session -s $SESSIONNAME -n status -d
    tmux new-window -n style
	tmux select-window -t status
	tmux split-window -h
	tmux select-layout even-horizontal
	tmux split-window -v
	tmux select-pane -t 1
	tmux send-keys -t $SESSIONNAME:status.1 "sudo pm2 log" C-m
	tmux select-pane -t 2
	tmux send-keys -t $SESSIONNAME:status.2 "watch sensors" C-m
	tmux select-pane -t 3
	tmux send-keys -t $SESSIONNAME:status.3 "nyancat" C-m
	tmux select-window -t style
	tmux split-window -h
#	tmux select-layout even-horizontal
#	tmux split-window -v
	tmux select-pane -t 1
	tmux send-keys -t $SESSIONNAME:status.1 "cd /opt/te5t/public/stylesheets" C-m
	tmux send-keys -t $SESSIONNAME:status.1 "node-sass -w scss/style.scss css/style.css --output-style compressed" C-m
	tmux select-pane -t 2
	tmux send-keys -t $SESSIONNAME:status.2 "cd /opt/te5t/public/stylesheets" C-m
	tmux send-keys -t $SESSIONNAME:status.2 "node-sass -w scss/mobile_style.scss css/mobile_style.css --output-style compressed" C-m
#	tmux select-pane -t 3
#	tmux send-keys -t $SESSIONNAME:status.3 "3"
#	tmux select-window -t status
	tmux new-session -s live -n temp -d 
fi

tmux attach -t live

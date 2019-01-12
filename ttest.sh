#!/bin/bash
string=`tmux list-session`
directory_name=`basename $PWD`
if [[ $string == *$directory_name* ]]
then
  tmux new-session -As $directory_name
else
  tmux -2 new-session -As $directory_name -d

  tmux split-window -v
  tmux select-pane -t 2
  tmux resize-pane -t 2 -y 19

  tmux split-window -h
  tmux resize-pane -t 2 -x 65

  tmux select-pane -t 2
  tmux split-window -v
  tmux resize-pane -t 2 -y 2

  tmux select-pane -t 3
  tmux split-window -v
  tmux resize-pane -t 3 -y 2

  tmux select-pane -t 4
  tmux split-window -v
  tmux resize-pane -t 4 -y 3
  
  tmux send-keys -t 2 "solrtest" C-m
  tmux send-keys -t 3 "fctest" C-m
#  tmux send-keys -t 4 "bundle exec sidekiq" C-m
#  tmux send-keys -t 5 "rs" C-m
  
  tmux -2 attach-session -t $directory_name
fi

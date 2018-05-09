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
  tmux split-window -h
  tmux select-pane -t 2
  tmux send-keys "bundle exec sidekiq" C-m
  tmux split-window -v
  tmux send-keys "SKIP_RAILS=true bundle exec rails hydra:server" C-m
  tmux split-window -v
  tmux select-pane -t 1
  tmux -2 attach-session -t $directory_name
fi

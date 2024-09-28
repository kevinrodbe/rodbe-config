if [[ -z "$TMUX" ]] ;then
    ID="`tmux ls | grep -vm1 attached | cut -d: -f1`" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
        tmux new-session -s 1-main -d
        # tmux split-window -v
        # tmux split-window -t 2 -h
        # tmux send-keys -t 1 'p && clear' C-j
        # tmux send-keys -t 2 'p && clear' C-m
        # tmux send-keys -t 3 'p && clear' enter
        tmux select-pane -t 1
        tmux attach -t 1-main
    else
        tmux attach-session -t "$ID" # if available attach to it
    fi
fi


function p4() {
  tmux split-window -v
  tmux split-window -v
  tmux select-pane -t 1
  tmux split-window -v
  if [ "$1" ]
    then
      tmux renamew "$1"
  fi
}

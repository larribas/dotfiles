# exit the script if any statement returns a non-true return value
set -e

_toggle_mouse() {
 if tmux show -g -w | grep -q mode-mouse; then
   old=$(tmux show -g -w | grep mode-mouse | cut -d' ' -f2)
   new=""

   if [ "$old" = "on" ]; then
     new="off"
   else
     new="on"
   fi

   tmux set -g mode-mouse $new \;\
        set -g mouse-resize-pane $new \;\
        set -g mouse-select-pane $new \;\
        set -g mouse-select-window $new \;\
        display "mouse: $new"
 else
   old=$(tmux show -g | grep mouse | head -n 1 | cut -d' ' -f2)
   new=""

   if [ "$old" = "on" ]; then
     new="off"
   else
     new="on"
   fi

   tmux set -g mouse $new \;\
        display "mouse: $new"
 fi
}

"$@"

set fish_greeting ""

. ~/.config/omf/aliases.fish

if test -e ~/.config/omf/exclusive_aliases.fish
    echo "Loading exclusive aliases for this computer"
    . ~/.config/omf/exclusive_aliases.fish
end

. ~/.config/omf/functions/ssh_agent.fish


# Main editor
set -gx VISUAL emacs
set -gx EDITOR emacs

# Javascript
set -gx PATH ./node_modules/.bin $HOME/.config/yarn/global/node_modules/.bin $PATH

# emacs ansi-term support
if test -n "$EMACS"
  set -x TERM eterm-color
end

# this function may be required
function fish_title
  true
end

. ~/.config/omf/aliases.fish

if test -e ~/.config/omf/exclusive_aliases.fish
    echo "Loading exclusive aliases for this computer"
    . ~/.config/omf/exclusive_aliases.fish
end

. ~/.config/omf/functions/ssh_agent.fish


# Main editor
set -gx VISUAL nvim
set -gx EDITOR nvim

# Javascript
set -gx PATH ./node_modules/.bin $HOME/.config/yarn/global/node_modules/.bin $PATH

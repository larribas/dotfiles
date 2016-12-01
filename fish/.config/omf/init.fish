. ~/.config/omf/aliases.fish

if test -e ~/.config/omf/exclusive_aliases.fish
    echo "Loading exclusive aliases for this computer"
    . ~/.config/omf/exclusive_aliases.fish
end


# Main editor
set -gx VISUAL nvim
set -gx EDITOR nvim

# Ruby
source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish

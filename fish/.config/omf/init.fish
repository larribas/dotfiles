set fish_greeting ""

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

# Haskell
set -gx PATH $HOME/.local/bin $PATH

# Rust
set -gx PATH $HOME/.cargo/bin $PATH

# Go
set -gx PATH /usr/local/go/bin $PATH

# Netlify
set -gx PATH $HOME/.netlify/helper/bin $PATH

# Python
set -gx PATH $HOME/.pyenv/bin $PATH
set -gx PATH $HOME/.pyenv/shims $PATH
pyenv rehash

# this function may be required
function fish_title
  true
end

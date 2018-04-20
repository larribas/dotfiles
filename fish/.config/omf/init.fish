. ~/.config/omf/aliases.fish

if test -e ~/.config/omf/exclusive_aliases.fish
    echo "Loading exclusive aliases for this computer"
    . ~/.config/omf/exclusive_aliases.fish
end

. ~/.config/omf/functions/ssh_agent.fish


# Main editor
set -gx VISUAL nvim
set -gx EDITOR nvim

# Ruby
source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish

# Go
set -gx GOPATH ~/Dev/go
set -gx GOBIN ~/Dev/go/bin
set -gx PATH $GOBIN /usr/local/go/bin $PATH

# Haskell
set -gx PATH $PATH /home/larribas/.local/bin

# gcloud
set fish_user_paths /Users/loa/google-cloud-sdk/bin
set -x MANPATH /Users/loa/google-cloud-sdk/help/man /usr/local/share/man /usr/share/man /opt/x11/share/man

# Javascript
set -gx PATH $HOME/.config/yarn/global/node_modules/.bin $PATH

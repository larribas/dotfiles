# Load all aliases
. ~/.config/omf/aliases.fish

# Main editor
set -gx VISUAL nvim
set -gx EDITOR nvim

# SSH Agent
if test -z "$SSH_ENV"
    setenv SSH_ENV $HOME/.ssh/environment
end
if not __ssh_agent_is_started
    __ssh_agent_start
end

# Ruby
source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish

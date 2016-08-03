# DEFAULT EDITOR
set -gx EDITOR 'vim'

# HOMEBREW
set -gx PATH $PATH "/usr/local/sbin"

# RBENV
status --is-interactive; and . (rbenv init -|psub)

# GOLANG
set -gx GOPATH "~/Dev/go"
set -gx PATH $PATH "/usr/local/go/bin" "$GOPATH/bin"


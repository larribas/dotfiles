# DEFAULT EDITOR
export EDITOR='vim'

# HOMEBREW
export PATH=$PATH:/usr/local/sbin

# RBENV
status --is-interactive; and . (rbenv init -|psub)

# GOLANG
export GOPATH=~/Dev/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin


# Unix
abbr --add mkdir 'mkdir -p'
abbr --add e 'eval $EDITOR'

# Pbcopy on linux
switch (uname)
case Darwin 
  abbr --add cpkey 'pbcopy < ~/.ssh/id_rsa.pub'
case Linux
  abbr --add pbcopy 'xclip -sel clip'
  abbr --add cpkey 'xclip -sel clip < ~/.ssh/id_rsa.pub'
end

# Docker
abbr --add dc 'docker-compose'

# Git
abbr g 'git'
abbr ga 'git add'
abbr gc 'git commit -m'
abbr gco 'git checkout'
abbr gd 'git diff'
abbr gdc 'git diff --cached'
abbr gf 'git fetch --all'
abbr gl 'git log --pretty=format:"%C(yellow)%h%Cred%d %Creset%s%Cblue [%cn]" --decorate'
abbr gm 'git merge'
abbr gp 'git push'
abbr gpf 'git push --force'
abbr gpl 'git pull'
abbr gs 'git status'
abbr gst 'git stash'
abbr gca 'git commit -a --amend --no-edit'
abbr gqs '/usr/local/bin/git-quick-stats'



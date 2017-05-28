# Unix
abbr -a mkdir='mkdir -p'
abbr -a e='eval $EDITOR'

# Ruby
abbr -a bi='bundle install'
abbr -a be='bundle exec'

# Pbcopy on linux
switch (uname)
case Darwin 
  abbr -a cpkey='pbcopy < ~/.ssh/id_rsa.pub'
case Linux
  abbr -a pbcopy='xclip -sel clip'
  abbr -a cpkey='xclip -sel clip < ~/.ssh/id_rsa.pub'
end




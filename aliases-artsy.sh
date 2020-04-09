# see aliases.sh for ruby/js workflow stuff

# projects
alias hsc="hokusai staging run 'bundle exec rails c' --tty --verbose"
alias hpc="hokusai production run 'bundle exec rails c' --tty --verbose"
alias gravity="cd ~/src/artsy/gravity"  # && nvm use 0.10
alias sc="gravity && hsc"
alias pc="gravity && hpc"
alias emission="cd ~/src/artsy/emission && nvm use"
alias force="cd ~/src/artsy/force && nvm use"
alias helix="cd ~/src/artsy/helix"
alias impulse="cd ~/src/artsy/impulse"
alias kaws="cd ~/src/artsy/kaws && nvm use"
alias kinetic="cd ~/src/artsy/kinetic"
alias madmin="cd ~/src/artsy/admin_metadata"
alias metaphysics="cd ~/src/artsy/metaphysics && nvm use"
alias mp="metaphysics"
alias palette="cd ~/src/artsy/palette"
alias radiation="cd ~/src/artsy/radiation"
alias reaction="cd ~/src/artsy/reaction && nvm use"
alias rosalind="cd ~/src/artsy/rosalind && nvm use"
alias vibrations="cd ~/src/artsy/vibrations"
alias volt="cd ~/src/artsy/volt && nvm use 10.15.1"

# journalling
alias j="jrnl"
alias jt="jrnl -on today"
alias jy="jrnl -on yesterday"
alias jst="jrnl -on today --export json | jq '.entries[].title' -r | perl -pe 's/@/@​/g; s/^/❧ /'"
alias jsy="jrnl -on yesterday --export json | jq '.entries[].title' -r | perl -pe 's/@/@​/g; s/^/❧ /'"
alias jopen="jq '.journals.default'< ~/.jrnl_config | xargs code"
alias jtags="jrnl --tags"
alias jtil="jrnl @til"
alias jr="jrnl-reminder"

# tunnelblick
alias tbs="tunnelblick disconnect artsy-production && sleep 2; tunnelblick connect artsy-staging && sleep 5"
alias tbp="tunnelblick disconnect artsy-staging && sleep 2; tunnelblick connect artsy-production && sleep 5"
alias tbd="tunnelblick disconnect all"

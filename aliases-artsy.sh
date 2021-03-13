# see aliases.sh for ruby/js workflow stuff

# k8s
alias k8s-token="aws-iam-authenticator token -i $(kubectl config get-clusters | grep kubernetes-production) -r arn:aws:iam::585031190124:role/KubernetesDev | jq -r '.status.token'"

# hokusai
alias hse="hokusai staging env get"
alias hpe="hokusai production env get"
alias hsr="hokusai staging run --tty --verbose"
alias hpr="hokusai production run --tty --verbose"
alias hsc="hokusai staging run 'bundle exec rails c' --tty --verbose"
alias hpc="hokusai production run 'bundle exec rails c' --tty --verbose"
alias hsdb="hokusai staging run 'bundle exec rails dbconsole' --tty --verbose"
alias hpdb="hokusai production run 'bundle exec rails dbconsole' --tty --verbose"

# projects
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
alias volt="cd ~/src/artsy/volt && nvm use 12"
alias vortex="cd ~/src/artsy/vortex"
alias eigen="cd ~/src/artsy/eigen"

# journalling
alias j="jrnl"
alias jt="jrnl -on today"
alias jy="jrnl -on yesterday"
alias jfri="jrnl -on friday"
alias jst="jrnl -on today --export json | jq '.entries[].title' -r | perl -pe 's/@/@​/g; s/^/❧ /'"
alias jsy="jrnl -on yesterday --export json | jq '.entries[].title' -r | perl -pe 's/@/@​/g; s/^/❧ /'"
alias jsfri="jrnl -on friday --export json | jq '.entries[].title' -r | perl -pe 's/@/@​/g; s/^/❧ /'"
alias jopen="jq '.journals.default'< ~/.jrnl_config | xargs code"
alias jtags="jrnl --tags"
alias jtil="jrnl @til"
alias jr="jrnl-reminder"
jag () { ag $@ "/Users/roop/Dropbox (Personal)/Artsy/artsy-journal.jrnl.txt" }
alias jsearch="jag"

# tunnelblick
alias tbs="tunnelblick disconnect artsy-production && sleep 2; tunnelblick connect artsy-staging && sleep 5"
alias tbp="tunnelblick disconnect artsy-staging && sleep 2; tunnelblick connect artsy-production && sleep 5"
alias tbd="tunnelblick disconnect all"

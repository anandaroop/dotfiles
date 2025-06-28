# see aliases.sh for ruby/js workflow stuff

# k8s
alias k8s="aws-iam-authenticator token -i $(kubectl config get-contexts staging --no-headers=true | sed 's/^.*kube/kube/' | awk '{print $1}') -r arn:aws:iam::585031190124:role/KubernetesDev | jq -r .status.token | pbcopy"
alias k8p="aws-iam-authenticator token -i $(kubectl config get-contexts production --no-headers=true | sed 's/^.*kube/kube/' | awk '{print $1}') -r arn:aws:iam::585031190124:role/KubernetesDev | jq -r .status.token | pbcopy"

# hokusai
alias hse="hokusai staging env get"
alias hpe="hokusai production env get"
alias hsr="hokusai staging run --tty --verbose"
alias hpr="hokusai production run --tty --verbose"
alias hsc="hokusai staging run 'bundle exec rails c -- --noautocomplete' --tty --verbose"
alias hpc="hokusai production run 'bundle exec rails c -- --noautocomplete' --tty --verbose"
alias hsdb="hokusai staging run 'bundle exec rails dbconsole' --tty --verbose"
alias hpdb="hokusai production run 'bundle exec rails dbconsole' --tty --verbose"
alias dd2sha="! f() { hokusai registry images --limit 20 --digests --filter-tags prod | grep \$1 | cut -d \| -f 3 | cut -c2-41 }; f"

# projects
alias gfa="git fetch artsy"
alias maybe-nvm="nvm use 2> /dev/null || echo Skipping nvm"
alias gravity="cd ~/src/artsy/gravity"
alias sc="gravity && hsc"
alias pc="gravity && hpc"
alias metaphysics="cd ~/src/artsy/metaphysics && maybe-nvm"
alias mp="metaphysics"
alias force="cd ~/src/artsy/force && maybe-nvm"
alias eigen="cd ~/src/artsy/eigen && maybe-nvm"
alias forque="cd ~/src/artsy/forque && maybe-nvm"
alias helix="cd ~/src/artsy/helix"
alias impulse="cd ~/src/artsy/impulse"
alias integrity="cd ~/src/artsy/integrity && maybe-nvm"
alias kaws="cd ~/src/artsy/kaws && maybe-nvm"
alias kinetic="cd ~/src/artsy/kinetic"
alias madmin="cd ~/src/artsy/admin_metadata"
alias metaphysics="cd ~/src/artsy/metaphysics && maybe-nvm"
alias mp="metaphysics"
alias palette="cd ~/src/artsy/palette"
alias pulse="cd ~/src/artsy/pulse && maybe-nvm"
alias radiation="cd ~/src/artsy/radiation"
alias reaction="cd ~/src/artsy/reaction && maybe-nvm"
alias rosalind="cd ~/src/artsy/rosalind && maybe-nvm"
alias vibrations="cd ~/src/artsy/vibrations"
alias volt="cd ~/src/artsy/volt && maybe-nvm"
alias vortex="cd ~/src/artsy/vortex"
alias eigen="cd ~/src/artsy/eigen && maybe-nvm"
alias forque="cd ~/src/artsy/forque && maybe-nvm"

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
tfind () { yarn translations | grep "$@" | cut -f 1 -d\ | xargs -I path ag path src }

# tunnelblick
alias tbs="tunnelblick disconnect artsy-production && sleep 2; tunnelblick connect artsy-staging && sleep 5"
alias tbp="tunnelblick disconnect artsy-staging && sleep 2; tunnelblick connect artsy-production && sleep 5"
alias tbd="tunnelblick disconnect all"

# integrity
alias fxe2e="cd ~/src/artsy/integrity && git pull artsy main && yarn cypress run --spec \"cypress/e2e/find_and_explore/*\""

# pre m1
# alias es6up="docker run -it -p 9200:9200 -e http.cors.enabled=true -e http.cors.allow-origin='*' elasticsearch:6.8.23"

# post m1
alias es6up="docker run -it -p 9200:9200 -e http.cors.enabled=true -e http.cors.allow-origin='*' -e \"discovery.type=single-node\" --platform linux/amd64 elasticsearch:6.8.23"
alias es7up="docker run -it -p 9200:9200 -e http.cors.enabled=true -e http.cors.allow-origin='*' -e \"discovery.type=single-node\" elasticsearch:7.17.12"
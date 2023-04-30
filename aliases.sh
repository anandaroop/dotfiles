# Use this file for shareable aliases only.
#
# Stuff specific to the local system should go in dotfiles/local.sh

alias dotfiles="cd ~/src/dotfiles && code ."

# filesystem
alias ..="cd .."
alias l="ls -lF"
alias ll="ls -laF"
alias lt="ls -laFtr"
alias tree="tree -AC"
alias files="find . -type f | grep -v DS_ | datedump | sort"

# git
alias gst="git status"
alias gco="git checkout"
alias gcm="git checkout main 2> /dev/null || git checkout master 2> /dev/null; git branch --show-current"
alias gpum="git pull upstream main 2> /dev/null || git pull upstream master 2> /dev/null; git branch --show-current"
alias gpam="git pull artsy main 2> /dev/null || git pull artsy master 2> /dev/null; git branch --show-current"
alias gdf="git diff"
alias gdc="git diff --cached"
alias gcb="git checkout -b"
alias gri="git rebase -i"
alias grm="git rebase main 2> /dev/null || git rebase master 2> /dev/null; git branch --show-current"
alias grim="(git branch --list | grep main) && gri main; (git branch --list | grep master) && gri master; git branch --show-current"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gca="git commit --amend"
alias gcane="git commit --amend --no-edit"
alias grs="git reset" #soft
alias grh="git reset --hard"
alias gstale.old='for k in `git branch|perl -pe s/^..//`;do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k|head -n 1`\\t$k;done|sort -r'
alias gstale='git stale'
alias gwho="git who"
alias gwhat='git what'
alias gwhen='git when'
alias glog='git log --graph --pretty="%C(yellow)%h%Creset %s%C(red)%d%Creset"'
alias gmerges='git log --merges --invert-grep --grep="Update metaphysics schema" --pretty="%h %C(blue)%ci %C(red)%s"'

# webdev
alias simpleserver="python -m SimpleHTTPServer"
alias ss="simpleserver"

# ruby
alias bex="bundle exec"
alias bgu="bundle exec guard"
alias rfebgu="RSPEC_FOCUS_ENABLED=1 bundle exec guard"
alias frbe="foreman run bundle exec"

# javascript
alias yrs="yarn run storybook"
alias yarnlinks="find node_modules -maxdepth 2 -type l | grep -v -E '\.bin'"

# misc
alias beep="osascript -e 'beep 3'"
alias saydone="osascript -e 'say \"done\"'"
alias repairmongo="mongod --repair --dbpath /usr/local/var/mongodb"
alias clearcaches="redis-cli flushall && echo "flush_all" | nc localhost 11211"

# projects
alias pofo="cd ~/src/me/portfolio22 && nvm use"
alias brain="cd ~/src/me/brain"


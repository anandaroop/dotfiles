alias dotfiles="cd ~/src/dotfiles"

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
alias gcm="git checkout master"
alias gpum="git pull upstream master"
alias gpam="git pull artsy master"
alias gdf="git diff"
alias gdc="git diff --cached"
alias gcb="git checkout -b"
alias gri="git rebase -i"
alias grim="git rebase -i master"
alias gdrb="git rebase -i --exec \"git duet-commit --amend\""
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gstale='for k in `git branch|perl -pe s/^..//`;do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k|head -n 1`\\t$k;done|sort -r'
alias grh="git reset --hard"
alias gwho="git log --pretty=\"%Cblue%cr%Creset %Cred%an %Cgreen%s\""
alias glog='git log --graph --pretty="%C(yellow)%h%Creset %s%C(red)%d%Creset"'
alias gfiles='git log --name-status --pretty="%n%Cgreen%C(bold)%s%n%Cblue%cd%Creset %C(#eeeeee)%h" --date=relative'

# webdev
alias simpleserver="python -m SimpleHTTPServer"
alias ss="simpleserver"

# ruby
alias bex="bundle exec"
alias bgu="bundle exec guard"
alias rfebgu="RSPEC_FOCUS_ENABLED=1 bundle exec guard"

# javascript
alias yrs="yarn run storybook"
alias yarnlinks="find node_modules -maxdepth 2 -type l | grep -v -E '\.bin'"

# misc
alias beep="osascript -e 'beep 3'"
alias saydone="osascript -e 'say \"done\"'"

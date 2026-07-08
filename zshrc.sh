################
### TERMINAL ###
################

# enable starship (after brew install starship)
eval "$(starship init zsh)"

# colorize terminal output
export CLICOLOR=1

# fix zsh alt-backspace issue by redefining WORDCHARS and
# removing unwanted chars such as / from this list
export WORDCHARS="*?_[]~&;!#$%^"

# allow #-comments in shell
setopt interactivecomments

################
### DOTFILES ###
################

# source dotfile aliases
source ~/src/dotfiles/aliases.sh
source ~/src/dotfiles/aliases-artsy.sh

# source non-committed secrets files
source ~/src/dotfiles/secrets.sh
source ~/src/dotfiles/secrets-artsy.sh

# source non-committed local config
source ~/src/dotfiles/local.sh

# add dotfile bin scripts to path
export PATH=~/src/dotfiles/bin:~/bin:$PATH

################
## LANGUAGES ###
################

# mise-en-place
eval "$(mise activate zsh)"

# pyenv 2025
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"

# pipx for python based cli tools with isolated environments
export PATH="/Users/roop/.local/bin:$PATH"

################
##### MISC #####
################

# customize bat pager
export BAT_THEME=GitHub

# non-standard Homebrew paths
export PATH="/opt/homebrew/opt/imagemagick@6/bin:$PATH"
export PATH="/opt/homebrew/opt/mongodb-community@7.0/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@14/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# export PATH="/opt/homebrew/opt/mongodb-community@4.4/bin:$PATH"
# export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"
# export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH" # commented out in favor of asdf's java dep for Eigen

# android dev
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
# export JAVA_HOME=/Users/roop/.asdf/installs/java/zulu-17.50.19

# bun completions
[ -s "/Users/roop/.bun/_bun" ] && source "/Users/roop/.bun/_bun"

# deno binaries (e.g. vt for val town)
export PATH="$PATH:/Users/roop/.deno/bin"

### PYENV ###

# see https://artsy.slack.com/archives/CP9P4KR35/p1748964351453869?thread_ts=1748897836.786939&cid=CP9P4KR35

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/roop/.lmstudio/bin"
# End of LM Studio CLI section


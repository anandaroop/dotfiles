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

# enable asdf (preferred over chruby and nvm now)
if [ -d $HOME/.asdf ]; then
  export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
  # export ASDF_DATA_DIR=/Users/roop/.asdf
  # export PATH="$ASDF_DATA_DIR/shims:$PATH"

  # # append completions to fpath
  # fpath=(/opt/homebrew/share/zsh/site-functions $path)
  # fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
  # # initialise completions with ZSH's compinit
  # autoload -Uz compinit && compinit

  # # configure asdf
  # . "$HOME/.asdf/asdf.sh"
  # # append completions to fpath
  # fpath=(${ASDF_DIR}/completions $fpath)
  # # initialise completions with ZSH's compinit
  # autoload -Uz compinit && compinit
else
  # enable chruby (if installed via brew install chruby)
  if [ -d /usr/local/opt/chruby ]; then
    source /usr/local/opt/chruby/share/chruby/chruby.sh
    source /usr/local/opt/chruby/share/chruby/auto.sh
    chruby ruby-2.7.4
  fi

  # enable nvm (if installed via default curl method)
  if [ -d $HOME/.nvm ]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  fi
fi

# enable pyenv
# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init -)"
# fi

# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# pyenv 2025
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"

################
##### MISC #####
################

# customize bat pager
export BAT_THEME=GitHub

# non-standard Homebrew paths
export PATH="/opt/homebrew/opt/imagemagick@6/bin:$PATH"
export PATH="/opt/homebrew/opt/mongodb-community@4.4/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH" # commented out in favor of asdf's java dep for Eigen

# android dev
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
# export JAVA_HOME=/Users/roop/.asdf/installs/java/zulu-17.50.19

# bun completions
[ -s "/Users/roop/.bun/_bun" ] && source "/Users/roop/.bun/_bun"

### PYENV ###

# OLD via homebrew
#
# # enable pyenv
# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init -)"
# fi
#
# # pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# NEW see https://artsy.slack.com/archives/CP9P4KR35/p1748964351453869?thread_ts=1748897836.786939&cid=CP9P4KR35

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

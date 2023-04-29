# enable starship (after brew install starship)
eval "$(starship init zsh)"

# colorize terminal output
export CLICOLOR=1

# fix zsh alt-backspace issue by redefining WORDCHARS and
# removing unwanted chars such as / from this list
export WORDCHARS="*?_[]~&;!#$%^"

# customize bat pager
export BAT_THEME=GitHub

# allow #-comments in shell
setopt interactivecomments

### DOTFILES ###

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

# android dev
# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# configure asdf
. "$HOME/.asdf/asdf.sh"
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# enable pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

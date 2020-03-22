# enable chruby (after brew install chruby)
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# enable nvm (after installing via default curl method)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# enable starship (after brew install starship)
eval "$(starship init zsh)"

# colorize terminal output
export CLICOLOR=1

# fix zsh alt-backspace issue by redefining WORDCHARS and
# removing unwanted chars such as / from this list
export WORDCHARS="*?_-.[]~=&;!#$%^(){}<>"

# source dotfile aliases
source ~/src/dotfiles/aliases.sh
source ~/src/dotfiles/aliases-artsy.sh

# source non-committed secrets files
source ~/src/dotfiles/secrets.sh
source ~/src/dotfiles/secrets-artsy.sh

# source non-committed local config
source ~/src/dotfiles/local.sh

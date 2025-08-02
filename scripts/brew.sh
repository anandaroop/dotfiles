# run it; or more likely just refer to this and update it

# tricked out zsh prompt
brew install starship

# dev tools
brew install ag
brew install awscli
brew install bat
brew install csvkit
brew install detect-secrets
brew install ffmpeg
brew install gh
brew install gifski
brew install glow # ?
brew install htmlq
brew install httpie
brew install jq
# brew install llm # ?
brew install mise # ?
brew install ripgrep
brew install tree
brew install watchexec
brew install watchman
brew install yarn
brew install difftastic

# geo tools
brew install gdal
brew install proj
brew cask install qgis # FAILED with checksum err

# See artsy/gravity/Brewfile to confirm these services and versions
brew install redis
brew install memcached
brew install postgresql

brew tap mongodb/brew
brew install mongodb-community@4.4 # see Gravity Brewfile for correct version - also http://code.dblock.org/2016/06/03/very-slow-mongodb-in-development-and-test.html

brew tap artsy/formulas
brew install artsy/formulas/elasticsearch@6 # check version, also https://artsy.slack.com/archives/CP9P4KR35/p1740404276437939?thread_ts=1740404214.886849&cid=CP9P4KR35

brew install imagemagick@6

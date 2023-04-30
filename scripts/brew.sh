# run it; or more likely just refer to this and update it

# tricked out zsh prompt
brew install starship

# dev tools
brew install ag
brew install awscli
brew install bat
brew install csvkit
brew install gh
brew install httpie
brew install insomnia
brew install jq
brew install tree
brew install watchman
brew install yarn

# geo tools
brew install gdal
brew cask install qgis # FAILED with checksum err

# See artsy/gravity/Brewfile to confirm these services and versions
brew install redis
brew install memcached
brew install postgresql

brew tap mongodb/brew
brew install mongodb-community@4.4 # see Gravity Brewfile for correct version - also http://code.dblock.org/2016/06/03/very-slow-mongodb-in-development-and-test.html

brew tap artsy/formulas
brew install artsy/formulas/elasticsearch@6

brew install imagemagick@6

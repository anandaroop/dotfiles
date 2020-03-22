# run it; or more likely just refer to this and update it

# tricked out zsh prompt
brew install starship

# dev tools
brew install ag
brew install awscli
brew install bat
brew install chruby
brew install csvkit
brew install httpie
brew install hub
brew install imagemagick
brew install jq
brew install jrnl
brew install ruby-install
brew install the_silver_searcher
brew install tidy-html5
brew install tree
brew install watchman
brew install yarn

# heroku cli
brew tap heroku/brew && brew install heroku

# artsy
brew tap artsy/formulas
brew install copy_env
brew install deploy_pr
brew install hokusai

# geo tools
brew install gdal
brew cask install qgis

# services
brew install mongodb # 4.0; http://code.dblock.org/2016/06/03/very-slow-mongodb-in-development-and-test.html
brew install redis # 5.0
brew install memcached # 1.4
brew install postgresql # 10.6
brew cask install java # 9?
brew install elasticsearch # 5.6

brew services start mongodb
brew services start postgresql
brew services start redis
brew services start memcached
brew services start elasticsearch

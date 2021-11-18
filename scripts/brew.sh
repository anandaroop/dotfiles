# run it; or more likely just refer to this and update it

# tricked out zsh prompt
brew install starship

# dev tools
brew cask install docker
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
brew install tidy-html5
brew install tree
brew install watchman
brew install yarn

# heroku cli
brew tap heroku/brew && brew install heroku

# artsy
brew tap artsy/formulas
brew install copy_env
#brew install deploy_pr

# artsy/hokusai -- homebrew results not great :/ see readme
# brew install pyenv pipenv
# brew install hokusai

# geo tools
brew install gdal
brew cask install qgis # FAILED with checksum err

# services
brew install redis # 5.0
brew install memcached # 1.4
brew install postgresql # 10.6

brew tap mongodb/brew
brew install mongodb-community # 4.0; http://code.dblock.org/2016/06/03/very-slow-mongodb-in-development-and-test.html

brew install homebrew/cask-versions/adoptopenjdk8
brew install elasticsearch@5.6 # 5.6

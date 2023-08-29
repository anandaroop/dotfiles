# Dotfiles

These are my dotfiles and my setup steps for fresh OS X installations.

Here is a log of my most recent setup (August 2023):

### Before wiping an older machine

Keep copies of:
  ```
  ~/.ssh
  ~/src/dotfiles/secrets{,-artsy}.sh
  ~/src/dotfiles/local.sh
  ~/Library/Scripts
  Insomnia settings
  ~/Desktop files and folders, if needed
  Custom Projections from Avenza dir
  ```

## Basic apps

- Install [Bitwarden](https://bitwarden.com/download/) for personal+family creds
- Install [1Password](https://1password.com/downloads/mac/) for work creds
  - ~~Choose Dropbox sync to enable the Primary vault, sync'd from .opvault in local Dropbox folder~~ killed in 1p v8
  - Add Artsy team from 1Password > Accounts
    - Use "Scan setup code" QR from another device to streamline this
  - use "Personal" vault that comes with Artsy team *only* for user-specific work accounts with Artsy-related services, not for personal accounts
- Disable password autofill in
  - Safari > Preferences > Autofill
  - chrome://settings/passwords
- Install ~~Divvy from App Store (personal Apple acct)~~ Raycast from web
- Install Slack from App Store
- Install [Lunar](https://lunar.fyi) from website
- Install [Dropbox](https://www.dropbox.com/install)
  - Add personal account only


## Design environment

- Adobe Creative Cloud
  - Latest Illustrator
  - Latest Photoshop
- Avenza
  - MAPublisher
  - Geographic Imager
  - Custom Projections

## Dev environment

- Customize Terminal
  - Text > Font: 120x36 20pt Monaco w 1.15 line spacing****
  - Keyboard: Use Option as meta key
  - Window > Resume: No restoring text
  - Shell: Close if clean exit
  - Advanced: No audible bell; visual always
- Install XCode
  - Prefer [developer.apple.com](https://developer.apple.com/download) over App Store
  - Maybe install latest major version, but penultimate minor version? (14.2 instead of 14.3, as of today)
- Install VS Code
  - Install `code` shell command from within app
- Set up [Github ssh access](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh) with new keypair
  - and copy work keypair from 1password
- Install [Fira Code](https://github.com/tonsky/FiraCode)
  - TTF flavor
  - Edit VS Code settings to use it w/ ligatures
  - Set it to Terminal font, to be used by Starship prompt
- Install anandaroop/dotfiles
  - run script/setup.sh
    - to link to shared .zshrc and .gitconfig
    - on term init, will complain about some as-yet uninstalled things e.g. asdf
- Install Homebrew via install script
  - run or refer to script/brew.sh
    - to get all Homebrew goodies
    - incl chruby, Starship prompt and many others
- Install [asdf](https://asdf-vm.com)  and plugins for
  - [nodejs](https://github.com/asdf-vm/asdf-nodejs)
    ```sh
    brew install <find prerequisites on GH plugin page>
    asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
    asdf list all nodejs
    asdf install nodejs 18.15.0 # e.g
    ```
  - [ruby](https://github.com/asdf-vm/asdf-ruby)
    ```sh
    brew install <find prerequisites on GH plugin page>
    asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
    asdf list all ruby
    asdf install ruby 3.0.2 # e.g
    ```
- Install [pyenv](https://github.com/pyenv/pyenv) for Python
  ```sh
  # see ^instructions, but currently
  brew install pyenv
  
  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
  echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
  echo 'eval "$(pyenv init -)"' >> ~/.zshrc

  rehash
  pyenv install 3.10.11 # e.g.
  pyenv global 3.10.11 # e.g.

  # see https://github.com/pyenv/pyenv-virtualenv for virtualenv plugin also
  ```
- Install Docker via offical dmg
  - And maybe Rosetta 2 for Apple Silicon (see [known issues](https://docs.docker.com/desktop/troubleshoot/known-issues/)) 

- Install Hokusai, as of 2023…
  ```sh
  brew tap artsy/formulas
  brew install hokusai

  # this seems to work with v0.6.2...
  brew install aws-iam-authenticator
  
  # ...even though potential/setup has this pin to v0.5.3
  #curl https://raw.githubusercontent.com/Homebrew/homebrew-core/f40a459c047f2831743dac5d779658e7740a500c/Formula/aws-iam-authenticator.rb > $(find $(brew --repository) -name aws-iam-authenticator.rb) && brew reinstall aws-iam-authenticator
    
  aws configure # maybe?
  hokusai configure --kubectl-version 1.19.16 --s3-bucket artsy-citadel --s3-key k8s/config-dev
  ```

- ~Solargraph esp for Gravity~ hold — breaks too often
  <details>
  <summary>old steps</summary>
    - already in bundle, so that gets installed anyway
    - BUT solargraph's zsh path is probably fubar'd and looking for the solargraph gem in the system default ruby location
    - so install solargraph there
      - go to a dir without a .ruby-version
      - confirm `which ruby` ==> `/usr/bin/ruby`
      - `sudo gem install solargraph`
      - maybe some `sudo gem install bundler:x.y.z` needed to based on VSC output tab
      - use a minimal workspace settings such as

        ```json
        {
            "[ruby]": {
                "editor.formatOnSave": true
            },
            "solargraph.formatting": true
        }
        ```
  </details>

- Install [Tunnelblick and ovpn profiles](https://github.com/artsy/infrastructure/blob/main/vpn.md#vpn)
- Pairing
  ```sh
  yarn global add @jonallured/pear
  curl https://raw.githubusercontent.com/artsy/pear-data/main/.pear-data --output ~/.pear-data
  ```

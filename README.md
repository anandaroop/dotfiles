# Dotfiles

These are my dotfiles and my setup steps for fresh OS X installations.

Here is a log of my most recent setup (Apr 2023):

### Before wiping an older machine

Keep copies of:
  ```
  ~/.ssh
  ~/*.ovpn
  ~/src/dotfiles/secrets{,-artsy}.sh
  ~/src/dotfiles/local.sh
  ~/Library/Scripts
  ```

## Basic apps

- [Install Dropbox](https://www.dropbox.com/install)
  - Add personal account only
- [Install 1Password](https://1password.com/downloads/mac/)
  - Choose Dropbox sync to enable the Primary vault, sync'd from .opvault in local Dropbox folder
  - Add Artsy team from 1Password > Account
  - ignore the "Personal" vault that comes with Artsy team
  - Also: disable autofill in
    - Safari > Preferences > Autofill
    - chrome://settings/passwords
- Install Divvy from App Store (personal Apple acct)
- Install Slack from App Store


## Design environment

- Adobe Creative Cloud
  - Latest Illustrator
  - Latest Photoshop
- Avenza
  - MAPublisher
  - Geographic Imager
  - [ ] PROJECTIONS

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
    - on term init, will complain about some as-yet uninstalled things e.g. chruby
- Install Homebrew via install script
  - run or refer to script/brew.sh
    - to get all Homebrew goodies
    - incl chruby, Starship prompt and many others
      - chruby needed some tweaking
        ```sh
        brew upgrade ruby-install
        brew reinstall openssl@1.1
        brew install openssl readline libyaml zlib bison bison@2.7
        export PATH="$(brew --prefix bison@2.7)/bin:$PATH"
        export CFLAGS="-Wno-error=implicit-function-declaration"\nexport RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1) --with-readline-dir=$(brew --prefix readline) --with-libyaml-dir=$(brew --prefix libyaml) --with-zlib-dir=$(brew --prefix zlib)"\n\n
        export CFLAGS="-Wno-error=implicit-function-declaration"\n
        export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1) --with-readline-dir=$(brew --prefix readline) --with-libyaml-dir=$(brew --prefix libyaml) --with-zlib-dir=$(brew --prefix zlib)"\n
        ruby-install ruby 2.6.8
        ```
- Install NVM via install script
- Install Docker via offical dmg
- Install Hokusai
  - ~~lots of trial and error (due to CERTIFICATE_VERIFY_FAILED error) but what I _think_ worked was~~
    - ~~Install Python 2.7.17 from python.org which includes pip, openssl~~
    - ~~follow post-install instructions for ssl root certs~~
    - ~~`pip install hokusai`~~
    - then the [Artsy-specific](https://github.com/artsy/README/blob/master/playbooks/hokusai.md) `hokusai configure`

      ```sh
      brew install aws-iam-authenticator
      brew install hokusai
      hokusai configure --kubectl-version 1.18.10 --s3-bucket artsy-citadel --s3-key k8s/config-dev # check on Slack if there's a newer kubectl version
      hokusai staging env get
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

👉🏽 GOT THIS FAR (personal laptop 2022)

- Install Tunnelblick and ovpn profiles
- Journalling
  - ~~`brew install jrnl`~~
  - ~~`brew install jrnl-reminder`~~
    - ~~apply latest commits and tweak frequency~~
  ~~- better to just~~
    ~~- clone my fork of `jrnl-reminder`~~
    ~~- update `dotfiles/bin/remind-me-to-jrnl.sh` to use that executable~~
    ~~- add crontab entry for `dotfiles/bin/remind-me-to-jrnl.sh`, e.g.:~~
      ~~```~~
      ~~*/15 10-18  *    *   1-5  /path/to/dotfiles/bin/remind-me-to-jrnl.sh >> /tmp/cronlog 2>&1~~
      ~~```~~
  ~~- double-check files for absolute paths everywhere~~
  - meh maybe we're on Foam now?
    - https://github.com/anandaroop/foam
- Pairing
  - `yarn global add @jonallured/pear`
  - cp ~/.pear-data from previous system
- Insomnia
  - `brew cask install insomnia`
- Install [PageExtender](https://github.com/fphilipe/PageExtender.app) from Mac App Store
  - Configure it to look for css & js in ./page-extender
- Python
  - Following https://opensource.com/article/19/5/python-3-default-mac
  - `brew install pyenv` (if not already installed)
  - `pyenv install 3.7.3` (e.g.)
  - `pyenv global 3.7.3` (e.g.)

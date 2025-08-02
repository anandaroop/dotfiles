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
  ~/Desktop files and folders, if needed
  Custom Projections from Avenza dir
  ```

## Basic apps

- Install [Bitwarden](https://bitwarden.com/download/) for personal+family creds
  - Prefer App Store installation, for Safari extension integration
- Install [1Password](https://1password.com/downloads/mac/) for work creds
  - ~~Choose Dropbox sync to enable the Primary vault, sync'd from .opvault in local Dropbox folder~~ killed in 1p v8
  - ~Add Artsy team from 1Password > Accounts~
    - ~Use "Scan setup code" QR from another device to streamline this~
  - use "Personal"/"Employee" vault that comes with Artsy team *only* for user-specific work accounts with Artsy-related services, not for personal accounts
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
  - Maybe install latest major version, but penultimate minor version?
- Install VS Code
  - Install `code` shell command from within app
- Set up [Github ssh access](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh) 
  - with new keypair and copy work keypair from 1password
  - or use keypairs from old machine
- Install [Fira Code](https://github.com/tonsky/FiraCode)
  - TTF flavor
  - Edit VS Code settings to use it w/ ligatures
  - Set it to Terminal font, to be used by Starship prompt
- Install [anandaroop/dotfiles](https://github.com/anandaroop/dotfiles)
  - run script/setup.sh
    - to link to shared .zshrc and .gitconfig
    - on term init, will complain about some as-yet uninstalled things e.g. asdf
- Install [Homebrew](https://brew.sh) via install script
  - run or refer to script/brew.sh
    - to get all Homebrew goodies
    - incl Starship prompt and many others
- Install 
  - [mise en place](https://mise.jdx.dev)
  <br>—<b>and/or</b>–
  - [asdf](https://asdf-vm.com)  and plugins for
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
  - see https://github.com/pyenv/pyenv-virtualenv for virtualenv plugin also
- Install Docker via offical dmg
  - And maybe Rosetta 2 for Apple Silicon (see [known issues](https://docs.docker.com/desktop/troubleshoot/known-issues/)) 

- Install [Hokusai](https://github.com/artsy/hokusai), as of 2025…
  ```sh
  brew tap artsy/formulas
  brew install hokusai
  brew install aws-iam-authenticator

  # configure
  HOKUSAI_GLOBAL_CONFIG=<see artsy/readme> hokusai configure
  ```

- Install [Tunnelblick and ovpn profiles](https://www.notion.so/artsy/VPN-Configuration-60798c292185407687356997bf251d8c)

- Pairing?
  ```sh
  yarn global add @jonallured/pear
  curl https://raw.githubusercontent.com/artsy/pear-data/main/.pear-data --output ~/.pear-data
  ```

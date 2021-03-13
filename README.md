# Dotfiles

These are my dotfiles and my setup steps for fresh OS X installations.

Here is a log of my most recent setup (Mar 2020):

## Basic apps
- Install Dropbox
  - Add personal and work accounts
  - Turn on SmartSync at the root of work account
- Install 1Password
  - Choose Dropbox sync to enable the Primary vault, sync'd from .opvault in local Dropbox folder
  - Add Artsy team from 1Password > Account
  - ignore the "Personal" vault that comes with Artsy team
  - Also: disable autofill in
    - Safari > Preferences > Autofill
    - chrome://settings/passwords
- Install Divvy from App Store
- Install Slack from App Store

## Dev environment
- Customize Terminal
  - Text > Font: 120x36 20pt Monaco
  - Window > Resume: No restoring text
  - Shell: Close if clean exit
  - Keyboard: Use Option as meta key
  - Advanced: No audible bell; visual always
- Install XCode
  - Prefer [developer.apple.com](https://developer.apple.com/download/more/) over App Store
- Install VS Code
  - Install `code` shell command from within app
- Install NVM via install script
- Install Homebrew via install script
- Set up [Github ssh access](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh) with new keypair
  - and copy work keypair
- Install anandaroop/dotfiles
  - run script/setup.sh
    - to link to shared .zshrc and .gitconfig
  - run or refer to script/brew.sh
    - to get all Homebrew goodies
- Install [Fira Code](https://github.com/tonsky/FiraCode)
  - Edit VS Code settings to use it w/ ligatures
  - Set it to Terminal font, to be used by Starship prompt
- Install Hokusai
  - lots of trial and error (due to CERTIFICATE_VERIFY_FAILED error) but what I _think_ worked was
    - Install Python 2.7.17 from python.org which includes pip, openssl
    - follow post-install instructions for ssl root certs
    - `pip install hokusai`
    - then the [Artsy-specific](https://github.com/artsy/README/blob/master/playbooks/hokusai.md) `hokusai configure`
- Install Tunnelblick and ovpn profiles
- Journalling
  - `brew install jrnl`
  - ~~`brew install jrnl-reminder`~~
    - ~~apply latest commits and tweak frequency~~
  - better to just
    - clone my fork of `jrnl-reminder`
    - update `dotfiles/bin/remind-me-to-jrnl.sh` to use that executable
    - add crontab entry for `dotfiles/bin/remind-me-to-jrnl.sh`, e.g.:
      ```
      */15 10-18  *    *   1-5  /path/to/dotfiles/bin/remind-me-to-jrnl.sh >> /tmp/cronlog 2>&1
      ```
  - double-check files for absolute paths everywhere
- Pairing
  - `yarn global add @jonallured/pear`
  - cp ~/.pear-data from previous system
- Insomnia
  - `brew cask install insomnia`
- Install [PageExtender](https://github.com/fphilipe/PageExtender.app) from Mac App Store
  - Configure it to look for css & js in ./page-extender

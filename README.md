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
  - Text > Font: 120x36 18pt Monaco
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
- Customize Starship
  - Install Powerline [variant](https://github.com/powerline/**fonts**) of ~~Fira~~ Roboto for Starship
    - Set it to terminal font with 1.0 char / 1.2 line spacing
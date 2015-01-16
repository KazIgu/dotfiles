#! /bin/bash

brew update
brew upgrade

# taps
brew tap homebrew/binary
brew tap homebrew/versions
brew tap caskroom/versions
brew tap phinze/homebrew-cask
brew tap peco/peco

brew install brew-cask
brew install composer
brew install ctags
brew install curl
brew install git
brew install jq
brew install openssl
brew install tig
brew install tree
brew install vim
brew install wget
brew install zsh
brew install autojump
brew install ruby-build
brew install rbenv
brew install nodebrew
brew install maven
brew install mysql
brew install emacs
brew install imagemagick
brew install peco
brew install gibo
brew install hub

# --------------------
# cask
# --------------------
# editor
brew cask install atom
brew cask install sublime-text3
brew cask install intellij-idea
brew cask install eclipse-ide

# browser
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox

# image
brew cask install imageoptim
brew cask install imagealpha

# app
brew cask install node-webkit
brew cask install atom-shell

# comunication
brew cask install slack

# util
brew cask install rescuetime
brew cask install alfred
brew cask install bettertouchtool
brew cask install totalspaces
brew cask install keyremap4macbook-mountainlion
brew cask install clipmenu
brew cask install dash
brew cask install google-japanese-ime
brew cask install iterm2
brew cask install xtrafinder
brew cask install skitch

brew cask install java
brew cask install mysqlworkbench

# vm/simulator
brew cask install vagrant
brew cask install virtualbox
brew cask install genymotion


brew cask alfred link

brew cleanup
brew cask cleanup

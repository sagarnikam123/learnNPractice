#hideFiles&Folders
defaults write com.apple.finder AppleShowAllFiles -bool true
killall Finder

#unhideFiles&Folders
defaults write com.apple.finder AppleShowAllFiles -bool false

brew install cask
brew install curl
brew install mas
brew install coreutils
brew install findutils

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg
brew install htop
brew install git
brew install bluetoothconnector
brew install blueutil
brew install ffmpeg
brew install libzip
brew install python@3.13
brew install imagemagick --with-webp
brew install switchaudio-osx



brew cask install adobe-acrobat-pro
brew cask install adobe-creative-cloud
brew cask install alfred
brew cask install alt-tab
brew cask install appcleaner
brew cask install applite
brew cask install audio-hijack
brew cask install cakebrew
brew cask install cleanshot
brew cask install coteditor
brew cask install daisydisk
brew cask install discord
brew cask install dozer
brew cask install dropbox
brew cask install dropbox
brew cask install elgato-stream-deck
brew cask install figma
brew cask install firefox
brew cask install github
brew cask install google-chrome
brew cask install hazel
brew cask install hush
brew cask install iina
brew cask install imageoptim
brew cask install iterm2
brew cask install jordanbaird-ice
brew cask install karabiner-elements
brew cask install keyboard-maestro
brew cask install latest
brew cask install latest
brew cask install luLu
brew cask install macwhisper
brew cask install magicquit
brew cask install microsoft-excel
brew cask install microsoft-word
brew cask install namechanger
brew cask install notion
brew cask install Obsidian
brew cask install onyx
brew cask install post-haste
brew cask install raindropio
brew cask install raycast
brew cask install script-debugger
brew cask install spotify
brew cask install stats
brew cask install thingsmacsandboxhelper
brew cask install visual-studio-code
brew cask install whatsapp

mas install 1586435171  # Actions
mas install 1440147259  # AdGuard for Safari
mas install 937984704  # Amphetamine
mas install 1575220747  # Bakery
mas install 1352778147  # Bitwarden
mas install 1287239339  # ColorSlurp
mas install 424390742  # Compressor
mas install 1447330651  # Copilot
mas install 1024640650  # CotEditor
mas install 1470584107  # Dato
mas install 1435957248  # Drafts
mas install 975937182  # Fantastical
mas install 424389933  # Final Cut Pro
mas install 1351639930  # Gifski
mas install 1544743900  # Hush
mas install 6504801865  # JuxtaText
mas install 470158793  # Keka
mas install 414568915  # Key Codes
mas install 634148309  # Logic Pro
mas install 1659154653  # Mona
mas install 1540160809  # OneTab
mas install 1471867429  # OTP Auth
mas install 409201541  # Pages
mas install 1289583905  # Pixelmator Pro
mas install 1596506190  # Play
mas install 1667260533  # Sketch: digital design toolkit
mas install 425424353  # The Unarchiver
mas install 904280696  # Things
mas install 1425368544  # Timery
mas install 1607635845  # Velja
mas install 1607635845  # Velja
mas install 497799835  # Xcode


# Remove outdated versions from the cellar.
brew cleanup

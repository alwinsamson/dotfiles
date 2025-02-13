brew install cask
brew install curl
brew install mas
brew install coreutils
brew install findutils

# Switch to using brew-installed bash as default shell
# fgrep is deprecated updated the script to grep
# if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#   echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#   chsh -s "${BREW_PREFIX}/bin/bash";
# fi;
if ! grep -Fxq "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells
  chsh -s "${BREW_PREFIX}/bin/bash"
fi

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
brew install bitwarden-cli
brew install fd


brew install --cask adobe-acrobat-pro
brew install --cask adobe-creative-cloud
brew install --cask alfred
brew install --cask alt-tab
brew install --cask appcleaner
brew install --cask applite
brew install --cask audio-hijack
brew install --cask cleanshot
brew install --cask daisydisk
brew install --cask discord
brew install --cask dozer
brew install --cask dropbox
brew install --cask elgato-stream-deck
brew install --cask figma
brew install --cask firefox
brew install --cask github
brew install --cask google-chrome
brew install --cask hazel
brew install --cask hush
brew install --cask iina
brew install --cask imageoptim
brew install --cask iterm2
brew install --cask jordanbaird-ice
brew install --cask karabiner-elements
brew install --cask keyboard-maestro
brew install --cask keka
brew install --cask latest
brew install --cask luLu
brew install --cask macwhisper
brew install --cask magicquit
brew install --cask microsoft-excel
brew install --cask microsoft-word
brew install --cask namechanger
brew install --cask notion
brew install --cask Obsidian
brew install --cask onyx
brew install --cask post-haste
brew install --cask raindropio
brew install --cask raycast
brew install --cask script-debugger
brew install --cask spotify
brew install --cask stats
brew install --cask thingsmacsandboxhelper
brew install --cask visual-studio-code
brew install --cask whatsapp

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
mas install 414568915  # Key Codes
mas install 634148309  # Logic Pro
mas install 1659154653  # Mona
mas install 1540160809  # OneTab
mas install 1471867429  # OTP Auth
mas install 409201541  # Pages
mas install 1444636541  # Photomator
mas install 1596506190  # Play
mas install 1667260533  # Sketch: digital design toolkit
mas install 425424353  # The Unarchiver
mas install 904280696  # Things
mas install 1425368544  # Timery
mas install 1607635845  # Velja
mas install 497799835  # Xcode
mas install 747648890  # Telegram

# Remove outdated versions from the cellar.
brew cleanup
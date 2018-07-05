# Install java first
brew cask install java

# Install other useful binaries.
bot "installing essential packages"
require_brew ack
require_brew git-lfs
require_brew rename
require_brew hub
require_brew telnet
require_brew git-flow-avh
require_brew youtube-dl
require_brew heroku/brew/heroku
ok

# Install brew cask packages
bot "installing cask packages"
require_cask appcleaner
require_cask iterm2
require_cask macvim
require_cask google-chrome
require_cask sublime-text
require_cask etcher
require_cask teamviewer
require_cask spectacle
require_cask cyberduck
require_cask slack
require_cask skype
require_cask applepi-baker
require_cask android-file-transfer
require_cask recordit
require_cask keka
require_cask vlc
require_cask folx
require_cask dropbox
require_cask install gimp
ok

# Install GnuPG to enable PGP-signing commits.
require_cask gnupg

# Install more recent versions of some macOS tools.
require_brew grep
require_brew openssh
require_brew screen

bot "installing fonts"
# Install font tools.
brew tap bramstein/webfonttools
require_brew sfnt2woff
require_brew sfnt2woff-zopfli
require_brew woff2

./fonts/install.sh
brew tap caskroom/fonts
require_cask font-fontawesome
require_cask font-awesome-terminal-fonts
require_cask font-hack
require_cask font-inconsolata-dz-for-powerline
require_cask font-inconsolata-g-for-powerline
require_cask font-inconsolata-for-powerline
require_cask font-roboto-mono
require_cask font-roboto-mono-for-powerline
require_cask font-source-code-pro
ok

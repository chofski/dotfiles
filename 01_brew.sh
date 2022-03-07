# Install command-line tools using Homebrew.
xcode-select --install
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install MacOS apps
brew install --cask iterm2
brew install --cask transmit
brew install --cask omnigraffle
brew install --cask zotero
brew install --cask sublime-text
brew install --cask zoom
brew install --cask microsoft-teams
brew install --cask slack
brew install --cask github
brew install --cask mactex

# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
brew install moreutils
brew install findutils
brew install gnu-sed
brew install wget
brew install gnupg
brew instal gh

brew install vim
brew install grep
brew install openssh
brew install screen
brew install gmp
brew install zsh-autosuggestions
brew install zsh-fast-syntax-highlighting

# Git & GitHub tools
brew install git
brew install git-lfs
brew install gh
brew tap microsoft/git
brew install --cask git-credential-manager-core
brew install pinentry-mac

# Install other useful binaries.
brew install ack
brew install exiv2
brew install gs
brew install imagemagick

brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Fonts
brew tap homebrew/cask-fonts
brew install --cask font-juliamono
brew install --cask font-fira-code
brew install --cask font-ibm-plex
brew install --cask font-jetbrains-mono

# Developer tools
brew install --cask miniconda
conda init "$(basename "${SHELL}")"
brew install --cask julia
brew install --cask r
brew install rust
brew install lua
brew install luarocks



brew install gnuplot
brew install tmux
brew install htop

# Bioinformatics tools
brew install samtools
brew install bedtools
brew install blast
brew install cmake
brew install hdf5
brew install argp-standalone
brew install cunit
brew install bioawk

# https://zaiste.net/posts/shell-commands-rust/
brew install exa
brew install hyperfine
brew install xsv
brew install sd
brew install tokei
brew install bat
brew install procs
brew install sd
brew install dust
brew install bandwhich
brew install zoxide

brew install youtube-dlc
brew install fzf
brew install fd
brew install broot
brew install httpie
brew install gnu-units
brew install poppler
brew install automake
brew install ripgrep

# Remove outdated versions from the cellar.
brew cleanup

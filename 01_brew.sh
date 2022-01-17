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

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Install some fonts
brew tap homebrew/cask-fonts
brew install --cask font-juliamono
brew install --cask font-fira-code-nerd-font

# Install developer tools
brew install --cask miniconda
conda init "$(basename "${SHELL}")"
brew install --cask julia
brew install --cask r
brew install rust

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
brew install gnuplot
brew install luarocks
brew install tmux
brew install htop
brew install BpyTOP

# Install bioinformatics tools
brew install samtools
brew install bedtools
brew install blast
brew install cmake
brew install hdf5
brew install argp-standalone
brew install cunit
brew install bioawk

brew install exa
brew install hyperfine
brew install xsv
brew install sd
brew install tokei

brew install youtube-dlc
brew install fzf
brew install fd
brew install bat
brew install broot
brew install httpie
brew install gnu-units
brew install poppler
brew install automake
brew install ripgrep

# Remove outdated versions from the cellar.
brew cleanup

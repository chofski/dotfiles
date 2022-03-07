# Computer Setup (MacOS)

## 1. Developer tools and package management

Before setting up the system there are a number of developer tools that should be installed. First it is important that a compiler and other UNIX commands are available. These can be installed using:

```
sudo xcode-select --install
```

Once available it is then possible to install the [Homebrew](https://brew.sh) package manager that will take the pain out of installing software and developer libraries:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```
 git config --global gpg.program gpg
 git config --global user.name "Thomas Gorochowski"
 gpg --generate-key
 gpg -K --keyid-format SHORT
```

## 2. Setting up the environment

Once all the necessary compilers and package managers are available most software can be installed using the following commands (run each separately to ensure no errors are raised):

```
brew tap homebrew/cask-fonts
brew install --cask font-juliamono
brew install --cask font-fira-code-nerd-font
brew install --cask miniconda
conda init "$(basename "${SHELL}")"
brew install --cask julia
brew install --cask r
brew install rust
brew install --cask iterm2
brew install --cask transmit
brew install --cask omnigraffle
brew install --cask zotero
brew install --cask sublime-text
brew install --cask zoom
brew install --cask microsoft-teams
brew install --cask slack
brew install --cask visual-studio-code
brew install --cask github
brew install --cask mactex
brew install gnuplot
brew install neovim --HEAD
brew install kakoune
brew install luarocks
brew install tmux
brew install htop
brew install BpyTOP
brew install samtools
brew install bedtools
brew install blast
brew install cmake
brew install hdf5
brew install argp-standalone
brew install cunit
brew install bioawk
brew install youtube-dlc
brew install kak-lsp/kak-lsp/kak-lsp
brew install fzf
brew install fd
brew install bat
brew install broot
brew install httpie
brew install gnu-units
brew install poppler automake
brew install git ripgrep
brew install coreutils fd
brew tap railwaycat/emacsmacport
brew install emacs-mac --with-modules
ln -s /usr/local/opt/emacs-mac/Emacs.app /Applications/Emacs.app
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
```

At this stage it is also a good idea to install any custom fonts that are not available via Homebrew such a [MonoLisa](https://www.monolisa.dev). However, FiraCode Nerd Font is a great choice to start with.

For customisation of the shell and command line tools like `nvim` and `tmux` it is necessary to update iTerm2 to use the correct profile and import the [OneHalfDark colour scheme](https://github.com/sonph/onehalf). Once done, the following script can be run to update all config files.

```
setup_mac.sh
```

If an error occurs or you would like to install a fresh configuration, a `clean_mac.sh` script is provided, which removes all customised configuration files.

## Git

```
brew install git
brew tap microsoft/git
brew install --cask git-credential-manager-core
git config
git config --global gpg.program gpg
gpg -K --keyid-format SHORT
brew install pinentry-mac
```

Then, add following line to `~/.gnupg/gpg-agent.conf`
```
pinentry-program /usr/local/bin/pinentry-mac
```
and the following to `.zshrc`
```
export GPG_TTY=$(tty)
```

```gpg --generate-key```

## 3. Python environment

There are a number of commonly used packages that are useful to have in the `base` conda environment to make standard analysis easier. The list currently stands at the following (run each separately to ensure no errors are raised).

```
conda install numpy
conda install scipy
conda install matplotlib
conda install scikit-learn
conda install scikit-image
pip install FlowCal
conda install pandas
conda install ipython
pip install jedi
pip install python-language-server
```

For more complex setups, it is recommended to create a separate conda environment to ensure this one doesn't get screwed up.

## 4. Julia environment

As with Python, Julia also has a number of useful packages that are worth installing to reduce issues in running scripts used across the lab. These can be installed by entering a Julia REPL and running the following commands:

```
using Pkg
Pkg.add("LanguageServer")
Pkg.add("SymbolServer")
Pkg.add("StaticLint")
Pkg.add("HDF5")
Pkg.add("DynamicalSystems")
Pkg.add("Catalyst")
```

## 5. (Doom) Emacs

Doom Emacs is setup as part of the environment and no further setup should be required.

## 6. NeoVim

To finalise the setup of `nvim` it is necessary to open the application and enter the following commands:

```
:PackerSync
:q
```

Then to start `nvim` again to allow for all the plugins to set themselves up, before finally running the command:

```
:PackerCompile
```

No errors should be thrown and NeoVim should now be all setup correctly.

## 5. Kakoune

To use plugins in kakoune the following command should be run:

```
mkdir -p $HOME/.config/kak/plugins
git clone https://github.com/andreyorst/plug.kak.git $HOME/.config/kak/plugins/plug.kak
```

To finalise the setup of `kak` it is necessary to open the application and enter the following commands:

```
:plug-install
:q
```

No errors should be thrown and Kakoune should now be all setup correctly.
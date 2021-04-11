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
brew install neovim --HEAD
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
```

At this stage it is also a good idea to install any custom fonts that are not available via Homebrew such a [MonoLisa](https://www.monolisa.dev).

For customisation of the shell and command line tools like `nvim` and `tmux` it is necessary to update iTerm2 to use the correct profile and import the [tomorrow-dark base16 256 colour scheme](https://github.com/chriskempson/base16-iterm2). Once done, the following script can be run to update all config files.

```
setup_mac.sh
```

If an error occurs or you would like to install a fresh configuration, a `clean_mac.sh` script is provided, which removes all customised configuration files.

## 3. NeoVim

To finalise the setup of `nvim` it is necessary to open the application and enter the following commands:

```
:PackerSync
:q
```

Then to start `nvim` again to allow for all the plugins to set themselves up correctly, before running:

```
:PackerCompile
```

No errors should be thrown and NeoVim should now be all setup correctly.

## 4. Python environment

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
```

For more complex setups, it is recommended to create a separate conda environment to ensure this one doesn't get screwed up.

## 5. Julia environment

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
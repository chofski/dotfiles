# setup_mac.sh
# Expects to be given username for UoB server as first command line argument.

# Install command line tools if not done so already
xcode-select --install

echo "" >> ~/.zshrc
echo "#########################################" >> ~/.zshrc
echo "# AUTOMATICALLY GENERATED CONFIGURATION #" >> ~/.zshrc
echo "#########################################" >> ~/.zshrc
echo "" >> ~/.zshrc

###############################################################################
# Standard environment variables
echo "export PATH=\$HOME/Development/bin:usr/local/bin:/Library/Frameworks/R.framework/Resources/bin:\$PATH" >> ~/.zshrc
echo "export PYTHONPATH=\"\$HOME/Development/projects/pythonpath\"" >> ~/.zshrc
echo "export EDITOR='mvim -f --nomru -c \"au VimLeave * !open -a Terminal\"'" >> ~/.zshrc
echo "export JULIA_NUM_THREADS=$(expr $(sysctl -n hw.physicalcpu_max) - 2)" >> ~/.zshrc
echo "export UOB_USERNAME=$1" >> ~/.zshrc
echo "" >> ~/.zshrc

###############################################################################
# Setup git
cp ./dotfiles/gitconfig ~/.gitconfig
# Setup vim (this installs needed plugins)
cp ./dotfiles/vimrc ~/.vimrc
# Setup tmux
cp ./dotfiles/tmux.conf ~/.tmux.conf

###############################################################################
# Install wget (needed for some packages)
brew install wget

###############################################################################
# Install Starhip prompt: https://github.com/starship/starship
brew install starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
echo "" >> ~/.zshrc
mkdir ~/.config
cp ./dotfiles/config/starship.toml ~/.config/starship.toml

###############################################################################
# Copy the nvim config
cp -R ./dotfiles/config/nvim ~/.config/

###############################################################################
# Create a `.zsh` directory to store our plugins in one place
mkdir ~/.zsh
cp ./dotfiles/zsh/aliases.zsh ~/.zsh/aliases.zsh

###############################################################################
# Download completion config
cd ~/.zsh && wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/completion.zsh
# Load completion config
echo "source $HOME/.zsh/completion.zsh" >> ~/.zshrc
echo "autoload -Uz compinit" >> ~/.zshrc
echo "typeset -i updated_at=\$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" >> ~/.zshrc
echo "if [ \$(date +'%j') != \$updated_at ]; then" >> ~/.zshrc
echo "  compinit -i" >> ~/.zshrc
echo "else" >> ~/.zshrc
echo "  compinit -C -i" >> ~/.zshrc
echo "fi" >> ~/.zshrc
echo "zmodload -i zsh/complist" >> ~/.zshrc
echo "" >> ~/.zshrc

###############################################################################
# Clone repo to `~/.zsh/` directory
cd ~/.zsh && git clone https://github.com/zdharma/fast-syntax-highlighting.git
# Enable 'fast-syntax-highlighting' plugin in ZSH
echo "source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" >> ~/.zshrc

###############################################################################
# Download 'zsh-autosuggestions' plugin
cd ~/.zsh && git clone https://github.com/zsh-users/zsh-autosuggestions.git
# Enable 'zsh-autosuggestions' plugin in ZSH
echo "source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

###############################################################################
# Download history config
cd ~/.zsh && wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/history.zsh
# Enable 'history' config in ZSH
echo "source $HOME/.zsh/history.zsh" >> ~/.zshrc

###############################################################################
# Download key bindings config
cd ~/.zsh && wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/key-bindings.zsh
# Enable 'key-bindings' config in ZSH
echo "source $HOME/.zsh/key-bindings.zsh" >> ~/.zshrc

###############################################################################
# Add all my standard aliases for commands
echo "source $HOME/.zsh/aliases.zsh" >> ~/.zshrc

###############################################################################
# Starship already shows conda status so remove
conda config --set changeps1 False

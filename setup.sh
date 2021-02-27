
# Setup vim (this installs needed plugins)
cp .vimrc ~/.vimrc

# Install Starhip prompt: https://github.com/starship/starship
brew install starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

mkdir ~/.config

cp .config/starship.toml ~/.config/starship.toml

# Base16 setup for the shell (ensure iTerm also using a 256 color theme)
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
echo "# Base16 Shell" >> ~/.zshrc
echo "BASE16_SHELL=\"$HOME/.config/base16-shell/\" " >> ~/.zshrc
echo "[ -n \"$PS1\" ] && \ " >> ~/.zshrc
echo "    [ -s \"$BASE16_SHELL/profile_helper.sh\" ] && \ " >> ~/.zshrc
echo "        eval \"$(\"$BASE16_SHELL/profile_helper.sh\")\" " >> ~/.zshrc

# Create a `.zsh` directory to store our plugins in one place
mkdir ~/.zsh

cp .zsh/aliases.zsh ~/.zsh/aliases.zsh

# Clone repo to `~/.zsh/` directory
cd ~/.zsh && git clone https://github.com/zdharma/fast-syntax-highlighting.git

# Enable 'fast-syntax-highlighting' plugin in ZSH
echo "source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" >> ~/.zshrc

# Download 'zsh-autosuggestions' plugin
cd ~/.zsh && git clone https://github.com/zsh-users/zsh-autosuggestions.git

# Enable 'zsh-autosuggestions' plugin in ZSH
echo "source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# Download history config
cd ~/.zsh && wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/history.zsh

# Enable 'history' config in ZSH
echo "source $HOME/.zsh/history.zsh" >> ~/.zshrc

# Download key bindings config
cd ~/.zsh && wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/key-bindings.zsh

# Enable 'key-bindings' config in ZSH
echo "source $HOME/.zsh/key-bindings.zsh" >> ~/.zshrc

# Add all my standard aliases for commands
echo "source $HOME/.zsh/aliases.zsh" >> ~/.zshrc

# Download completion config
cd ~/.zsh && wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/completion.zsh

# Enable 'completion' plugin in ZSH
echo "source $HOME/.zsh/completion.zsh" >> ~/.zshrc

# Load completion config
echo "source $HOME/.zsh/completion.zsh" >> ~/.zshrc
echo "autoload -Uz compinit" >> ~/.zshrc
echo "typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" >> ~/.zshrc
echo "if [ $(date +'%j') != $updated_at ]; then" >> ~/.zshrc
echo "  compinit -i" >> ~/.zshrc
echo "else" >> ~/.zshrc
echo "  compinit -C -i" >> ~/.zshrc
echo "fi" >> ~/.zshrc
echo "zmodload -i zsh/complist" >> ~/.zshrc

# Reload ZSH
source ~/.zshrc

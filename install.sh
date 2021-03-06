echo "Setting up your vimrc..."
ln -s ~/.dotfiles/.vimrc ~/.vimrc

echo "Installing zshrc and oh-my-zsh along with some plugins..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
ln -s -f ~/.dotfiles/.zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
touch ~/.zshrc-custom
echo "Changing shell to zsh"
chsh -s $(which zsh)
echo "To customize your .zshrc, edit the ~/.zshrc-custom file"

echo "Setting up tmux..."
git submodule update --init
mkdir ~/.tmux
ln -s ~/.dotfiles/.tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.tmux/.tmux.conf.local ~/.tmux.conf.local
echo "If you want to customize tmux, edit ~/.tmux.conf.local"

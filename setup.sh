echo "Cloning Vundle to manage vim plugins"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Installing Oh-My-Zsh (Please install zsh if you haven't)"
 sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
 echo "Setting default shell to ZSH"
chsh -s $(which zsh)


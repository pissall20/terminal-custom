echo "Cloning Vundle to manage vim plugins"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# echo "Installing Oh-My-Zsh (Please install zsh if you haven't)"
#  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing Antigen plugin manager"
curl -L git.io/antigen > ~/.antigen.zsh
 echo "Setting default shell to ZSH"

chsh -s $(which zsh)

echo "Installing powerline fonts"

#####
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
#####

cp zshrc ~/.zshrc
source ~/.zshrc
cp vimrc ~/.vimrc


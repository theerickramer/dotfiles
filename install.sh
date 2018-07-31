# source dotfiles
echo 'source ~/.dotfiles/.alias.sh' >> ~/.bash_profile
echo 'source ~/.dotfiles/.prompt.sh' >> ~/.bash_profile

# symlinks
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm ~/.vimrc
rm ~/Library/Application\ Support/Code/User/settings.json 
ln ~/.dotfiles/.vimrc ~/.vimrc
ln ~/.dotfiles/.vs-code-settings.json ~/Library/Application\ Support/Code/User/settings.json

# global npm packages
brew install yarn
yarn global add browser-sync
yarn global add eslint

# source dotfiles
echo 'source ~/.dotfiles/.alias.sh' >> ~/.bash_profile
echo 'source ~/.dotfiles/.prompt.sh' >> ~/.bash_profile

# Vundle & symlinks
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm ~/.vimrc
rm ~/Library/Application\ Support/Code/User/settings.json 
ln ~/.dotfiles/.vimrc ~/.vimrc
ln ~/.dotfiles/.vs-code-settings.json ~/Library/Application\ Support/Code/User/settings.json

# webApi-vim (necessary for emmet)
cd ~/.dotfiles && git clone git@github.com:mattn/webapi-vim.git
cp -r  ~/.dotfiles/webapi-vim/autoload/ ~/.vim/autoload

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# global npm packages
brew install yarn
yarn global add browser-sync
yarn global add eslint


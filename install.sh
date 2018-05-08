# source dotfiles
echo 'source ~./dotfiles/.alias.sh' >> ~/.bash_profile
echo 'source ~/.dotfiles/.prompt.sh' >> ~/.bash_profile

# symlinks
rm ~/.vimrc && ln ~/.dotfiles/.vimrc ~/.vimrc
rm ~/Library/Application Support/Code/User/settings.json && ln ~/.dotfiles/.vs-code-settings.json ~/Library/Application Support/Code/User/settings.json

# global npm packages
brew install yarn
yarn global add browser-sync

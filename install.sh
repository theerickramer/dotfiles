# source dotfiles
echo 'source ~./dotfiles/.alias.sh' >> ~/.bash_profile
echo 'source ~/.dotfiles/.prompt.sh' >> ~/.bash_profile

# symlink vim
rm ~/.vimrc && ln ~/.dotfiles/.vimrc ~/.vimrc


# source dotfiles
echo 'source ~./dotfiles/.alias.sh' >> ~/.bash_profile
echo 'source ~/.dotfiles/.prompt.sh' >> ~/.bash_profile

# symlinks
rm ~/.vimrc && ln ~/.dotfiles/.vimrc ~/.vimrc
rm ~/Library/Application Support/Code/User/settings.json && ln ~/.dotfiles/.vs-code-settings.json ~/Library/Application Support/Code/User/settings.json

# global npm packages
brew install yarn
yarn global add browser-sync

# VS Code extensions
extensions=(
DotJoshJohnson.xml
Orta.vscode-jest
Perkovec.emoji
PeterJausovec.vscode-docker
QassimFarid.ejs-language-support
RobinMalfait.prettier-eslint-vscode
TwentyChung.jsx
TwentyChung.jsx-snippets
abusaidm.html-snippets
adamwalzer.scss-lint
alefragnani.Bookmarks
andischerer.theme-atom-one-dark
anseki.vscode-color
avli.clojure
bale.theme-darkplusplus
bradgashler.htmltagwrap
castwide.solargraph
dbaeumer.vscode-eslint
donjayamanne.githistory
donjayamanne.jquerysnippets
dzannotti.vscode-babel-coloring
eg2.tslint
eg2.vscode-npm-script
esbenp.prettier-vscode
fabiospampinato.vscode-browser-refresh
formulahendry.terminal
gerane.Theme-BatmanLight
gerane.Theme-Daguiheso
gerane.Theme-EggplantParm
gerane.Theme-ToyMachine
hirofumii.rubyblue-theme
hnw.vscode-auto-open-markdown-preview
hollowtree.vue-snippets
johnpapa.Angular2
ms-vscode.Go
mohsen1.prettify-json
ms-python.python
ms-vscode.sublime-keybindings
ms-vscode.Theme-MarkdownKit
ms-vscode.vs-keybindings
ms-vsliveshare.vsliveshare
msjsdiag.debugger-for-chrome
oysun.vuehelper
qinjia.view-in-browser
rebornix.Ruby
redhat.java
shinnn.stylelint
slevesque.shader
vscjava.vscode-java-debug
vscjava.vscode-java-pack
vscjava.vscode-java-test
vscjava.vscode-maven
vscodevim.vim
xabikos.JavaScriptSnippets
xabikos.ReactSnippets
xaver.theme-tubbs
)
for i in "${extensions[@]}"
do
	code --install-extension $i
done
	

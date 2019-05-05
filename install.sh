# Remove existing config
rm -rf $HOME/.zshrc
rm -rf $HOME/.gitconfig
rm -rf $HOME/.vimrc
rm -rf $HOME/Library/Application\ Support/Code/User/settings.json

# Copy config files to their correct locations
cp ./zsh/zshrc $HOME/.zshrc
cp ./git/gitconfig $HOME/.gitconfig
cp ./vim/vimrc $HOME/.vimrc
cp ./vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json

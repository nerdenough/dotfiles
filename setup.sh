VIM_PLUG=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Creating directories and files"
mkdir -p ~/.config
touch $HOME/.bashrc

# NVM
echo "Installing nvm"
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/creationix/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
) && . "$NVM_DIR/nvm.sh"

nvm install node
nvm use node

# Node
echo "Installing node modules"
npm install -g eslint

# Vim Plug
echo "Installing vim plug"
curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs $VIM_PLUG

# Add config
echo "Copying dotfile config"
cp -R ./nvim $HOME/.config

echo "Done!"

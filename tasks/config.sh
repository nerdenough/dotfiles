mkdir -p $HOME/.config
touch $HOME/.bashrc

# Copy config
cp -R ./nvim $HOME/.config
cp ./bash/.bashrc $HOME/.bashrc

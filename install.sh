brew install vim
brew install node
brew install llvm

# The dependencies of the fzf plugin
brew install fzf
brew install bat

echo "export BAT_THEME='GitHub'" >> ~/.zshrc
# Set the registry of the npm
npm config set registry https://registry.npm.taobao.org

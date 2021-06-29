brew install vim
brew install node
brew install llvm
brew install yarn

# The dependencies of the fzf plugin
brew install fzf
brew install bat
brew install the_silver_searcher
brew install ripgrep

echo "export BAT_THEME='GitHub'" >> ~/.zshrc
# Set the registry of the npm
npm config set registry https://registry.npm.taobao.org

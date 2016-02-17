
./linkdotfiles.sh

brew update
brew install git
brew install vim
brew install go
brew install tmux
brew install ctags-exuberant
brew install mercurial
brew install zsh zsh-completion

# Setup vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/backups

# install vim plugins
vim +PluginInstall +qall
vim +GoInstallBinaries

go get golang.org/x/tools/cmd/godoc
go get golang.org/x/tools/cmd/vet

echo "don't forget MouseTerm https://github.com/saitoha/mouseterm-plus"

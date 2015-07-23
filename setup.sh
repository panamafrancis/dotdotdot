echo "creating symbolic links"

old=~/oldfiles
if [ ! -d "$old" ]; then
	mkdir $old
fi

files="vimrc zshrc bashrc bash_profile vim"

for file in $files; do
	if [ -e ~/.$file ]; then
		if [ ! -L ~/.$file ]; then
			mv ~/.$file $old/$file
		else
			#remove link file
			rm ~/.$file
		fi
	fi
	#create symbolic link
	ln -s $PWD/$file ~/.$file 
done

mkdir ~/.vim/backups

echo "installing vim plugins"
brew install ctags-exuberant
brew install mercurial

vim +PluginInstall +qall
vim +GoInstallBinaries

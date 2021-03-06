echo "creating symbolic links"

old=~/oldfiles
if [ ! -d "$old" ]; then
	mkdir $old
fi

files="vimrc zshrc bashrc bash_profile vim gitconfig gitignore_global"

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
	ln -s $PWD/configs/$file ~/.$file 
done


# script to auto update git repo when vimrc is changed, or plugins are installed

# copy the updated files back to local repo
cp ~/.vimrc ~/GitHub/settings
cp  ~/.vim/plugins.vim ~/GitHub/settings/.vim

# commit and push my changes
cd ~/GitHub/settings
git commit . -m "updated vim config files"
git push

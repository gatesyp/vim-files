# script to auto update git repo when vimrc is changed, or plugins are installed

# copy the updated files back to local repo
cp ~/.vimrc ~/GitHub/vim-files
cp  ~/.vim/plugins.vim ~/GitHub/vim-files/.vim

echo "Enter commit message: "
read commit_msg

# commit and push my changes
cd ~/GitHub/vim-files
git commit . -m "$commit_msg"
git push

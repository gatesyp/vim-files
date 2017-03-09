# Script to auto update git repo when vimrc is changed, or plugins are installed. 

# Copy the updated files back to local repo. 
cp ~/.vimrc ~/github/vim-files
cp  ~/.vim/plugins.vim ~/github/vim-files/.vim

echo "Enter commit message: "
read commit_msg

# Commit and push my changes. 
cd ~/github/vim-files
git commit . -m "$commit_msg"
git push

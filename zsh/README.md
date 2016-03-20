# ZSH


## Install ZSH
`sudo apt-get install zsh`


### Change default shell to zsh
`chsh -s $(which zsh)`


## Install oh-my-zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`


reference: [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)


## Create symbolic link to this zsh configuration
`ln -s <path_to_this_repo>/zsh/zshrc ~/.zshrc`

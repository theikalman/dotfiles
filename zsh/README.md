# ZSH


## Install ZSH
`sudo apt-get install zsh`


### Change default shell to zsh
`chsh -s $(which zsh)`


## Install oh-my-zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`


reference: [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)


## Additional configurations for `.zshrc`

- Set default user (to hide yourself when you're logged in on terminal)


`DEFAULT_USER="ajiyakin"`


- Add this to fix tmux syntax highlight problem


`[[ $TMUX = "" ]] && export TERM="xterm-256color"`



- Set to use powerline, see https://github.com/powerline/powerline


`. /usr/local/lib/python3.4/dist-packages/powerline/bindings/zsh/powerline.zsh`

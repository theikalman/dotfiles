Dotfiles
===============================================================================

My configurations around the machines.


ZSH
-------------------------------------------------------------------------------

### Install ZSH
`sudo apt-get install zsh`

#### Change default shell to zsh
`chsh -s $(which zsh)`

### Install oh-my-zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

reference: [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### Create symbolic link to this zsh configuration
`ln -s <path_to_this_repo>/zsh/zshrc ~/.zshrc`


TMUX
-------------------------------------------------------------------------------

### Install tmux
[tmux repository](https://tmux.github.io/)

### Install TPM (Tmux Plugin Manager)

- Clone TPM repository:
    `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

- Create symbolic link to tmux configuration:
    `ln -s <path_to_this_repo>/tmux/tmux.conf ~/.tmux.conf`

- Open tmux session:
    `tmux new-session -s <SessionName>`

- Run plugin installation process using:
    `prefix + I`

Reference: [TPM](https://github.com/tmux-plugins/tpm)


Vim Configurations
-------------------------------------------------------------------------------

### Installation

1. Create link to this repository for vim

    `ln -s <path_to_this_repo>/vim ~/.vim && ln -s ./dotfiles/vim/vimrc ~/.vimrc`

2. Clone vim plugin manager (vundle) with command: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

3. Go to vim and execute `:PluginInstall` command. After that, configure
   the plugin.

### Configure Plugins

#### youcompleteme
Execute command: `cd ~/.vim/bundle/youcompleteme && ./install.py --clang-completer`

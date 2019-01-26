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

NeoVim Configurations
-------------------------------------------------------------------------------
1. Create symbolic link to `nvim` folder under `~/.config/` directory
2. Open neovim `nvim`
3. Install all plugins by executing `:PluginInstall`

Vim Configurations
-------------------------------------------------------------------------------

### Installation

1. Create link to this repository for vim

    `ln -s <path_to_this_repo>/vim ~/.vim && ln -s ./dotfiles/vim/vimrc ~/.vimrc`

2. Clone vim plugin manager (vundle) with command: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

3. Go to vim and execute `:PluginInstall` command. After that, configure
   the plugin.


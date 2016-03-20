Vim Configurations
=============================================================================

## Installation

1. Create link to this repository for vim

    `ln -s <path_to_this_repo>/vim ~/.vim && ln -s ./dotfiles/vim/vimrc ~/.vimrc`

2. Clone vim plugin manager (vundle) with command: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

3. Go to vim and execute `:PluginInstall` command. After that, configure
   the plugin.



## Configure Plugins

### youcompleteme
Execute command: `cd ~/.vim/bundle/youcompleteme && ./install.py --clang-completer`

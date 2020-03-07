#!/bin/sh

echo "- preparation"

echo "-- installing git"
sudo apt install git

echo ""
echo "-- installing vim"
read -p "--- do you want to compile vim from source code? [Y]/n: " vimOption
if [ "$vimOption" = "n" ] || [ "$vimOption" = "N" ]; then
    echo "--- installing vim with apt"
    sudo apt install vim
else
    # https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source
    echo "--- installing vim from source"
    echo "--- install dependencies"
    sudo apt install \
        libncurses5-dev \
        libgnome2-dev \
        libgnomeui-dev \
        libgtk2.0-dev \
        libatk1.0-dev \
        libbonoboui2-dev \
        libcairo2-dev \
        libx11-dev \
        libxpm-dev \
        libxt-dev \
        python-dev \
        python3-dev \
        ruby-dev \
        lua5.1 \
        liblua5.1-dev \
        libperl-dev
    echo "--- removing installed vim"
    sudo apt purge vim vim-runtime gvim
    echo "--- cloning vim repository"
    git clone https://github.com/vim/vim.git vim-source-master
    echo "--- enter ./vim"
    cd vim-source-master
    echo "--- configure vim"
    ./configure --with-features=huge \
        --enable-multibyte \
        --enable-rubyinterp=yes \
        --enable-python3interp=yes \
        --with-python3-config-dir=$(python3-config --configdir) \
        --enable-perlinterp=yes \
        --enable-luainterp=yes \
        --enable-gui=gtk2 \
        --enable-cscope
    echo "--- compiling source code"
    make
    echo "--- installing vim"
    sudo make install
    echo "--- exit vim source code folder"
    cd ..
    read -p "--- do you want to remove vim source code? [Y]/n: " vimRemoveSource
    if [ "$vimRemoveSource" = "y" ] || [ "$vimRemoveSource" = "Y" ]; then
        echo "--- removing vim source code"
        rm -rf vim-source-master
    fi
fi

echo ""
echo "-- installing zsh"
sudo apt install zsh

echo "--- set zsh as default shell (logout required!)"
chsh -s $(which zsh)

echo ""
echo "-- installing oh-my-zsh. theme for zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "- setup configurations"
echo "-- cloning aji's dotfiles repository to ~/dotfiles"
cd ~
git clone https://github.com/vim/vim.git dotfiles
cd dotfiles
echo "-- linking zsh config"
ln -s $(pwd)/zsh/zshrc ~/.zshrc
echo "-- linking vim config"
ln -s $(pwd)/vim ~/.vim && ln -s $(pwd)/vim/vimrc ~/.vimrc`
echo "-- installing vim plugin (Vundle)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo ""
echo "setup finished"
echo "please reboot the computer"
echo "last thing, go to vim and execute :PluginInstall"

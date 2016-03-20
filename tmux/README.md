# TMUX

## Install tmux
[tmux repository](https://tmux.github.io/)

## Install TPM (Tmux Plugin Manager)

- Clone TPM repository:
    `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

- Create symbolic link to tmux configuration:
    `ln -s <path_to_this_repo>/tmux/tmux.conf ~/.tmux.conf`

- Open tmux session:
    `tmux new-session -s <SessionName>`

- Run plugin installation process using:
    `prefix + I`

Reference: [TPM](https://github.com/tmux-plugins/tpm)

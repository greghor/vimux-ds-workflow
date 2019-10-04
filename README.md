This is the companion repo for this post.

`src/.vimrc` contains the basic set-up to fly the ipython repl directly from vim

## Prerequisites

- tmux
- vim-plug

## Installation

use `src/.vimrc` as your config file and edit it with vim

    vim -u src/.vimrc src/.vimrc

Install the required plugins by executing (in normal mode)
    
    :PlugInstall

Fire a tmux session and start experimenting with the mappings!

    tmux new -s <session_name>
    vim -u src/.vimrc demo.py

**NB:** you don't need to specify the vim config with `-u` file if you move `src/.vimrc` to your home directory
 


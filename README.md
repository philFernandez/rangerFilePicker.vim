# rangerFilePicker.vim

## This script ships with each new ranger install in the examples directory.

I've packaged it, and added an option to change the keyboard shortcut.

## Installation

vim-plug:

    Plug 'philFernandez/rangerFilePicker.vim'


## Options/Usage

The default shortcut is `<leader>f` which opens ranger in the CWD. Any file picked
will be opened in vim. Tested on vim 8

To remap this add `let g:ranger_remap_key = 1` to `.vimrc` and
set `nnoremap <new-shortcut> :RangerChooser<CR>` to your desired shortcut.


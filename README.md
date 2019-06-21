# rangerFilePicker.vim

This was inspired by the
[vim_file_chooser.vim](https://github.com/ranger/ranger/blob/master/examples/vim_file_chooser.vim)
script that ships in the examples directory of ranger. This plugin adds a few features, like
the ability to open files in split panes and/or tabs, and packages the script into a vim plugin.

## Installation

[vim-plug](https://github.com/junegunn/vim-plug):

    Plug 'philFernandez/rangerFilePicker.vim'

Or use your preferred method of plugin installation.

## Usage

Each of the key mappings below opens ranger inside the working directory. The key mapping that
is used will determine how the files will be opened by ranger inside vim. Multiple files
may be selected by using the space key to make selections inside ranger.

| key mapping | functionality                        |
| ----------- | ------------------------------------ |
| `<leader>f` | ranger opens files in new buffer     |
| `<leader>x` | ranger opens files in split          |
| `<leader>v` | ranger opens files in vertical split |
| `<leader>t` | ranger opens files in new tab        |

## Options

The default key mappings can be changed by setting the following options, and
creating user defined key mappings.

| option                              | remap function                                   |
| ----------------------------------- | ------------------------------------------------ |
| `let g:ranger_remap_key = 1`        | `nnoremap <new-keymap> :RangerChooser<CR>`       |
| `let g:ranger_remap_key_split = 1`  | `nnoremap <new-keymap> :RangerChooserSplit<CR>`  |
| `let g:ranger_remap_key_vsplit = 1` | `nnoremap <new-keymap> :RangerChooserVsplit<CR>` |
| `let g:ranger_remap_key_tab = 1`    | `nnoremap <new-keymap> :RangerChooserTab<CR>`    |

---

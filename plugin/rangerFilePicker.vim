function! CallRangerFileManager(commandType)
  let temp = tempname()
  if has("gui_running")
    exec 'silent !xterm -e ranger --choosefiles=' . shellescape(temp)
  else
    exec 'silent !ranger --choosefiles=' . shellescape(temp)
  endif
  if !filereadable(temp)
    redraw!
    " Nothing to read.
    return
  endif
  let names = readfile(temp)
  if empty(names)
    redraw!
    " Nothing to open.
    return
  endif
  " Edit the first item.
  exec a:commandType . fnameescape(names[0])
  " Add any remaning items to the arg list/buffer list.
  for name in names[1:]
    exec 'argadd ' . fnameescape(name)
  endfor
  redraw!
endfunction

function! RangeChooser()
  call CallRangerFileManager('edit ')
endfunction

function! RangeChooserVsplit()
  call CallRangerFileManager('vsplit ')
endfunction

function! RangeChooserSplit()
  call CallRangerFileManager('split ')
endfunction

function! RangeChooserTab()
  call CallRangerFileManager('tabedit ')
endfunction

command! -bar RangerChooser call RangeChooser()
command! -bar RangerChooserVsplit call RangeChooserVsplit()
command! -bar RangerChooserSplit call RangeChooserSplit()
command! -bar RangerChooserTab call RangeChooserTab()

if !exists('g:ranger_remap_key')
  nnoremap <leader>f :<C-U>RangerChooser<CR>
endif

if !exists('g:ranger_remap_key_vsplit')
  nnoremap <leader>v :<C-U>RangerChooserVsplit<CR>
endif

if !exists('g:ranger_remap_key_split')
  nnoremap <leader>x :<C-U>RangerChooserSplit<CR>
endif

if !exists('g:ranger_remap_key_tab')
  nnoremap <leader>t :<C-U>RangerChooserTab<CR>
endif



function! WritePinboard()
  echo writefile(g:pinned_files, 'pinboard.txt')
endfunction

function! ReadPinboard()
  let g:pinned_files = readfile('pinboard.txt')
endfunction

function! Pin(file)
  if index(g:pinned_files, a:file) == -1
    call add(g:pinned_files, a:file)
  endif
  echo g:pinned_files
endfunction

function! Unpin(file)
  let l:index = index(g:pinned_files, a:file)
  if l:index != -1
    call remove(g:pinned_files, l:index)
  endif
endfunction

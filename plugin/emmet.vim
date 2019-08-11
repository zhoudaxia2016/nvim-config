inoremap <c-e> <c-r>=EmmetCompleteFunc()<cr>

function EmmetCompleteFunc ()
  let line = getline('.')
  let start = col('.') - 1
  while start > 0 && line[start - 1] != '[[:space:]]'
    let start -= 1
  endwhile
  call setline(line('.'), start > 0 ? line[:start - 1] : '')
  return EmmetComplete(line[start:])
endfunc

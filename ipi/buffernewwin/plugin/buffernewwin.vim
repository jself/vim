" open a buffer in a new window; close it first
function! OpenBufNewGvim()
      let obng_filename = bufname("%")
        bd!
          silent exe "!gvim " obng_filename
      endfun


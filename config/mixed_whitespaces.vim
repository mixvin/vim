 "display a warning if &et is wrong, or we have mixed-indenting
 
 "recalculate the tab warning flag when idle and after writing
 autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning
 
 "return '[&et]' if &et is set wrong
 "return '[mixed-indenting]' if spaces and tabs are used to indent
 "return an empty string if everything is fine
 function! StatuslineTabWarning()
     if !exists("b:statusline_tab_warning")
         let tabs = search('^\t', 'nw') != 0
         let spaces = search('^ ', 'nw') != 0
 
         if tabs && spaces
             let b:statusline_tab_warning =  '[mixed-indenting]'
         elseif (spaces && !&et) || (tabs && &et)
             let b:statusline_tab_warning = '[&et]'
         else
             let b:statusline_tab_warning = ''
         endif
     endif
     return b:statusline_tab_warning
 endfunction

 "recalculate the trailing whitespace warning when idle, and after saving
 autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning
 
 "return '[\s]' if trailing white space is detected
 "return '' otherwise
 function! StatuslineTrailingSpaceWarning()
     if !exists("b:statusline_trailing_space_warning")
         if search('\s\+$', 'nw') != 0
             let b:statusline_trailing_space_warning = '[\s]'
         else
             let b:statusline_trailing_space_warning = ''
         endif
     endif
     return b:statusline_trailing_space_warning
 endfunction
 

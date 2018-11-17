set ignorecase
set cursorline
set autoindent
autocmd BufNewFile *.sh exec ":call SetTitle()"
func SetTitle()
 	if expand("%:e") == 'sh'
 		call setline(1,"#!/bin/bash")
 		call setline(2,"#")
 		call setline(3,"#********************************************************************")
 		call setline(4,"#Author: your name")
 		call setline(5,"#QQ: your qq number")
 		call setline(6,"#Date: ".strftime("%Y-%m-%d"))
 		call setline(7,"#FileName： ".expand("%"))
 		call setline(8,"#URL: https://www.minsv.com")
 		call setline(9,"#Description： The script name")
 		call setline(10,"#Copyright (C): ".strftime("%Y")." All rights reserved")
 		call setline(11,"#********************************************************************")
 		call setline(12,"")
 	endif
endfunc
autocmd BufNewFile * normal G
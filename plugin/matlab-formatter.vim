let g:matlab_formatter_plugin_path = expand('<sfile>:p:h')

function! s:MatlabFormatter()
python3 << EOF

import vim, sys
plugin_path = vim.eval("g:matlab_formatter_plugin_path")
sys.path.append(plugin_path)
# import matlab_formatter as mf
from matlab_formatter import Formatter
indentWidth = int(vim.eval("&shiftwidth")) 
sep=True
buffer = vim.current.buffer
formatter=Formatter(indentWidth, sep)
formattedSeq=formatter.formatSeq(buffer)

buffer[:] = None
for iter in range(len(formattedSeq)):
    buffer.append(formattedSeq[iter])
EOF
endfunction

function! s:MatlabFormatterSelection()
python3 << EOF
import vim
import matlab_formatter
print('Hello, matlab-formatter.vim')
matlab_formatter.mainEcho()
EOF
endfunction
" ====================================================
if !has('python3')
    echo('Error: Matalb-Formatter requires vim compiled with +python3')
    finish
endif

command! -nargs=0 MatlabFormatter call s:MatlabFormatter()
command! -nargs=0 MatlabFormatterSelection call s:MatlabFormatterSelection()
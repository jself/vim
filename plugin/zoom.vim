function! ZoomIn()
python << PYTHON
global zoomfilenames
#set up the global store of filenames
if 'zoomfilenames' not in globals().keys():
    zoomfilenames = {}

import vim
import tempfile
startrow,startcol =  vim.current.buffer.mark('<')
print startrow
endrow,endcol =  vim.current.buffer.mark('>')
print endrow
tmpfile = tempfile.mktemp()
curname = vim.current.buffer.name
ext = curname[curname.rfind('.'):]
tmpfile = tmpfile + ext
f = open(tmpfile,'w')
for i in vim.current.buffer[startrow-1:endrow]:
    f.write(i + '\n')
f.close()
command = 'badd %s'%tmpfile
zoomfilenames[tmpfile] = (vim.current.buffer.name,startrow,endrow)
vim.command(command)
vim.command('buffer! %s'%tmpfile)
PYTHON
endfunction
command! -range ZoomIn call ZoomIn()

function! ZoomOut()
python << PYTHON
import vim
import os

global zoomfilenames
if 'zoomfilenames' not in globals().keys():
    zoomfilenames = {}

name = vim.current.buffer.name
if name not in zoomfilenames:
    print 'File not in file names.'
    vim.command('return')
filename,startrow,endrow = zoomfilenames[name]

text = vim.current.buffer[:]

vim.command('buffer! %s'%filename)
newtext = vim.current.buffer[startrow-1:endrow]
if newtext != text:
    vim.current.buffer[startrow-1:endrow] = text

vim.command('bdel! %s'%name)

del zoomfilenames[name]
os.unlink(name)
PYTHON
endfunction
command! -range ZoomOut call ZoomOut()

map \i :ZoomIn<CR>
map \o :ZoomOut<CR>


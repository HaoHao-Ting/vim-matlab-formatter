## Introduction
A vim plug to indent and format ```Matlab``` code.

This vim-plug is migrated from  [affenwiesel/matlab-formatter-vscode](https://github.com/affenwiesel/matlab-formatter-vscode)

## Requirements
- python3

Requires vim built with python3 support. Check with `:echo has('python3')`

## Install
For vim-plug user:

``` vim
" Loaded when m file is opened
Plug 'HaoHao-Ting/vim-matlab-formatter'
```

## Add key bindings
For examples, set ```F3``` to format the whole m-file
``` vim
nmap <F3> :MatlabFormatter <CR>
```
## Future Plan
- [ ] Add the some configuration, indent width, whether add newlines before and after blocks and etc.
- [ ] Implement ```MatlabFormatSelection()``` to indent and format the selected code blocks in visual mode

# License

This plugin is released under the GPL

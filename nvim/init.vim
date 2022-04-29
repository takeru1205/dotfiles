if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.config/nvim/dein')

let s:dein_repo_dir = s:dein_dir . '/home/tk/.config/nvim/dein/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml_dir = expand('~/.config/nvim/toml')

  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
set nobackup

set noswapfile

autocmd BufWritePost  ~/.config/nvim/init.vim  so ~/.config/nvim/init.vim

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

set encoding=utf-8
scriptencoding utf-8

set helplang=ja

set number 

set backspace=indent,eol,start

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
inoremap <Esc> <Esc>lh

set clipboard+=unnamed

" NERDTree settings
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

autocmd BufWritePost *.py call black#Black()
let g:ale_linters = {
     \ 'python': [
     \   'flake8',
     \   'mypy'
     \ ],
     \ }
" テキスト変更時にlintを実行しない
let g:ale_lint_on_text_changed = 'never'
" 読み込み時には実行しない
let g:ale_lint_on_enter = 0
" insertモードから抜けたら実行する
let g:ale_lint_on_insert_leave = 1
" ファイル保存時にLinterを実行する
let g:ale_lint_on_save = 1
" テキスト変更時にはLinterを実行しない
let g:ale_lint_on_text_changed = 'never'
" Linter(コードチェックツール)の設定
let g:ale_linters = {
\   'python': ['flake8', 'mypy'],
\}
" ファイル保存時にはFixerを時刻しない
let g:ale_fix_on_save = 0
" テキスト変更時にはFixerを実行しない
let g:ale_fix_on_text_changed = 'never'
" Fixer(コード整形ツール)の設定
let b:ale_fixers = {
\   'python': ['autopep8', 'isort'],
\}
let g:ale_fix_on_save = 1
" 余分な空白があるときは警告表示
let b:ale_warn_about_trailing_whitespace = 0
" ALE実行時にでる目印行を常に表示
let g:ale_sign_column_always = 1

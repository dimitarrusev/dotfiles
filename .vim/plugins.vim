" ---------------------------------------------------------------------------------------------------------------
" Vundle #Begin
" ---------------------------------------------------------------------------------------------------------------
filetype off				                " Turn off filetype detection. Required.
set rtp+=~/.vim/bundle/Vundle.vim	                " Set the runtime path to include Vundle.
call vundle#begin()			                " Initialize.

" ---------------------------------------------------------------------------------------------------------------
" Plugins
" ---------------------------------------------------------------------------------------------------------------
Plugin 'VundleVim/Vundle.vim'                           " Plugin manager (manages itself). Required.
Plugin 'tpope/vim-vinegar'                              " Netrw enhanced.
Plugin 'tpope/vim-unimpaired'                           " Complementary pairs of mappings.
Plugin 'tpope/vim-commentary'                           " Comment stuff out.
Plugin 'scrooloose/nerdtree'                            " Presents the filesystem in tree form.
Plugin 'pangloss/vim-javascript'                        " Provides syntax and indentation plugins.
Plugin 'othree/javascript-libraries-syntax.vim'         " Syntax file for popular libraries.
Plugin 'jparise/vim-graphql'                            " File detection, syntax highlighting, and indentation for GraphQL.
Plugin 'mattn/emmet-vim'                                " Provides support for expanding emmet-like abbreviations.
Plugin 'ctrlpvim/ctrlp.vim'                             " Full path fuzzy file, buffer, mru, tag, * finder.
Plugin 'chriskempson/base16-vim'                        " Provides syntax highlighting and a default set of colors.
Plugin 'flazz/vim-colorschemes'                         " Vim color schemes.
Plugin 'vim-airline/vim-airline'                        " Tabline.
Plugin 'vim-airline/vim-airline-themes'                 " Tabline color schemes.
Plugin 'editorconfig/editorconfig-vim'                  " EditorConfig plugin
Plugin 'Quramy/vim-js-pretty-template'                  " Syntax highlighting support for JavaScript template strings
Plugin 'leafgarland/typescript-vim'                     " Syntax files for highlighting .ts and .d.ts files
Plugin 'Quramy/tsuquyomi'                               " Make your Vim a TypeScript IDE 
Plugin 'scrooloose/syntastic'                           " Syntax checking 
Plugin 'jiangmiao/auto-pairs'                           " Automatically close wrapping elements
Plugin 'Shougo/vimproc.vim'                             " Asynchronous execution library (fork of proc.vim)
Plugin 'Valloric/YouCompleteMe'                         " Code completion engine for Vim
Plugin 'terryma/vim-multiple-cursors'                   " Sublime Text style multiple selections
Plugin 'magarcia/vim-angular2-snippets'                 " Angular 2 Snippets
Plugin 'tpope/vim-surround'                             " Quoting, parenthesising made simple

" ---------------------------------------------------------------------------------------------------------------
" Vundle #End
" ---------------------------------------------------------------------------------------------------------------
call vundle#end()			                " Terminate.
filetype plugin indent on                               " Turn on filetype detection.

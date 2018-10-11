" Disable haskell-vim omnifunc
" https://github.com/eagletmt/neco-ghc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" necoghc should work with YouCompleteMe. To enable auto-completions:
let g:ycm_semantic_triggers = {'haskell' : ['.']}

" To hook into GHC’s code competion capabilities we map several keyboard
" commands to ghc-mod functions. See http://www.stephendiehl.com/posts/vim_2016.html
nnoremap <silent> <leader>hw :GhcModTypeInsert<CR>
nnoremap <silent> <leader>hs :GhcModSplitFunCase<CR>
nnoremap <silent> <leader>hq :GhcModType<CR>
nnoremap <silent> <leader>he :GhcModTypeClear<CR>

let g:haskell_tabular = 1

" Good for haskell, but also for cpp
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

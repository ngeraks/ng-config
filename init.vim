set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
lua require('plugins')
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
source ~/.vimrc

---@diagnostic disable: undefined-global
vim.g.mapleader = ' '

require('plugins')
require('keymap')
require('settings')
require('lsp')

vim.api.nvim_command('autocmd BufWritePost plugins.lua PackerCompile')

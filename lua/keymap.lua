-- Mapping Function
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Leader
vim.g.mapleader = ' '

-- Disable kommentary defaults
vim.g.kommentary_create_default_mappings = false
vim.api.nvim_set_keymap("n", "<leader>cc", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("n", "<leader>c", "<Plug>kommentary_motion_default", {})
vim.api.nvim_set_keymap("v", "<leader>c", "<Plug>kommentary_visual_default", {})

-- Bufferline
map('n', '<TAB>', ':BufferLineCycleNext<CR>')
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>')

-- Completion
-- map('i', '<C-Space>', 'compe#complete()', {expr = true, silent = true})
map('i', '<Space>', 'compe#confirm("<Space>")', {expr = true, silent = true})
map('i', '<C-Space>', 'compe#close("<C-Space>")', {expr = true, silent = true})
map('n', '<C-Space>', '')
map('i', '<C-f>', "compe#scroll({ 'delta': +4 })", {expr = true, silent = true})
map('i', '<C-d>', 'compe#scroll({ "delta": -4 })', {expr = true, silent = true})

-- Which Key
local wk = require("which-key")
vim.o.timeoutlen = 250 
wk.register({
  f = {
    name = "file",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    g = { "<cmd>Telescope live_grep<cr>", "Grep" },
    h = { "<cmd>Telescope help_tags<cr>", "Help" },
    c = { "<cmd>Telescope command_history<cr>", "Help" },
    n = { "<cmd>enew<cr>", "New File" }
  },

  b = {
    name = "buffer",
    n = { "<cmd>BufferLineCycleNext<cr>", "Next Buffer"},
    p = { "<cmd>BufferLineCyclePrev<cr>", "Previous Buffer"},
    s = { "<cmd>BufferLinePick<cr>", "Select Buffer"},
  },
  
  c = {
    name = "comment", 
    c = {"Comment Line"}
  },

  w = {"<cmd>w<cr>", "Write"},
  q = {"<cmd>bd<cr>", "Close"},
}, { prefix = "<leader>" })

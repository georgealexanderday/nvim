-- Leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', 
  {noremap = true, silent = true}
)
vim.g.mapleader = ' '

-- Bufferline
vim.api.nvim_set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>',
  {noremap = true}
)
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>',
  {noremap = true}
)

-- Completion
-- map('i', '<C-Space>', 'compe#complete()', {expr = true, silent = true})
vim.api.nvim_set_keymap('i', '<Space>', 'compe#confirm("<Space>")', 
  {expr = true, silent = true, noremap = true}
)
vim.api.nvim_set_keymap('i', '<C-Space>', 'compe#close("<C-Space>")',
  {expr = true, silent = true, noremap = true}
)
vim.api.nvim_set_keymap('n', '<C-Space>', '',
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap('i', '<C-f>', "compe#scroll({ 'delta': +4 })",
  {expr = true, silent = true, noremap = true}
)
vim.api.nvim_set_keymap('i', '<C-d>', 'compe#scroll({ "delta": -4 })',
  {expr = true, silent = true, noremap = true}
)

-- Trouble Diagnostics
-- Lua
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)

-- Which Key
local wk = require("which-key")
vim.o.timeoutlen = 250 
wk.register({
  p = { "<cmd>Telescope find_files<cr>", "Find File" },
  f = {
    name = "Telescope",
    r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    g = { "<cmd>Telescope live_grep<cr>", "Grep" },
    h = { "<cmd>Telescope help_tags<cr>", "Help" },
    c = { "<cmd>Telescope command_history<cr>", "Help" },
    n = { "<cmd>enew<cr>", "New File" }
  },

  b = {
    name = "Buffers",
    n = { "<cmd>BufferLineCycleNext<cr>", "Next Buffer"},
    p = { "<cmd>BufferLineCyclePrev<cr>", "Previous Buffer"},
    s = { "<cmd>BufferLinePick<cr>", "Select Buffer"},
  },

  x = {
    name = "Trouble",
  },

  c = {
    name = "Comment",
    c = { "Comment Line" }
  }
}, { prefix = "<leader>" })

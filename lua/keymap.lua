-- Leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>',
  {noremap = true, silent = true}
)
vim.g.mapleader = ' '

-- Sensible Window Commands
-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- TODO fix this
-- Terminal window navigation
vim.cmd([[
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>
]])

-- TODO fix this
-- resize with arrows
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', {silent = true})

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- Bufferline
vim.api.nvim_set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>',
  {noremap = true}
)
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>',
  {noremap = true}
)

-- Completion
vim.api.nvim_set_keymap('i', '<C-TAB>', 'compe#complete()',
  {expr = true, silent = true, noremap = true}
)
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
-- TODO convert this to whichkey
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
vim.api.nvim_set_keymap("n", "<leader>xr", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)

-- LSP
vim.api.nvim_set_keymap("n", "<C-f>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>",
  {silent = true, noremap = true}
)

vim.api.nvim_set_keymap("n", "<C-b>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>",
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
  l = {
    name = "Lsp",
    h = {"<cmd>Lspsaga lsp_finder<cr>", "Help Definition"},
    a = {"<cmd>Lspsaga code_action<cr>", "Code Action"},
    d = {"<cmd>Lspsaga hover_doc<cr>", "Document Hover"},
    s = {"<cmd>Lspsaga signature_help<cr>", "Signature Help"},
    r = {"<cmd>Lspsaga rename<cr>", "Rename"},
    p = {"<cmd>Lspsaga preview_definition<cr>", "Preview Definition"},
    j = {"<cmd>Lspsaga show_line_diagnostics<cr>", "Show Line Diagnostics"},

  },

  x = {
    name = "Trouble",
  },
  w = {"<cmd>:w<cr>", "Save"},
  q = {"<cmd>:bd<cr>", "Close"}

}, { prefix = "<leader>" })

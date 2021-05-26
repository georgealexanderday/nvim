" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/g/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/g/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/g/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/g/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/g/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n�\19\0\0\4\0\25\0%6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\b\0005\2\6\0005\3\5\0=\3\a\2=\2\t\0015\2\v\0005\3\n\0=\3\a\2=\2\f\0015\2\14\0005\3\r\0=\3\a\2=\2\15\0015\2\17\0005\3\16\0=\3\a\2=\2\18\0015\2\20\0005\3\19\0=\3\a\2=\2\21\1=\1\4\0006\0\0\0009\0\1\0004\1\0\0=\1\22\0006\0\0\0009\0\1\0005\1\24\0=\1\23\0K\0\1\0\1\20\0\0\5\5\5�\1   ███▄    █  ██▓  ▄████  ██░ ██ ▄▄▄█████▓  █████▒ █    ██  ██▀███  ▓██   ██▓  ▄████ �\1   ██ ▀█   █ ▓██▒ ██▒ ▀█▒▓██░ ██▒▓  ██▒ ▓▒▓██   ▒  ██  ▓██▒▓██ ▒ ██▒ ▒██  ██▒ ██▒ ▀█▒�\1  ▓██  ▀█ ██▒▒██▒▒██░▄▄▄░▒██▀▀██░▒ ▓██░ ▒░▒████ ░ ▓██  ▒██░▓██ ░▄█ ▒  ▒██ ██░▒██░▄▄▄░�\1  ▓██▒  ▐▌██▒░██░░▓█  ██▓░▓█ ░██ ░ ▓██▓ ░ ░▓█▒  ░ ▓▓█  ░██░▒██▀▀█▄    ░ ▐██▓░░▓█  ██▓�\1  ▒██░   ▓██░░██░░▒▓███▀▒░▓█▒░██▓  ▒██▒ ░ ░▒█░    ▒▒█████▓ ░██▓ ▒██▒  ░ ██▒▓░░▒▓███▀▒�\1  ░ ▒░   ▒ ▒ ░▓   ░▒   ▒  ▒ ░░▒░▒  ▒ ░░    ▒ ░    ░▒▓▒ ▒ ▒ ░ ▒▓ ░▒▓░   ██▒▒▒  ░▒   ▒ �\1  ░ ░░   ░ ▒░ ▒ ░  ░   ░  ▒ ░▒░ ░    ░     ░      ░░▒░ ░ ░   ░▒ ░ ▒░ ▓██ ░▒░   ░   ░ �\1     ░   ░ ░  ▒ ░░ ░   ░  ░  ░░ ░  ░       ░ ░     ░░░ ░ ░   ░░   ░  ▒ ▒ ░░  ░ ░   ░ p           ░  ░        ░  ░  ░  ░                    ░        ░      ░ ░           ░ ^                                                                     ░ ░             \5\5Z                                       N V I M                                       \5\5\5\28dashboard_custom_header\28dashboard_custom_footer\6e\1\0\1\fcommand\":e ~/.config/nixpkgs/home.nix\1\2\0\0\29  NIX                \6d\1\0\1\fcommand&:e ~/.config/nvim/lua/plugins.lua\1\2\0\0\29  NVIM               \6c\1\0\1\fcommand\16SessionLoad\1\2\0\0\29  Load Last Session  \6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0\29  Recently Used Files\6a\1\0\0\16description\1\0\1\fcommand\25Telescope find_files\1\2\0\0\29  Find File          \29dashboard_custom_section\14telescope dashboard_default_executive\6g\bvim\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lsp-rooter.nvim"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/lsp-rooter.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n`\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\15tokyonight\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\a\tpath\2\tcalc\2\14ultisnips\2\nvsnip\2\rnvim_lua\2\rnvim_lsp\2\vbuffer\2\1\0\f\18documentation\2\ndebug\1\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3�\3\19source_timeout\3�\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\19max_menu_width\3d\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\a\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd tokyonight_italic_functions\nstorm\21tokyonight_style\6g\bvim\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\n�\2\0\0\3\0\f\2\0266\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\3\0006\0\0\0009\0\1\0*\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\t\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0005au TermOpen * setlocal nonumber norelativenumber\17nvim_command\bapi\vvsplit\21floaterm_wintype\nright\22floaterm_position\19floaterm_width\20floaterm_height\24floaterm_autoinsert\6g\bvim��̙\19����\3�̙�\6����\3\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0" },
    loaded = true,
    path = "/home/g/.local/share/nvim/site/pack/packer/start/zen-mode.nvim"
  }
}

time("Defining packer_plugins", false)
-- Config for: todo-comments.nvim
time("Config for todo-comments.nvim", true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time("Config for todo-comments.nvim", false)
-- Config for: nvim-comment
time("Config for nvim-comment", true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time("Config for nvim-comment", false)
-- Config for: vim-floaterm
time("Config for vim-floaterm", true)
try_loadstring("\27LJ\2\n�\2\0\0\3\0\f\2\0266\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\3\0006\0\0\0009\0\1\0*\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\t\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0005au TermOpen * setlocal nonumber norelativenumber\17nvim_command\bapi\vvsplit\21floaterm_wintype\nright\22floaterm_position\19floaterm_width\20floaterm_height\24floaterm_autoinsert\6g\bvim��̙\19����\3�̙�\6����\3\0", "config", "vim-floaterm")
time("Config for vim-floaterm", false)
-- Config for: nvim-treesitter
time("Config for nvim-treesitter", true)
try_loadstring("\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time("Config for nvim-treesitter", false)
-- Config for: dashboard-nvim
time("Config for dashboard-nvim", true)
try_loadstring("\27LJ\2\n�\19\0\0\4\0\25\0%6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\b\0005\2\6\0005\3\5\0=\3\a\2=\2\t\0015\2\v\0005\3\n\0=\3\a\2=\2\f\0015\2\14\0005\3\r\0=\3\a\2=\2\15\0015\2\17\0005\3\16\0=\3\a\2=\2\18\0015\2\20\0005\3\19\0=\3\a\2=\2\21\1=\1\4\0006\0\0\0009\0\1\0004\1\0\0=\1\22\0006\0\0\0009\0\1\0005\1\24\0=\1\23\0K\0\1\0\1\20\0\0\5\5\5�\1   ███▄    █  ██▓  ▄████  ██░ ██ ▄▄▄█████▓  █████▒ █    ██  ██▀███  ▓██   ██▓  ▄████ �\1   ██ ▀█   █ ▓██▒ ██▒ ▀█▒▓██░ ██▒▓  ██▒ ▓▒▓██   ▒  ██  ▓██▒▓██ ▒ ██▒ ▒██  ██▒ ██▒ ▀█▒�\1  ▓██  ▀█ ██▒▒██▒▒██░▄▄▄░▒██▀▀██░▒ ▓██░ ▒░▒████ ░ ▓██  ▒██░▓██ ░▄█ ▒  ▒██ ██░▒██░▄▄▄░�\1  ▓██▒  ▐▌██▒░██░░▓█  ██▓░▓█ ░██ ░ ▓██▓ ░ ░▓█▒  ░ ▓▓█  ░██░▒██▀▀█▄    ░ ▐██▓░░▓█  ██▓�\1  ▒██░   ▓██░░██░░▒▓███▀▒░▓█▒░██▓  ▒██▒ ░ ░▒█░    ▒▒█████▓ ░██▓ ▒██▒  ░ ██▒▓░░▒▓███▀▒�\1  ░ ▒░   ▒ ▒ ░▓   ░▒   ▒  ▒ ░░▒░▒  ▒ ░░    ▒ ░    ░▒▓▒ ▒ ▒ ░ ▒▓ ░▒▓░   ██▒▒▒  ░▒   ▒ �\1  ░ ░░   ░ ▒░ ▒ ░  ░   ░  ▒ ░▒░ ░    ░     ░      ░░▒░ ░ ░   ░▒ ░ ▒░ ▓██ ░▒░   ░   ░ �\1     ░   ░ ░  ▒ ░░ ░   ░  ░  ░░ ░  ░       ░ ░     ░░░ ░ ░   ░░   ░  ▒ ▒ ░░  ░ ░   ░ p           ░  ░        ░  ░  ░  ░                    ░        ░      ░ ░           ░ ^                                                                     ░ ░             \5\5Z                                       N V I M                                       \5\5\5\28dashboard_custom_header\28dashboard_custom_footer\6e\1\0\1\fcommand\":e ~/.config/nixpkgs/home.nix\1\2\0\0\29  NIX                \6d\1\0\1\fcommand&:e ~/.config/nvim/lua/plugins.lua\1\2\0\0\29  NVIM               \6c\1\0\1\fcommand\16SessionLoad\1\2\0\0\29  Load Last Session  \6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0\29  Recently Used Files\6a\1\0\0\16description\1\0\1\fcommand\25Telescope find_files\1\2\0\0\29  Find File          \29dashboard_custom_section\14telescope dashboard_default_executive\6g\bvim\0", "config", "dashboard-nvim")
time("Config for dashboard-nvim", false)
-- Config for: nvim-compe
time("Config for nvim-compe", true)
try_loadstring("\27LJ\2\n�\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\a\tpath\2\tcalc\2\14ultisnips\2\nvsnip\2\rnvim_lua\2\rnvim_lsp\2\vbuffer\2\1\0\f\18documentation\2\ndebug\1\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3�\3\19source_timeout\3�\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\19max_menu_width\3d\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time("Config for nvim-compe", false)
-- Config for: which-key.nvim
time("Config for which-key.nvim", true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time("Config for which-key.nvim", false)
-- Config for: lspsaga.nvim
time("Config for lspsaga.nvim", true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time("Config for lspsaga.nvim", false)
-- Config for: nvim-bufferline.lua
time("Config for nvim-bufferline.lua", true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time("Config for nvim-bufferline.lua", false)
-- Config for: zen-mode.nvim
time("Config for zen-mode.nvim", true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0", "config", "zen-mode.nvim")
time("Config for zen-mode.nvim", false)
-- Config for: tokyonight.nvim
time("Config for tokyonight.nvim", true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\a\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd tokyonight_italic_functions\nstorm\21tokyonight_style\6g\bvim\0", "config", "tokyonight.nvim")
time("Config for tokyonight.nvim", false)
-- Config for: lualine.nvim
time("Config for lualine.nvim", true)
try_loadstring("\27LJ\2\n`\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\15tokyonight\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time("Config for lualine.nvim", false)
-- Config for: trouble.nvim
time("Config for trouble.nvim", true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time("Config for trouble.nvim", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry

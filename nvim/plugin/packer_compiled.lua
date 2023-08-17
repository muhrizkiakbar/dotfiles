-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/evibar/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/evibar/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/evibar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/evibar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/evibar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim",
    url = "https://github.com/tjdevries/colorbuddy.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["git-conflict.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17git-conflict\frequire\0" },
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/git-conflict.nvim",
    url = "https://github.com/akinsho/git-conflict.nvim"
  },
  ["git.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/git.nvim",
    url = "https://github.com/dinhhuy258/git.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neosolarized.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/neosolarized.nvim",
    url = "https://github.com/svrana/neosolarized.nvim"
  },
  neotest = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0046\0\0\0009\0\1\0005\2\2\0D\0\2\0\1\4\0\0\vbundle\texec\nrspec\16tbl_flatten\bvim\v\0\1\1\0\0\0\1L\0\2\0)\0\0\2\0\3\0\0046\0\0\0009\0\1\0009\0\2\0D\0\1\0\rtempname\afn\nasyncù\2\1\0\b\0\17\1\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0004\3\3\0006\4\0\0'\6\3\0B\4\2\0025\6\5\0003\a\4\0=\a\6\0065\a\a\0=\a\b\0065\a\t\0=\a\n\0063\a\v\0=\a\f\0063\a\r\0=\a\14\6B\4\2\0?\4\0\0=\3\16\2B\0\2\1K\0\1\0\radapters\1\0\0\17results_path\0\24transform_spec_path\0\16filter_dirs\1\3\0\0\t.git\17node_modules\15root_files\1\4\0\0\fGemfile\v.rspec\15.gitignore\14rspec_cmd\1\0\0\0\18neotest-rspec\nsetup\fneotest\frequire\3ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/neotest",
    url = "https://github.com/nvim-neotest/neotest"
  },
  ["neotest-rspec"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/neotest-rspec",
    url = "https://github.com/olimorris/neotest-rspec"
  },
  nerdcommenter = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-ag"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/telescope-ag",
    url = "https://github.com/kelly-lin/telescope-ag"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tree-sitter-markdown"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/tree-sitter-markdown",
    url = "https://github.com/MDeiml/tree-sitter-markdown"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-rubocop"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/vim-rubocop",
    url = "https://github.com/ngmy/vim-rubocop"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/Users/evibar/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: git-conflict.nvim
time([[Config for git-conflict.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17git-conflict\frequire\0", "config", "git-conflict.nvim")
time([[Config for git-conflict.nvim]], false)
-- Config for: neotest
time([[Config for neotest]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0046\0\0\0009\0\1\0005\2\2\0D\0\2\0\1\4\0\0\vbundle\texec\nrspec\16tbl_flatten\bvim\v\0\1\1\0\0\0\1L\0\2\0)\0\0\2\0\3\0\0046\0\0\0009\0\1\0009\0\2\0D\0\1\0\rtempname\afn\nasyncù\2\1\0\b\0\17\1\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0004\3\3\0006\4\0\0'\6\3\0B\4\2\0025\6\5\0003\a\4\0=\a\6\0065\a\a\0=\a\b\0065\a\t\0=\a\n\0063\a\v\0=\a\f\0063\a\r\0=\a\14\6B\4\2\0?\4\0\0=\3\16\2B\0\2\1K\0\1\0\radapters\1\0\0\17results_path\0\24transform_spec_path\0\16filter_dirs\1\3\0\0\t.git\17node_modules\15root_files\1\4\0\0\fGemfile\v.rspec\15.gitignore\14rspec_cmd\1\0\0\0\18neotest-rspec\nsetup\fneotest\frequire\3ÄÄ¿ô\4\0", "config", "neotest")
time([[Config for neotest]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

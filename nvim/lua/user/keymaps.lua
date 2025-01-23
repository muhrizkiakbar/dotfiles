local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment decrement number selected on cursor
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New Tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Splitwindow
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('n', '<A>', '<C-w>w')
keymap.set('', '<C-h>', '<C-w>h')
keymap.set('', '<C-l>', '<C-w>l')
keymap.set('', '<C-k>', '<C-w>k')
keymap.set('', '<C-j>', '<C-w>j')
--keymap.set('', 'sh', '<C-w>h')
--keymap.set('', 'sl', '<C-w>l')
--keymap.set('', 'sk', '<C-w>k')
--keymap.set('', 'sj', '<C-w>j')

-- Resize Window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

local opts = { noremap = true, silent = true }

--keymap.set('n', '<C-g>', ':Ag',opts)
keymap.set('i', 'jj', '<Esc>', { noremap = true })

-- Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Saving
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", opts)

-- telescope
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files hidden=true<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-f>", ":Telescope buffers<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-G>", ":Telescope live_grep<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-B>", ":Telescope oldfiles<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Space>", ":Telescope file_browser  path=%:p:h<CR>", opts)

-- lsp saga
-- Hover documentation
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
-- Jump to definition
vim.keymap.set('n', 'gd', '<cmd>Lspsaga goto_definition<CR>', opts)

-- Peek definition (preview without jumping)
vim.keymap.set('n', 'gp', '<cmd>Lspsaga peek_definition<CR>', opts)

-- Show line diagnostics
vim.keymap.set('n', '<leader>ld', '<cmd>Lspsaga show_line_diagnostics<CR>', opts)

-- Next/previous diagnostic
vim.keymap.set('n', '[e', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', ']e', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)

-- Code action
vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)

-- Rename symbol
vim.keymap.set('n', '<leader>rn', '<cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', '<leader>t', '<cmd>Lspsaga term_toggle<CR>', opts)


-- Tree Toggle
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Fold
keymap.set("n", "<leader>fa", ":setlocal foldmethod=indent<CR>", opts)

-- remove highlight
keymap.set("n", "<Space><Esc>", ":noh<CR>", opts)

--keymap.set("", "<C-g>", ":Ag ''<CR>", opts)

-- emmet
vim.g.user_emmet_leader_key = '<C-e>'
vim.api.nvim_set_keymap('i', '<C-e>e', '<esc>:call emmet#expandAbbr(0,"")<cr>h:call emmet#splitJoinTag()<cr>wwi',
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-e>e', ':call emmet#expandAbbr(0,"")<cr>h:call emmet#splitJoinTag()<cr>ww',
  { noremap = true, silent = true })
--vim.g.user_emmet_leader_key = ','


-- RSpec
vim.g.rspec_with_debug = 1
keymap.set('', '<leader>c', ':call RunCurrentSpecFile()<CR>')
keymap.set('', '<leader>s', ':call RunNearestSpec()<CR>')
keymap.set('', '<leader>l', ':call RunLastSpec()<CR>')
keymap.set('', '<leader>a', ':call RunAllSpecs()<CR>')
--keymap.set('', '<leader>s', function() require("neotest").run.run() end)
--keymap.set('', '<leader>c', function() require("neotest").run.run(vim.fn.expand("%")) end)

-- commenter
keymap.set('v', '++', '<plug>NERDCommenterToggle')
keymap.set('n', '++', '<plug>NERDCommenterToggle')

-- erb auto tags
vim.g.surround_45 = "<\r/>"
--vim.g.surround_61 = "<\r ><\r/>"
--vim.g.surround_45 = "<% \r %>"
--vim.g.surround_61 = "<%= \r %>"
keymap.set('n', '<leader>y', 'ysiW=<cr>')
keymap.set('n', '<leader>u', 'ysiW-<cr>')


-- Git conflict
keymap.set('n', 'co', '<Plug>(git-conflict-ours)')
keymap.set('n', 'ct', '<Plug>(git-conflict-theirs)')
keymap.set('n', 'cb', '<Plug>(git-conflict-both)')
keymap.set('n', 'c0', '<Plug>(git-conflict-none)')
keymap.set('n', ']x', '<Plug>(git-conflict-prev-conflict)')
keymap.set('n', '[x', '<Plug>(git-conflict-next-conflict)')

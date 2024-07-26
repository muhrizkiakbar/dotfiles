-- Helper function for transparency formatting
 if vim.g.neovide then
	vim.api.nvim_set_keymap('v', '<C-c>', '"+y', {noremap = true})
	vim.api.nvim_set_keymap('n', '<C-v>', 'l"+P', {noremap = true})
	vim.api.nvim_set_keymap('v', '<C-v>', '"+P', {noremap = true})
	vim.api.nvim_set_keymap('c', '<C-v>', '<C-o>l<C-o>"+<C-o>P<C-o>l', {noremap = true})
	vim.api.nvim_set_keymap('i', '<C-v>', '<ESC>l"+Pli', {noremap = true})
	vim.api.nvim_set_keymap('t', '<C-v>', '<C-\\><C-n>"+Pi', {noremap = true})

  local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.8
  vim.g.transparency = 0.8
  --vim.g.neovide_background_color = "#001e26" .. alpha()
  vim.api.nvim_set_hl(0, 'Normal', { bg = "#001e26" })


  vim.g.neovide_window_blurred = true
end


local saga = require('lspsaga')

--saga.setup {
--server_filetype_map = {
--ruby = 'ruby',
--typescript = 'typescript',
--javascript = 'javascript'
--},
--ui = {
--code_action = ''
--},
--}

saga.setup({
  -- Customize various features
  server_filetype_map = {
    ruby = 'ruby',
    typescript = 'typescript',
    javascript = 'javascript'
  },
  ui = {
    -- Choose a theme, e.g., round or classic
    theme = 'round',
    border = 'single',
    winblend = 10,           -- Transparency for floating windows
    colors = {
      normal_bg = '#1e1e1e', -- Background color for the floating window
    },
  },
  symbol_in_winbar = {
    enable = true, -- Display symbols in the winbar
    separator = '  ', -- Separator between symbols
    show_file = true, -- Show the file name
    folder_level = 1, -- Display folders in the path (set to 0 to disable)
  },
  lightbulb = {
    enable = true, -- Show a lightbulb icon when a code action is available
    sign = true,
    virtual_text = false,
  },
  diagnostic = {
    show_code_action = true,
    jump_num_shortcut = true,
    max_width = 0.7,
    jump_to_prev_error = '<leader>e[', -- Custom keybinding for prev error
    jump_to_next_error = '<leader>e]', -- Custom keybinding for next error
  },
})

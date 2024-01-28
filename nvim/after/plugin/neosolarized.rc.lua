--local status, n = pcall(require, 'neosolarized')
--if (not status) then return end

--n.setup({
  --comment_italics = true
--})

--local colorbuddy = require('colorbuddy.init')
--local Color = colorbuddy.Color
--local colors = colorbuddy.colors
--local Group = colorbuddy.Group
--local groups = colorbuddy.groups
--local styles = colorbuddy.styles

--Color.new('yellow', '#f0c674')
--Color.new('black', '#000000')
--Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
--Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
--Group.new('Visual', colors.none, colors.base03, styles.reverse)

--local cError = groups.Error.fg
--local cInfo = groups.Information.fg
--local cHint = groups.Hint.fg
--local cWarn = groups.Warning.fg

--Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
--Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark():dark(), styles.NONE)
--Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark():dark(), styles.NONE)
--Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark():dark(), styles.NONE)
--Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
--Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
--Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
--Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)

require("solarized-osaka").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})

-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`

local nvim_tree = require('nvim-tree')

nvim_tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  auto_reload_on_write = true,
  open_on_tab = false,
  hijack_cursor = false,
  hijack_unnamed_buffer_when_opening = false,
  respect_buf_cwd = false,
  create_in_closed_folder = false,
  view = {
    width = 40,
    side = 'left',
    preserve_window_proportions = false,
    number = true,
    relativenumber = true,
    signcolumn = 'yes',
  },
  renderer = {
    root_folder_modifier = ':p:.',
    highlight_git = true,
    highlight_opened_files = 'none',
    add_trailing = false,
    group_empty = false,
    indent_markers = {
      enable = true,
      icons = {
        corner = '└',
        edge = '│',
        item = '│',
        none = ' ',
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = 'signcolumn',
      padding = ' ',
      symlink_arrow = ' >> ',
      show = {
        file = true,
        folder = true,
        folder_arrow = false,
        git = true,
      },
      glyphs = {
        default = '',
        symlink = '',
        folder = {
          arrow_closed = '',
          arrow_open = '',
          default = '',
          open = '',
          empty = '',
          empty_open = '',
          symlink = '',
          symlink_open = '',
        },
        git = {
          unstaged = '',
          staged = 'S',
          unmerged = '',
          renamed = '➜',
          untracked = 'U',
          deleted = '',
          ignored = '◌',
        },
      },
    },
    special_files = { 'Cargo.toml', 'Makefile', 'README.md', 'readme.md' },
    symlink_destination = true,
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = '',
    },
  },
  filters = {
    dotfiles = false,
    custom = {
      'node_modules', '.cache'
    },
    exclude = {
      '.env', 'doc'
    }
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = true,
        chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890',
        exclude = {
          filetype = { 'notify', 'packer', 'qf', 'diff', 'fugitive', 'fugitiveblame' },
          buftype = { 'nofile', 'terminal', 'help' },
        },
      },
    },
  },
  trash = {
    cmd = 'trash',
    require_confirm = true,
  }
}

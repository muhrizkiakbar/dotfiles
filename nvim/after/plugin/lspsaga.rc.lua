local saga = require('lspsaga')

saga.setup {
  server_filetype_map = {
    ruby = 'ruby',
    typescript = 'typescript',
    javascript = 'javascript'
  },
  ui = {
    code_action = ''
  },
}

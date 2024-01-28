local status, saga = pcall(require, "lspsaga")
if (not status) then return end

--saga.setup({})

saga.setup {
  server_filetype_map = {
    typescript = 'typescript',
    javascript = 'javascript'
  },
  ui = {
    code_action = ''
  },
}

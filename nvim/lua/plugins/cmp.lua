local lspkind = require("lspkind")
local cmp = require("cmp")

cmp.setup(
  {
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end
    },
    mapping = cmp.mapping.preset.insert(
      {
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-space"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm(
          {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
          }
        )
      }
    ),
    sources = cmp.config.sources(
      {
        { name = "nvim_lsp" },
        { name = 'codeium' },
        { name = "luasnip" }
      },
      {
        { name = "buffer" }
      }
    ),
    window = {
      documentation = {
        border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
      }
    },
    formatting = {
      format = lspkind.cmp_format(
        {
          mode = "symbol",
          maxwidth = 50,
          ellipsis_char = "...",
          symbol_map = { Codeium = "", }
        }
      )
    }
  }
)

require("codeium").setup({})

--vim.cmd [[
--set completeopt=menuone,noinsert,noselect
--highlight! default link CmpItemKind CmpItemMenuDefault
--]]

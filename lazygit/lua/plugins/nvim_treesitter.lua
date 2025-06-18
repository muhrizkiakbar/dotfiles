return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "blade",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "tsx",
      "php",
      "typescript",
      "vim",
      "yaml",
    },
    config = function(_, opts)
      --local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

      --parser_config.blade = {
      --  install_info = {
      --    url = "https://github.com/EmranMR/tree-sitter-blade",
      --    files = { "src/parser.c" },
      --    branch = "main",
      --  },
      --  filetype = "blade",
      --}

      --vim.filetype.add({
      --  pattern = {
      --    [".*%.blade%.php"] = "blade",
      --  },
      --})

      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}

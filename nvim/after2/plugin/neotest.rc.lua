local status, n = pcall(require, 'neotest')
if (not status) then return end
local neotest = require('neotest')

neotest.setup({
	adapters = {
    require("neotest-rspec"),
		require("neotest-plenary"),
    require("neotest-go")({
      experimental = {
        test_table = true,
      },
      args = { "-count=1", "-timeout=60s" }
    }),
  }
})


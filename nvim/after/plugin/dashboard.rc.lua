
local function getLen(str, start_pos)
	local byte = string.byte(str, start_pos)
	if not byte then
		return nil
	end

	return (byte < 0x80 and 1) or (byte < 0xE0 and 2) or (byte < 0xF0 and 3) or (byte < 0xF8 and 4) or 1
end

local function colorize(header, header_color_map, colors)
	for letter, color in pairs(colors) do
		local color_name = "AlphaJemuelKwelKwelWalangTatay" .. letter
		vim.api.nvim_set_hl(0, color_name, color)
		colors[letter] = color_name
	end

	local colorized = {}

	for i, line in ipairs(header_color_map) do
		local colorized_line = {}
		local pos = 0

		for j = 1, #line do
			local start = pos
			pos = pos + getLen(header[i], start + 1)

			local color_name = colors[line:sub(j, j)]
			if color_name then
				table.insert(colorized_line, { color_name, start, pos })
			end
		end

		table.insert(colorized, colorized_line)
	end

	return colorized
end

local alpha = require("alpha")

--local mocha = require("catppuccin.palettes").get_palette("mocha")
local mocha = require("solarized-osaka.colors").default
local dashboard = require("alpha.themes.dashboard")
local header = {
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
  [[ ██████████████████████████████████████████████████ ]],
                        
}

local color_map = {
  [[ BBBBBBBBBBBBBBBBBBRRRRRRRRRRRRRRBBBBBBBBBBBBBBBBBB ]], --1
  [[ BBBBBBBBBBBBBBRRRRRRRRRRRRRRRRRRRRRRBBBBBBBBBBBBBB ]], --2
  [[ BBBBBBBBBBRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRBBBBBBBBBB ]], --3
  [[ BBBBBBBBRRRRRRRRRRHHHHRRRRRRHHHHRRRRRRRRRRBBBBBBBB ]], --4
  [[ BBBBBBRRRRRRRRHHHHHHHHRRRRRRHHHHHHHHRRRRRRRRBBBBBB ]], --5
  [[ BBBBRRRRRRRRHHHHHHHHHHRRRRRRHHHHHHHHHHRRRRRRRRBBBB ]], --6
  [[ BBBBRRRRRRHHHHHHHHHHHHRRRRRRHHHHHHHHHHHHRRRRRRBBBB ]], --7
  [[ BBRRRRRRHHHHHHHHHHHHHHRRRRRRHHHHHHHHHHHHHHRRRRRRBB ]], --8
  [[ BBRRRRRRHHHHHHHHHHHHHHRRRRRRHHHHHHHHHHHHHHRRRRRRBB ]], --9
  [[ RRRRRRHHHHHHHHHHHHHHHHRRRRRRHHHHHHHHHHHHHHHHRRRRRR ]], --10
  [[ RRRRRRHHHHHHHHHHHHHHHHRRRRRRHHHHHHHHHHHHHHHHRRRRRR ]], --11
  [[ RRRRRRHHWWHHHHHHHHHHHHRRRRRRHHHHHHHHHHHHWWHHRRRRRR ]], --12
  [[ RRRRRRHHWWWWHHHHHHHHHHRRRRRRHHHHHHHHHHWWWWHHRRRRRR ]], --13
  [[ RRRRRRHHWWWWWWHHHHHHHHRRRRRRHHHHHHHHWWWWWWHHRRRRRR ]], --14
  [[ RRRRRRHHHHWWWWWWWWHHHHRRRRRRHHHHWWWWWWWWHHHHRRRRRR ]], --15
  [[ RRRRRRHHHHWWWWWWWWWWHHRRRRRRHHWWWWWWWWWWHHHHRRRRRR ]], --16
  [[ BBRRRRRRHHHHWWWWWWHHHHRRRRRRHHHHWWWWWWHHHHRRRRRRBB ]], --17
  [[ BBRRRRRRHHHHHHHHHHHHHHRRRRRRHHHHHHHHHHHHHHRRRRRRBB ]], --18
  [[ BBBBRRRRRRHHHHHHHHHHHHRRRRRRHHHHHHHHHHHHRRRRRRBBBB ]], --19
  [[ BBBBRRRRRRRRHHHHHHHHHHRRRRRRHHHHHHHHHHRRRRRRRRBBBB ]], --20
  [[ BBBBBBRRRRRRRRHHHHHHHHRRRRRRHHHHHHHHRRRRRRRRBBBBBB ]], --21
  [[ BBBBBBBBRRRRRRRRRRHHHHRRRRRRHHHHRRRRRRRRRRBBBBBBBB ]], --22
  [[ BBBBBBBBBBRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRBBBBBBBBBB ]], --23
  [[ BBBBBBBBBBBBBBRRRRRRRRRRRRRRRRRRRRRRBBBBBBBBBBBBBB ]], --24
  [[ BBBBBBBBBBBBBBBBBBRRRRRRRRRRRRRRBBBBBBBBBBBBBBBBBB ]], --25
  [[ BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB ]], --25
  [[ BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB ]], --25
  [[ BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB ]], --25
}

local colors = {
  ["B"] = { fg = '#001e26' },
  ["R"] = { fg = mocha.red },
  ["H"] = { fg = mocha.base04 },
  ["W"] = { fg = '#ffffff' },
}

dashboard.section.header.val = header
dashboard.section.header.opts = {
  hl = colorize(header, color_map, colors),
  position = "center",
}

dashboard.section.buttons.val = {
  dashboard.button("SPC e e", "  New file", "<Cmd>ene <CR>"),
  dashboard.button("SPC f f", "  Find file"),
  dashboard.button("SPC s s", "  Neobin config", "<Cmd>Neotree reveal ~/.config/nvim<CR>"),
  dashboard.button("SPC q q", "  Quit", "<Cmd>qa<CR>"),
}
for _, a in ipairs(dashboard.section.buttons.val) do
  a.opts.width = 49
  a.opts.cursor = -2
end

local function footer()
  local total_plugins = #vim.tbl_keys(packer_plugins)
  local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
  local version = vim.version()
  local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

  local value = {
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
  }
  return value
end

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Constant"

alpha.setup(dashboard.config)

local colorbuddy = require('colorbuddy.init')
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

Color.new('yellow', '#6b6129')
Color.new('info', '#0f3856')
Color.new('red', '#fc037f')
Color.new('bg', '#000000')
Group.new('Error', colors.red, colors.bg, styles.NONE, colors.base1)
Group.new('Warn', colors.yellow, colors.bg, styles.NONE, colors.base1)
Group.new('Hint', colors.info, colors.bg, styles.reverse)
Group.new('Info', colors.info, colors.bg, styles.reverse)

local cError = groups.Error.fg
local cInfo = groups.Info.fg
local cHint = groups.Hint.fg
local cWarn = groups.Warn.fg


Group.new("DiagnosticVirtualTextError", cError, cError.NONE, styles.NONE)
Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo.NONE, styles.NONE)
Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn.NONE, styles.NONE)
Group.new("DiagnosticVirtualTextHint", cHint, cHint.NONE, styles.NONE)

Group.new("DiagnosticSignError", cError, cError.NONE, styles.NONE)
Group.new("DiagnosticSignInfo", cInfo, cInfo.NONE, styles.NONE)
Group.new("DiagnosticSignWarn", cWarn, cWarn.NONE, styles.NONE)
Group.new("DiagnosticSignHint", cHint, cHint.NONE, styles.NONE)
Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)

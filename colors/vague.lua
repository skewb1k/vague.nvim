vim.g.colors_name = "vague"
vim.cmd.highlight("clear")
if vim.fn.has("syntax_on") then
	vim.cmd.syntax("reset")
end

local c = {
	bg = "#141415",
	fg = "#cdcdcd",
	line = "#252530",
	comment = "#606079",
	warning = "#e8b589",
	visual = "#333738",
	error = "#d8647e",
	search = "#405065",
	plus = "#7fa563",
	diffAdd = "#293125",
	diffChange = "#41362a",
	diffText = "#6D583E",
	diffDelete = "#3b242a",
}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

hl("ColorColumn", { bg = c.line })
hl("Conceal", { fg = c.fg })
hl("CurSearch", { fg = c.fg, bg = c.search })
hl("CursorColumn", { bg = c.line })
hl("CursorLine", { bg = c.line })
hl("CursorLineNr", { fg = c.fg })
hl("Debug", { fg = c.fg })
hl("debugPC", { fg = c.bg, bg = c.fg })
hl("debugBreakpoint", { fg = c.bg, bg = c.fg })
hl("Directory", { fg = c.warning })
hl("OkMsg", { fg = c.plus })
hl("ErrorMsg", { fg = c.error })
hl("EndOfBuffer", { fg = c.comment })
hl("FloatBorder", { fg = c.comment, bg = c.bg })
hl("FloatTitle", { fg = c.comment, bg = c.bg })
hl("FloatFooter", { fg = c.comment, bg = c.bg })
hl("Folded", { fg = c.comment, bg = c.line })
hl("FoldColumn", { fg = c.comment, bg = c.bg })
hl("IncSearch", { fg = c.bg, bg = c.search })
hl("LineNr", { fg = c.comment })
hl("MatchParen", { fg = c.fg, bg = c.visual })
hl("MoreMsg", { fg = c.fg })
hl("MsgSeparator", { fg = c.fg, bg = c.line })
hl("NonText", { fg = c.comment })
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.bg })
hl("ModeMsg", { fg = c.fg })
hl("Pmenu", { fg = c.fg })
hl("PmenuSel", { fg = c.fg, bg = c.line })
hl("PmenuThumb", { bg = c.comment })
hl("PmenuBorder", { fg = c.floatBorder })
hl("Question", { fg = c.fg })
hl("QuickFixLine", { bg = c.line })
hl("qfError", { fg = c.error })
hl("Search", { fg = c.fg, bg = c.search })
hl("SignColumn", { fg = c.fg, bg = c.bg })
hl("SpecialKey", { fg = c.comment })
hl("SpellBad", { undercurl = true })
hl("SpellCap", { undercurl = true })
hl("SpellLocal", { undercurl = true })
hl("SpellRare", { undercurl = true })
hl("StatusLine", { fg = c.fg, bg = c.bg })
hl("StatusLineTerm", { fg = c.fg, bg = c.bg })
hl("StatusLineNC", { fg = c.comment })
hl("StatusLineTermNC", { fg = c.comment })
hl("Substitute", { fg = c.fg, bg = c.visual })
hl("TabLine", { fg = c.fg, bg = c.line })
hl("TabLineFill", { fg = c.comment, bg = c.line })
hl("TabLineSel", { fg = c.bg, bg = c.fg })
hl("Terminal", { fg = c.fg, bg = c.bg })
hl("ToolbarButton", { fg = c.bg, bg = c.visual })
hl("ToolbarLine", { fg = c.fg })
hl("Visual", { bg = c.visual })
hl("VisualNOS", { bg = c.comment, undercurl = true })
hl("WarningMsg", { fg = c.fg })
hl("Whitespace", { fg = c.line })
hl("WildMenu", { fg = c.bg, bg = c.fg })
hl("WinSeparator", { fg = c.comment })
hl("WinBar", { fg = c.fg, bg = c.bg })
hl("WinBarNC", { fg = c.comment })
hl("Added", { fg = c.plus })
hl("Changed", { fg = c.fg })
hl("Removed", { fg = c.error })
hl("DiffAdd", { bg = c.diffAdd })
hl("DiffChange", { bg = c.diffChange })
hl("DiffDelete", { bg = c.diffDelete })
hl("DiffText", { bg = c.diffText })

hl("Boolean", { fg = c.fg })
hl("Character", { fg = c.fg })
hl("Comment", { fg = c.comment })
hl("Conditional", { fg = c.fg })
hl("Constant", { fg = c.fg })
hl("Define", { fg = c.comment })
hl("Delimiter", { fg = c.fg })
hl("Error", { bg = c.error })
hl("Exception", { fg = c.fg })
hl("Float", { fg = c.fg })
hl("Function", { fg = c.fg })
hl("Identifier", { fg = c.fg })
hl("Include", { fg = c.fg })
hl("Keyword", { fg = c.fg })
hl("Label", { fg = c.fg })
hl("Macro", { fg = c.fg })
hl("Number", { fg = c.fg })
hl("Operator", { fg = c.fg })
hl("PreCondit", { fg = c.comment })
hl("PreProc", { fg = c.fg })
hl("Repeat", { fg = c.fg })
hl("Special", { fg = c.fg })
hl("SpecialChar", { fg = c.fg })
hl("SpecialComment", { fg = c.fg })
hl("Statement", { fg = c.fg })
hl("StorageClass", { fg = c.fg })
hl("String", { fg = c.fg })
hl("Structure", { fg = c.fg })
hl("Tag", { fg = c.fg })
hl("Title", { fg = c.fg })
hl("Todo", { fg = c.plus })
hl("Type", { fg = c.fg })
hl("Typedef", { fg = c.fg })

hl("@attribute", { fg = c.fg })
hl("@boolean", { fg = c.fg })
hl("@character", { fg = c.fg })
hl("@character.special", { fg = c.fg })
hl("@constant", { fg = c.fg })
hl("@constant.builtin", { fg = c.fg })
hl("@constructor", { fg = c.fg })
hl("@constructor.lua", { fg = c.fg })
hl("@text.diff.add", { bg = c.diffAdd })
hl("@text.diff.delete", { bg = c.diffDelete })
hl("@diff.plus", { bg = c.diffAdd })
hl("@diff.delta", { bg = c.diffChange })
hl("@diff.minus", { bg = c.diffDelete })
hl("@function", { fg = c.fg })
hl("@function.builtin", { fg = c.fg })
hl("@function.call", { fg = c.fg })
hl("@function.macro", { fg = c.fg })
hl("@function.method.call", { fg = c.fg })
hl("@keyword", { fg = c.fg })
hl("@keyword.import", { fg = c.fg })
hl("@label", { fg = c.fg })
hl("@markup", { fg = c.fg })
hl("@markup.heading", { fg = c.fg })
hl("@markup.italic", { fg = c.fg, italic = true })
hl("@markup.link", { fg = c.fg })
hl("@markup.link.uri", { fg = c.fg, underline = true })
hl("@markup.list", { fg = c.fg })
hl("@markup.math", { fg = c.fg })
hl("@markup.quote.markdown", { fg = c.comment })
hl("@markup.raw", { fg = c.fg })
hl("@markup.strikethrough", { fg = c.comment, strikethrough = true })
hl("@markup.strong", { fg = c.fg, bold = true })
hl("@markup.underline", { fg = c.fg, underline = true })
hl("@module", { fg = c.fg })
hl("@operator", { fg = c.fg })
hl("@property", { fg = c.fg })
hl("@punctuation.special", { fg = c.fg })
hl("@string", { fg = c.fg })
hl("@string.escape", { fg = c.fg })
hl("@string.regexp", { fg = c.fg })
hl("@string.special.symbol", { fg = c.fg })
hl("@string.special.url", { fg = c.fg })
hl("@tag.attribute", { fg = c.fg })
hl("@tag.delimiter", { fg = c.fg })
hl("@type", { fg = c.fg })
hl("@type.builtin", { fg = c.fg })
hl("@type.declaration", { fg = c.fg })
hl("@type.definition", { fg = c.fg })
hl("@variable", { fg = c.fg })
hl("@variable.builtin", { fg = c.fg })
hl("@variable.member", { fg = c.fg })
hl("@variable.parameter", { fg = c.fg })

hl("DiagnosticError", { fg = c.error })
hl("DiagnosticWarn", { fg = c.warning })
hl("DiagnosticHint", { fg = c.warning })
hl("DiagnosticInfo", { fg = c.warning })
hl("DiagnosticOk", { fg = c.plus })
hl("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warning })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.warning })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.warning })
hl("DiagnosticUnderlineOk", { undercurl = true, sp = c.plus })
hl("LspCodeLens", { fg = c.comment })
hl("LspReferenceText", { bg = c.comment })

vim.g.terminal_color_0 = c.line
vim.g.terminal_color_1 = c.error
vim.g.terminal_color_2 = c.plus
vim.g.terminal_color_3 = c.warning
vim.g.terminal_color_4 = "#6e94b2"
vim.g.terminal_color_5 = "#bb9dbd"
vim.g.terminal_color_6 = "#aeaed1"
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.comment
vim.g.terminal_color_9 = "#e08398"
vim.g.terminal_color_10 = "#99b782"
vim.g.terminal_color_11 = "#f5cb96"
vim.g.terminal_color_12 = "#8ba9c1"
vim.g.terminal_color_13 = "#c9b1ca"
vim.g.terminal_color_14 = "#bebeda"
vim.g.terminal_color_15 = "#d7d7d7"

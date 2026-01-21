vim.g.colors_name = "vague"
vim.cmd.highlight("clear")
if vim.fn.has("syntax_on") then
	vim.cmd.syntax("reset")
end

local c = {
	bg = "#141415",
	fg = "#cdcdcd",
	floatBorder = "#878787",
	line = "#252530",
	comment = "#606079",
	builtin = "#b4d4cf",
	func = "#c48282",
	string = "#e8b589",
	number = "#e0a363",
	property = "#c3c3d5",
	constant = "#aeaed1",
	parameter = "#bb9dbd",
	visual = "#333738",
	error = "#d8647e",
	warning = "#f3be7c",
	hint = "#7e98e8",
	operator = "#90a0b5",
	keyword = "#6e94b2",
	type = "#9bb4bc",
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

hl("Added", { fg = c.plus })
hl("Changed", { fg = c.warning })
hl("ColorColumn", { bg = c.line })
hl("Conceal", { fg = c.func })
hl("CurSearch", { fg = c.fg, bg = c.search })
hl("CursorColumn", { bg = c.line })
hl("CursorLine", { bg = c.line })
hl("CursorLineNr", { fg = c.fg })
hl("Debug", { fg = c.constant })
hl("DiffAdd", { bg = c.diffAdd })
hl("DiffChange", { bg = c.diffChange })
hl("DiffDelete", { bg = c.diffDelete })
hl("DiffText", { bg = c.diffText })
hl("Directory", { fg = c.hint })
hl("EndOfBuffer", { fg = c.comment })
hl("ErrorMsg", { fg = c.error })
hl("FloatBorder", { fg = c.floatBorder, bg = c.bg })
hl("FloatFooter", { fg = c.floatBorder, bg = c.bg })
hl("FloatTitle", { fg = c.floatBorder, bg = c.bg })
hl("FoldColumn", { fg = c.comment, bg = c.bg })
hl("Folded", { fg = c.comment, bg = c.line })
hl("IncSearch", { fg = c.bg, bg = c.search })
hl("LineNr", { fg = c.comment })
hl("MatchParen", { fg = c.fg, bg = c.visual })
hl("ModeMsg", { fg = c.string })
hl("MoreMsg", { fg = c.func })
hl("MsgSeparator", { fg = c.string, bg = c.line })
hl("NonText", { fg = c.comment })
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.bg })
hl("OkMsg", { fg = c.plus })
hl("Pmenu", { fg = c.fg })
hl("PmenuBorder", { fg = c.floatBorder })
hl("PmenuSel", { fg = c.constant, bg = c.line })
hl("PmenuThumb", { bg = c.comment })
hl("Question", { fg = c.constant })
hl("QuickFixLine", { bg = c.line })
hl("Removed", { fg = c.error })
hl("Search", { fg = c.fg, bg = c.search })
hl("SignColumn", { fg = c.fg, bg = c.bg })
hl("SpecialKey", { fg = c.comment })
hl("SpellBad", { undercurl = true })
hl("SpellCap", { undercurl = true })
hl("SpellLocal", { undercurl = true })
hl("SpellRare", { undercurl = true })
hl("StatusLine", { fg = c.fg, bg = c.bg })
hl("StatusLineNC", { fg = c.comment })
hl("StatusLineTerm", { fg = c.fg, bg = c.bg })
hl("StatusLineTermNC", { fg = c.comment })
hl("Substitute", { fg = c.type, bg = c.visual })
hl("TabLine", { fg = c.fg, bg = c.line })
hl("TabLineFill", { fg = c.comment, bg = c.line })
hl("TabLineSel", { fg = c.bg, bg = c.fg })
hl("Terminal", { fg = c.fg, bg = c.bg })
hl("ToolbarButton", { fg = c.bg, bg = c.visual })
hl("ToolbarLine", { fg = c.fg })
hl("Visual", { bg = c.visual })
hl("VisualNOS", { bg = c.comment, undercurl = true })
hl("WarningMsg", { fg = c.warning })
hl("Whitespace", { fg = c.line })
hl("WildMenu", { fg = c.bg, bg = c.func })
hl("WinBar", { fg = c.fg, bg = c.line })
hl("WinBarNC", { fg = c.comment })
hl("WinSeparator", { fg = c.floatBorder })
hl("debugBreakpoint", { fg = c.bg, bg = c.operator })
hl("debugPC", { fg = c.bg, bg = c.fg })
hl("qfError", { fg = c.error })

hl("Boolean", { fg = c.number })
hl("Character", { fg = c.string })
hl("Comment", { fg = c.comment })
hl("Conditional", { fg = c.keyword })
hl("Constant", { fg = c.constant })
hl("Define", { fg = c.comment })
hl("Delimiter", { fg = c.fg })
hl("Error", { bg = c.error })
hl("Exception", { fg = c.keyword })
hl("Float", { fg = c.number })
hl("Function", { fg = c.func })
hl("Identifier", { fg = c.constant })
hl("Include", { fg = c.keyword })
hl("Keyword", { fg = c.keyword })
hl("Label", { fg = c.keyword })
hl("Macro", { fg = c.constant })
hl("Number", { fg = c.number })
hl("Operator", { fg = c.operator })
hl("PreCondit", { fg = c.comment })
hl("PreProc", { fg = c.constant })
hl("Repeat", { fg = c.keyword })
hl("Special", { fg = c.builtin })
hl("SpecialChar", { fg = c.keyword })
hl("SpecialComment", { fg = c.keyword })
hl("Statement", { fg = c.keyword })
hl("StorageClass", { fg = c.constant })
hl("String", { fg = c.string })
hl("Structure", { fg = c.constant })
hl("Tag", { fg = c.builtin })
hl("Title", { fg = c.property })
hl("Todo", { fg = c.func })
hl("Type", { fg = c.type })
hl("Typedef", { fg = c.constant })

hl("@attribute", { fg = c.constant })
hl("@boolean", { fg = c.number })
hl("@character", { fg = c.string })
hl("@character.special", { fg = c.keyword })
hl("@constant", { fg = c.constant })
hl("@constant.builtin", { fg = c.number })
hl("@constructor", { fg = c.constant })
hl("@constructor.lua", { fg = c.type })
hl("@diff.delta", { bg = c.diffChange })
hl("@diff.minus", { bg = c.diffDelete })
hl("@diff.plus", { bg = c.diffAdd })
hl("@function", { fg = c.func })
hl("@function.builtin", { fg = c.func })
hl("@function.call", { fg = c.parameter })
hl("@function.macro", { fg = c.constant })
hl("@function.method.call", { fg = c.type })
hl("@keyword", { fg = c.keyword })
hl("@keyword.import", { fg = c.constant })
hl("@label", { fg = c.keyword })
hl("@markup", { fg = c.fg })
hl("@markup.heading", { fg = c.keyword })
hl("@markup.italic", { fg = c.fg, italic = true })
hl("@markup.link", { fg = c.string })
hl("@markup.link.uri", { fg = c.string, underline = true })
hl("@markup.list", { fg = c.func })
hl("@markup.math", { fg = c.string })
hl("@markup.quote.markdown", { fg = c.comment })
hl("@markup.raw", { fg = c.constant })
hl("@markup.strikethrough", { fg = c.comment, strikethrough = true })
hl("@markup.strong", { fg = c.fg, bold = true })
hl("@markup.underline", { fg = c.fg, underline = true })
hl("@module", { fg = c.constant })
hl("@operator", { fg = c.operator })
hl("@property", { fg = c.property })
hl("@punctuation.special", { fg = c.keyword })
hl("@string", { fg = c.string })
hl("@string.escape", { fg = c.keyword })
hl("@string.regexp", { fg = c.keyword })
hl("@string.special.symbol", { fg = c.constant })
hl("@string.special.url", { fg = c.func })
hl("@tag.attribute", { fg = c.constant })
hl("@tag.delimiter", { fg = c.fg })
hl("@text.diff.add", { bg = c.diffAdd })
hl("@text.diff.delete", { bg = c.diffDelete })
hl("@type", { fg = c.type })
hl("@type.builtin", { fg = c.builtin })
hl("@type.declaration", { fg = c.constant })
hl("@type.definition", { fg = c.constant })
hl("@variable", { fg = c.fg })
hl("@variable.builtin", { fg = c.builtin })
hl("@variable.member", { fg = c.builtin })
hl("@variable.parameter", { fg = c.parameter })

hl("DiagnosticError", { fg = c.error })
hl("DiagnosticHint", { fg = c.hint })
hl("DiagnosticInfo", { fg = c.constant })
hl("DiagnosticOk", { fg = c.plus })
hl("DiagnosticWarn", { fg = c.warning })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.constant })
hl("DiagnosticUnderlineOk", { undercurl = true, sp = c.plus })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warning })

hl("LspCodeLens", { fg = c.comment })
hl("LspReferenceText", { bg = c.comment })

vim.g.terminal_color_0 = c.line
vim.g.terminal_color_1 = c.error
vim.g.terminal_color_2 = c.plus
vim.g.terminal_color_3 = c.warning
vim.g.terminal_color_4 = c.keyword
vim.g.terminal_color_5 = c.parameter
vim.g.terminal_color_6 = c.constant
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.comment
vim.g.terminal_color_9 = "#e08398"
vim.g.terminal_color_10 = "#99b782"
vim.g.terminal_color_11 = "#f5cb96"
vim.g.terminal_color_12 = "#8ba9c1"
vim.g.terminal_color_13 = "#c9b1ca"
vim.g.terminal_color_14 = "#bebeda"
vim.g.terminal_color_15 = "#d7d7d7"

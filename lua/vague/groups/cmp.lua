local style_fg = require("vague.utilities").configure_fg
local M = {}

---@param conf VagueColorscheme.InternalConfig
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  ---@type table<string, vim.api.keyset.highlight>
  local hl = {
    CmpGhostText          = { fg = c.comment },                                      -- ghost text for completion
    CmpItemAbbr           = { fg = c.fg, bg = "none" },                              -- abbreviation in completion menu
    CmpItemAbbrDeprecated = { fg = c.error, bg = "none", strikethrough = true },     -- deprecated items in completion menu
    CmpItemAbbrMatch      = style_fg({ fg = c.delta }, conf.plugins.cmp.match),      -- matched text in completion menu
    CmpItemAbbrMatchFuzzy = style_fg({ fg = c.delta}, conf.plugins.cmp.match_fuzzy), -- fuzzy-matched text in completion menu
    CmpItemMenu           = { link = "Pmenu" },                                      -- menu for completion items
    CmpKind               = { fg = c.comment },                                      -- kind of completion item
  }

  return hl
end
return M

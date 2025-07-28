local cmp_group = require("vague.groups.cmp")
local M = {}

---@param conf VagueColorscheme.InternalConfig
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  ---@type table<string, vim.api.keyset.highlight>
  local hl = {
    BlinkCmpDocBorder            = { fg = c.floatBorder, bg = "none" }, -- border for completion documentation
    BlinkCmpGhostText            = { link = "CmpGhostText" },           -- ghost text in completion
    BlinkCmpLabel                = { link = "CmpItemAbbr" },            -- label for completion items
    BlinkCmpLabelDeprecated      = { link = "CmpItemAbbrDeprecated" },  -- deprecated label in completion
    BlinkCmpLabelMatch           = { link = "CmpItemAbbrMatch" },       -- matched label in completion items
    BlinkCmpMenu                 = { link = "CmpItemMenu" },            -- menu for completion items
    BlinkCmpMenuBorder           = { fg = c.floatBorder, bg = "none" }, -- border for completion menu
    BlinkCmpKind                 = { link = "CmpKind" },                -- kind of completion item
    BlinkCmpSignatureHelpBorder  = { fg = c.floatBorder, bg = "none" }, -- border for signature help
  }

  return hl
end
return M

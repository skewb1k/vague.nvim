local M = {}

---@param conf VagueColorscheme.InternalConfig
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  ---@type table<string, vim.api.keyset.highlight>
  local hl = {
    MiniDiffOverAdd     = { link = "DiffAdd" },
    MiniDiffOverChange  = { link = "DiffChange" },
    MiniDiffOverDelete  = { link = "DiffDelete" },
    MiniDiffOverContext = { bg = c.line },
    MiniDiffSignAdd     = { fg = c.plus },
    MiniDiffSignChange  = { fg = c.delta },
    MiniDiffSignDelete  = { fg = c.error },

    MiniTrailspace      = { bg = c.error },
  }

  return hl
end
return M
